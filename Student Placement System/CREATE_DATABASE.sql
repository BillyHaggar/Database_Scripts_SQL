
/* ---------- Start fresh ---------- */
/*
DROP TABLE application_change_log;
DROP TABLE application;
DROP TABLE student;
DROP TABLE programme;
DROP TABLE job;
DROP TABLE site;
DROP TABLE company;

DROP SEQUENCE seq_company_id;
DROP SEQUENCE seq_site_id;
DROP SEQUENCE seq_job_id;
DROP SEQUENCE seq_student_id;
DROP SEQUENCE seq_application_id;
DROP SEQUENCE seq_change_id;
/
*/   


/* ----------- Create Tables ------------ */

/* ---------- Create Company Table, Sequences & Triggers ---------- */
CREATE TABLE company (
    company_id                  INT            CONSTRAINT company_id_pk PRIMARY KEY,
    company_name                VARCHAR2(50)   CONSTRAINT company_name_nn NOT NULL
                                               CONSTRAINT company_name_un UNIQUE /*if the company name already exists then the company would have already been added*/
);

CREATE SEQUENCE seq_company_id
NOCACHE
START WITH 1000
INCREMENT BY 1
MAXVALUE 9999
CYCLE;

CREATE OR REPLACE TRIGGER trg_company
BEFORE INSERT OR UPDATE ON company
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    SELECT seq_company_id.nextval
    INTO :NEW.company_id
    FROM sys.dual;
  END IF;
END;
/

 /* ---------- Create Programme Table ---------- */
CREATE TABLE programme (
    programme_code              VARCHAR2(20)   CONSTRAINT programme_code_pk PRIMARY KEY,
    programme_name              VARCHAR2(60)   CONSTRAINT programme_name_nn NOT NULL
                                               CONSTRAINT programme_name_un UNIQUE, /* if programme name already exists you should just edit the existing one*/
    programme_mandatory         NUMBER(1)      CONSTRAINT programme_mandatory_nn NOT NULL /*effectivly 0 or 1 to represent true or false*/
);


 /* ---------- Create Site Table, Sequences & Triggers ---------- */
CREATE TABLE site (
      site_id                     INT         CONSTRAINT site_id_pk PRIMARY KEY,
      company_id                  INT         CONSTRAINT company_id_fk REFERENCES company(company_id)
                                              CONSTRAINT company_id_fk_nn NOT NULL,
      site_name                   VARCHAR2(20),
      site_address_line_1         VARCHAR2(30) CONSTRAINT site_address_line_1_nn NOT NULL
                                               CONSTRAINT site_address_line_1_chk CHECK (REGEXP_LIKE(site_address_line_1, '^[a-zA-z-#.\, 0-9-]+$')),
      site_address_line_2         VARCHAR2(30) CONSTRAINT site_address_line_2_chk CHECK (REGEXP_LIKE(site_address_line_2, '^[a-zA-z-#.\, 0-9-]+$')),
      site_address_postcode       VARCHAR2(10) CONSTRAINT site_address_postcode_nn NOT NULL
                                               CONSTRAINT site_address_postcode_chk CHECK (REGEXP_LIKE(site_address_postcode, '^[A-Za-z 0-9]+$'))
  );
  
  CREATE SEQUENCE seq_site_id
  NOCACHE
  START WITH 1000
  INCREMENT BY 1
  MAXVALUE 9999
  CYCLE;
  
  CREATE OR REPLACE TRIGGER trg_site
  BEFORE INSERT OR UPDATE ON site
  FOR EACH ROW
  BEGIN
    IF INSERTING THEN
      SELECT seq_site_id.nextval
      INTO :NEW.site_id
      FROM sys.dual;
    END IF; 
  END;
  /
  
/*More information is needed when entering data for the REGEX to see what requirements are needed*/
 CREATE OR REPLACE TRIGGER trg_site_ERRORS
  BEFORE INSERT OR UPDATE ON site FOR EACH ROW
  BEGIN 
    IF NOT REGEXP_LIKE(:NEW.site_address_line_1, '^[a-zA-z-#.\, 0-9-]+$') THEN
    RAISE_APPLICATION_ERROR(-20000, 'Address Line 1 not in correct format, Only use letters, space, numbers and the symbols -#.,');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.site_address_line_2, '^[a-zA-z-#.\, 0-9-]+$') THEN
    RAISE_APPLICATION_ERROR(-20001, 'Address Line 2 not in correct format, Only use letters, space, numbers and the symbols -#.,');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.site_address_postcode, '^[A-Za-z 0-9]+$') THEN
    RAISE_APPLICATION_ERROR(-20002, 'Postcode not in correct format, Only use letters, space, numbers');
    END IF;
    IF (:NEW.company_id IS NULL) THEN
    RAISE_APPLICATION_ERROR(-20020, 'please assign a company to the site');
    END IF;
    END;
/
   /* ---------- Create Job Table, Sequences & Triggers ---------- */
  CREATE TABLE job (
      job_id                      INT           CONSTRAINT job_id_pk PRIMARY KEY,
      site_id                     INT           CONSTRAINT site_id_fk REFERENCES site(site_id)
                                                CONSTRAINT site_id_fk_nn NOT NULL,
      job_title                   VARCHAR2(30)  CONSTRAINT job_title_nn NOT NULL,
      job_description             VARCHAR2(255),
      job_contact_number          VARCHAR2(15)  CONSTRAINT job_contact_number_chk CHECK (REGEXP_LIKE(job_contact_number, '^[+ 0-9]{11,}$')),
      job_contact_email           VARCHAR2(100) CONSTRAINT job_contact_email_chk CHECK (REGEXP_LIKE(job_contact_email, '^[A-Za-z0-9._%+!$%&*+={|}~^`-]+@[A-Za-z0-9.-]+\.[A-Za-z0-9]+$')),
      job_salary                  NUMBER(10,2),
      job_start                   DATE         CONSTRAINT job_start_nn NOT NULL,
      job_application_method      VARCHAR2(50) CONSTRAINT job_application_method_nn NOT NULL,
      job_close                   DATE         CONSTRAINT job_close_nn NOT NULL,
      job_post_available          SMALLINT      
  );
  
  CREATE SEQUENCE seq_job_id
  NOCACHE
  START WITH 1000
  INCREMENT BY 1
  MAXVALUE 9999
  CYCLE;
  
  CREATE OR REPLACE TRIGGER trg_job
  BEFORE INSERT OR UPDATE ON job
  FOR EACH ROW
  BEGIN
    IF INSERTING THEN
      SELECT seq_job_id.nextval
      INTO :NEW.job_id
      FROM sys.dual;
    END IF;
    IF (:NEW.job_close IS NOT NULL) THEN
        :NEW.job_close := TO_DATE(TO_CHAR(:NEW.job_close, 'yyyy-mm-dd') || '23:59:59', 'yyyy-mm-dd hh24:mi:ss');
    END IF;
  END;
  /
  /*More information is needed when entering data for the REGEX to see what requirements are needed*/
  CREATE OR REPLACE TRIGGER trg_job_ERRORS
  BEFORE INSERT OR UPDATE ON job FOR EACH ROW
  BEGIN 
    IF NOT REGEXP_LIKE(:NEW.job_contact_number, '^[+ 0-9]{11,}$') THEN
    RAISE_APPLICATION_ERROR(-20003, 'Please enter a valid number (only space, + and numbers 0-9 allowed)');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.job_contact_email, '^[A-Za-z0-9._%+!$%&*+={|}~^`-]+@[A-Za-z0-9.-]+\.[A-Za-z0-9]+$') THEN
    RAISE_APPLICATION_ERROR(-20004, 'Please enter a valid email, like name.Lname.students.plymouth.ac.uk or name@hotmail.com');
    END IF;
    IF (TO_CHAR(:NEW.job_start, 'fmDAY') IN ('SATURDAY', 'SUNDAY')) THEN
    RAISE_APPLICATION_ERROR(-20010, 'A start date must be on a weekday');
    END IF;
    IF (TO_CHAR(:NEW.job_close, 'fmDAY') IN ('SATURDAY', 'SUNDAY')) THEN
    RAISE_APPLICATION_ERROR(-20010, 'A close date must be on a weekday');
    END IF;
    IF (:NEW.job_contact_number IS NULL) AND (:NEW.job_contact_email IS NULL) THEN 
    RAISE_APPLICATION_ERROR(-20013, 'Either a email or contact number must be specified');
    END IF;
    IF (:NEW.site_id IS NULL) THEN
    RAISE_APPLICATION_ERROR(-20021, 'please assign a site to the job');
    END IF;
  END;
/
  
  
   /* ---------- Create Student Table, Sequences & Triggers ---------- */
  CREATE TABLE student (
      student_id                  INT           CONSTRAINT student_id_pk PRIMARY KEY,
      programme_code              VARCHAR2(20)  CONSTRAINT programme_code_fk REFERENCES programme(programme_code)
                                                CONSTRAINT programme_code_fk_nn NOT NULL, 
      student_username            VARCHAR2(30)  CONSTRAINT student_username_nn NOT NULL
                                                CONSTRAINT student_username_chk CHECK (REGEXP_LIKE(student_username, '^[A-Za-z0-9#_-]+$'))
                                                CONSTRAINT student_username_un UNIQUE, /* you will need a unique log on*/
      student_password            VARCHAR2(50)  CONSTRAINT student_password_nn NOT NULL
                                                CONSTRAINT student_password_chk CHECK (REGEXP_LIKE(student_password, '^[A-Za-z0-9!@£$%^&*()_+=-]{8,}$')),
      student_first_name          VARCHAR2(15)  CONSTRAINT student_first_name_nn NOT NULL
                                                CONSTRAINT student_first_name_chk CHECK (REGEXP_LIKE(student_first_name, '^[A-Z][A-Za-z -]+$')),
      student_last_name           VARCHAR2(15)  CONSTRAINT student_last_name_nn NOT NULL
                                                CONSTRAINT student_last_name_chk CHECK (REGEXP_LIKE(student_last_name, '^[A-Z][A-Za-z -]+$')),
      student_date_of_birth       DATE          CONSTRAINT student_date_of_birth_nn NOT NULL,
      student_email               VARCHAR2(100) CONSTRAINT student_email_nn NOT NULL
                                                CONSTRAINT student_email_chk CHECK (REGEXP_LIKE(student_email, '^[A-Za-z0-9._%+!$%&*+={|}~^`-]+@[A-Za-z0-9.-]+\.[A-Za-z0-9]+$')),
      student_home_address_line_1 VARCHAR2(50)  CONSTRAINT student_home_address_line_1_nn NOT NULL
                                                CONSTRAINT student_home_address_line_1_chk CHECK (REGEXP_LIKE(student_home_address_line_1, '^[a-zA-z-#.\, 0-9-]+$')),
      student_home_address_line_2 VARCHAR2(50)  CONSTRAINT student_home_address_line_2_chk CHECK (REGEXP_LIKE(student_home_address_line_2, '^[a-zA-z-#.\, 0-9-]+$')),
      student_home_postcode       VARCHAR2(10)  CONSTRAINT student_home_postcode_nn NOT NULL
                                                CONSTRAINT student_home_postcode_chk CHECK (REGEXP_LIKE(student_home_postcode, '^[A-Za-z 0-9]+$')),
      student_term_address_line_1 VARCHAR2(50)  CONSTRAINT student_term_address_line_1_chk CHECK (REGEXP_LIKE(student_term_address_line_1, '^[a-zA-z-#.\, 0-9-]+$')),
      student_term_address_line_2 VARCHAR2(50)  CONSTRAINT student_term_address_line_2_chk CHECK (REGEXP_LIKE(student_term_address_line_2, '^[a-zA-z-#.\, 0-9-]+$')),
      student_term_postcode       VARCHAR2(10)  CONSTRAINT student_term_postcode_chk CHECK (REGEXP_LIKE(student_term_postcode, '^[A-Za-z 0-9]+$')), 
      student_mobile_number       VARCHAR2(15)  CONSTRAINT student_mobile_number_nn NOT NULL
                                                CONSTRAINT student_mobile_number_chk CHECK (REGEXP_LIKE(student_mobile_number, '^[+ 0-9]{11,}$')),
      student_home_number         VARCHAR2(15)  CONSTRAINT student_home_number_chk CHECK (REGEXP_LIKE(student_home_number, '^[+ 0-9]{11,}$')),
      student_alternative_number  VARCHAR2(15)  CONSTRAINT student_alternative_number_chk CHECK (REGEXP_LIKE(student_alternative_number, '^[+ 0-9]{11,}$')),
      student_active              NUMBER(1)     CONSTRAINT student_active_nn NOT NULL,   /*effectivly 0 or 1 to represent true or false*/
      student_cv_submit_date      DATE,
      student_cv_approval_date    DATE,
      student_preference_location VARCHAR2(255) CONSTRAINT student_preference_location_nn NOT NULL,
      student_preference_job_type VARCHAR2(255) CONSTRAINT student_preference_job_type_nn NOT NULL,
      student_preference_other    VARCHAR2(255) CONSTRAINT student_preference_other_nn NOT NULL,
      student_placed              VARCHAR2(30)  CONSTRAINT student_placed_nn NOT NULL, /*effectivly 0 or 1 to represent true or false*/
      CONSTRAINT student_username_ne_student_password CHECK (student_username <> student_password)
  );
  
  CREATE SEQUENCE seq_student_id
  NOCACHE
  START WITH 1000
  INCREMENT BY 1
  MAXVALUE 9999
  CYCLE;
  
  
  
  CREATE OR REPLACE TRIGGER trg_student
  BEFORE INSERT OR UPDATE ON student
  FOR EACH ROW
  BEGIN
    IF INSERTING THEN
      SELECT seq_student_id.nextval
      INTO :NEW.student_id
      FROM sys.dual;
    END IF;
    IF (:NEW.student_cv_approval_date IS NOT NULL) THEN
        :NEW.student_active := 1;
        ELSE
        :NEW.student_active := 0;
    END IF;
    IF (:NEW.student_preference_location IS NULL) THEN
        :NEW.student_preference_location := 'ANYTHING';
    END IF;
    IF (:NEW.student_preference_job_type IS NULL) THEN
        :NEW.student_preference_job_type := 'ANYTHING';
    END IF;
    IF (:NEW.student_preference_other IS NULL) THEN
        :NEW.student_preference_other := 'ANYTHING';
    END IF;
    IF INSERTING THEN
    :NEW.student_username := TO_CHAR((SUBSTR(:NEW.student_first_name , 1 , 1)) || :NEW.student_last_name || :NEW.student_id); 
    END IF;
    IF INSERTING THEN
    :NEW.student_password := TO_CHAR(:NEW.student_date_of_birth); 
    END IF;
    IF INSERTING THEN
    :NEW.student_placed := 'UNPLACED'; 
    END IF;
  END;
  /
  

  
  /*More information is needed when entering data for the REGEX to see what requirements are needed*/
  CREATE OR REPLACE TRIGGER trg_student_ERRORS
  BEFORE INSERT OR UPDATE ON student FOR EACH ROW
  BEGIN 
    IF NOT REGEXP_LIKE(:NEW.student_username, '^[A-Za-z0-9#_-]+$') THEN
    RAISE_APPLICATION_ERROR(-20005, 'Please enter a valid student username (only letters, space, +_- and numbers 0-9 allowed)');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_password, '^[A-Za-z0-9!@£$%^&*()_+=-]{8,}$') THEN
    RAISE_APPLICATION_ERROR(-20006, 'Please enter a valid password (only letters, symbols !@£$%^&*()_+=- and numbers 0-9 allowed, the password must be 8+ characters long)');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_first_name, '^[A-Z][A-Za-z -]+$') THEN
    RAISE_APPLICATION_ERROR(-20007, 'Please enter a valid first name (only letters and the symbol - allowed (Must start with a capital letter eg Name))');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_last_name, '^[A-Z][A-Za-z -]+$') THEN
    RAISE_APPLICATION_ERROR(-20008, 'Please enter a valid last name (only letters and the symbol - allowed (Must start with a capital letter eg Last-Name))');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_email, '^[A-Za-z0-9._%+!$%&*+={|}~^`-]+@[A-Za-z0-9.-]+\.[A-Za-z0-9]+$') THEN
    RAISE_APPLICATION_ERROR(-20004, 'Please enter a valid email, like name.Lname.students.plymouth.ac.uk or name@hotmail.com');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_home_address_line_1, '^[a-zA-z-#.\, 0-9-]+$') THEN
    RAISE_APPLICATION_ERROR(-20000, 'Home Address Line 1 not in correct format, Only use letters, space, numbers and the symbols -#.,');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_home_address_line_2, '^[a-zA-z-#.\, 0-9-]+$') THEN
    RAISE_APPLICATION_ERROR(-20001, 'Home Address Line 2 not in correct format, Only use letters, space, numbers and the symbols -#.,');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_home_postcode, '^[A-Za-z 0-9]+$') THEN
    RAISE_APPLICATION_ERROR(-20002, 'Home Postcode not in correct format, Only use letters, space, numbers');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_term_address_line_1, '^[a-zA-z-#.\, 0-9-]+$') THEN
    RAISE_APPLICATION_ERROR(-20000, 'Term Address Line 1 not in correct format, Only use letters, space, numbers and the symbols -#.,');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_term_address_line_2, '^[a-zA-z-#.\, 0-9-]+$') THEN
    RAISE_APPLICATION_ERROR(-20001, 'Term Address Line 2 not in correct format, Only use letters, space, numbers and the symbols -#.,');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_term_postcode, '^[A-Za-z 0-9]+$') THEN
    RAISE_APPLICATION_ERROR(-20002, 'Term Postcode not in correct format, Only use letters, space, numbers');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_mobile_number, '^[+ 0-9]{11,}$') THEN
    RAISE_APPLICATION_ERROR(-20003, 'Please enter a valid number (only space, + and numbers 0-9 allowed)');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_home_number, '^[+ 0-9]{11,}$') THEN
    RAISE_APPLICATION_ERROR(-20003, 'Please enter a valid number (only space, + and numbers 0-9 allowed)');
    END IF;
    IF NOT REGEXP_LIKE(:NEW.student_alternative_number, '^[+ 0-9]{11,}$') THEN
    RAISE_APPLICATION_ERROR(-20003, 'Please enter a valid number (only space, + and numbers 0-9 allowed)');
    END IF;
    IF ((:NEW.student_cv_submit_date IS NULL) AND (:NEW.student_cv_approval_date IS NOT NULL)) THEN
    RAISE_APPLICATION_ERROR(-20011, 'CV must have been submitted to approved');
    END IF;
    IF ((:NEW.student_active = 1) AND (:NEW.student_cv_approval_date IS NULL)) THEN
    RAISE_APPLICATION_ERROR(-20012, 'Student can not be active if their cv is not approved');
    END IF;
    IF TRUNC(:NEW.student_date_of_birth + NUMTOYMINTERVAL(18,'YEAR')) > (date '2018-06-01') THEN
    RAISE_APPLICATION_ERROR(-20009, 'Student must be at least 18 years of age on 1st June 2018');
    END IF;
    IF (:NEW.student_cv_approval_date IS NOT NULL) AND (:NEW.student_cv_approval_date < :NEW.student_cv_submit_date) THEN
        RAISE_APPLICATION_ERROR(-20014, 'A cv can''t have been approved before it was submitted');
    END IF;
    IF (:NEW.programme_code IS NULL) THEN
    RAISE_APPLICATION_ERROR(-20022, 'please assign a programme to the student');
    END IF;
  END;
  /
  
  /* ---------- Create Application Table, Sequences & Triggers ----------
  
    submitted: student has posted application for approval by university
    withdrawn: student has removed application from university approval
    interview: student invited face-of-face with employer
    assessment: student to visit assessment center
    rejected: application denied by employer
    passed: offered position by employer
    accepted: student accepted offer
    declined: student declined offer
*/
  CREATE TABLE application (
      application_id              INT       CONSTRAINT application_id_pk PRIMARY KEY,
      student_id                  INT       CONSTRAINT student_id_fk REFERENCES student(student_id)
                                            CONSTRAINT student_id_fk_nn NOT NULL,
      job_id                      INT       CONSTRAINT job_id_fk REFERENCES job(job_id)
                                            CONSTRAINT job_id_fk_nn NOT NULL,
      application_submitted       DATE      CONSTRAINT application_submitted_nn NOT NULL,
      application_withdrawn       DATE,
      applicant_interview         DATE,
      applicant_asessment         DATE,
      applicant_rejected          DATE,
      applicant_passed            DATE,
      applicant_accepted          DATE,
      applicant_declined          DATE
  );
  
  CREATE SEQUENCE seq_application_id
  NOCACHE
  START WITH 1000
  INCREMENT BY 1
  MAXVALUE 9999
  CYCLE;
  
  CREATE OR REPLACE TRIGGER trg_application
  BEFORE INSERT OR UPDATE ON application
  FOR EACH ROW
  BEGIN
    IF INSERTING THEN
      SELECT seq_application_id.nextval
      INTO :NEW.application_id
      FROM sys.dual;
    END IF;
    IF (:NEW.applicant_accepted IS NOT NULL) THEN
    UPDATE student
    SET student.student_placed = 'PLACED'
    WHERE student.student_id = :NEW.student_id;
    UPDATE job
    SET job.job_post_available = job.job_post_available - 1
    WHERE job.job_id = :NEW.job_id;
    END IF;
  END;
  /
  
  CREATE OR REPLACE TRIGGER trg_application_ERRORS
  BEFORE INSERT OR UPDATE ON application FOR EACH ROW
  BEGIN 
    IF ((:NEW.applicant_accepted IS NOT NULL) AND (:NEW.applicant_declined IS NOT NULL)) THEN
    RAISE_APPLICATION_ERROR(-20015, 'Application cant be accepted and declined at the same time');
    END IF;
    IF ((:NEW.applicant_rejected IS NOT NULL) AND (:NEW.applicant_passed IS NOT NULL)) THEN
    RAISE_APPLICATION_ERROR(-20016, 'Application cant be rejected and passed at the same time');
    END IF;
    IF (:NEW.application_submitted IS NULL) THEN
    RAISE_APPLICATION_ERROR(-20017, 'Application must have a submit date');
    END IF;
    IF (:NEW.application_submitted IS NOT NULL) AND ((:NEW.application_withdrawn < :NEW.application_submitted) OR 
                                                     (:NEW.applicant_interview < :NEW.application_submitted) OR
                                                     (:NEW.applicant_asessment < :NEW.application_submitted) OR
                                                     (:NEW.applicant_rejected < :NEW.application_submitted) OR
                                                     (:NEW.applicant_passed < :NEW.application_submitted) OR
                                                     (:NEW.applicant_accepted < :NEW.application_submitted) OR
                                                     (:NEW.applicant_declined < :NEW.application_submitted)) THEN
    RAISE_APPLICATION_ERROR(-20018, 'Application stages can''t have occured before it was submitted');
    END IF;
    IF (:NEW.job_id IS NULL) THEN
    RAISE_APPLICATION_ERROR(-20023, 'please assign a job to the application');
    END IF;
    IF (:NEW.student_id IS NULL) THEN
    RAISE_APPLICATION_ERROR(-20024, 'please assign a student to the application');
    END IF;
  END;
  /
/* ---------- ARCHIVE TABLE data ---------- */  
  /* ---------- Create Application Table, Sequences & Triggers ----------
  
    submitted: student has posted application for approval by university
    withdrawn: student has removed application from university approval
    interview: student invited face-of-face with employer
    assessment: student to visit assessment center
    rejected: application denied by employer
    passed: offered position by employer
    accepted: student accepted offer
    declined: student declined offer
*/
  CREATE TABLE application_change_log (
      change_id                   INT        CONSTRAINT change_id_pk PRIMARY KEY,
      application_id              INT,
      student_id                  INT,
      job_id                      INT,
      application_submitted       DATE,
      application_withdrawn       DATE,
      applicant_interview         DATE,
      applicant_asessment         DATE,
      applicant_rejected          DATE,
      applicant_passed            DATE,
      applicant_accepted          DATE,
      applicant_declined          DATE,
      when_altered                DATE,
      reason                      VARCHAR2(50)
  ); 
  
  CREATE SEQUENCE seq_change_id
  NOCACHE
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 9999
  CYCLE;
  
  CREATE OR REPLACE TRIGGER trg_application_change_log_id
  BEFORE INSERT ON application_change_log
  FOR EACH ROW
  BEGIN
    IF INSERTING THEN
      SELECT seq_change_id.nextval
      INTO :NEW.change_id
      FROM sys.dual;
    END IF;
  END;
  /
  
 CREATE OR REPLACE TRIGGER trg_application_change_log
  BEFORE UPDATE OR DELETE OR INSERT ON application
  FOR EACH ROW
  BEGIN
    IF DELETING THEN
    INSERT INTO application_change_log
        (application_id, student_id, job_id, application_submitted, application_withdrawn, applicant_interview, applicant_asessment, applicant_rejected,
        applicant_passed, applicant_accepted, applicant_declined, when_altered, reason)
    VALUES
        (:OLD.application_id, :OLD.student_id, :OLD.job_id, :OLD.application_submitted, :OLD.application_withdrawn, :OLD.applicant_interview, :OLD.applicant_asessment, :OLD.applicant_rejected,
        :OLD.applicant_passed, :OLD.applicant_accepted, :OLD.applicant_declined, SYSTIMESTAMP, 'application deleted (last values stored)');
    END IF;
    IF UPDATING THEN
    INSERT INTO application_change_log
        (application_id, student_id, job_id, application_submitted, application_withdrawn, applicant_interview, applicant_asessment, applicant_rejected,
        applicant_passed, applicant_accepted, applicant_declined, when_altered, reason)
    VALUES
        (:NEW.application_id, :NEW.student_id, :NEW.job_id, :NEW.application_submitted, :NEW.application_withdrawn, :NEW.applicant_interview, :NEW.applicant_asessment, :NEW.applicant_rejected,
        :NEW.applicant_passed, :NEW.applicant_accepted, :NEW.applicant_declined, SYSTIMESTAMP, 'application updated (updated values stored)'); 
    END IF;
  END;
  /
  
/* ---------- Insert test data ---------- */

/* date layout: YYYY-MM-DD */

/* Always insert just one set at a time, i.e. don't insert two lots of students in one go */
/*
INSERT ALL

  INTO company (company_name) VALUES ('Technology Incorporated')
  INTO company (company_name) VALUES ('Digital Dynamics')
  INTO company (company_name) VALUES ('January Computing')
  INTO company (company_name) VALUES ('TipTopTechnologies')

  INTO site (company_id, site_name, site_address_line_1, site_address_line_2, site_address_postcode) VALUES (1000, 'Plymouth', '14 Mayflower Road', 'Devon', 'PL12 6TK')
  INTO site (company_id, site_name, site_address_line_1, site_address_line_2, site_address_postcode) VALUES (1000, 'East Branch', '72 Lincoln Green Lane', 'Church Estate', 'AL3 2XR')
  INTO site (company_id, site_name, site_address_line_1, site_address_line_2, site_address_postcode) VALUES (1000, 'West Branch', '97 City Walls Rd', 'Clydach Valale', 'CF40 7JP')

  INTO job (site_id, job_title, job_description, job_contact_number, job_contact_email, job_salary, job_start, job_application_method, job_close, job_post_available) VALUES (1000, 'Software Developer', 'Developer of software', '01124567234', 'angie@techinc.com', 100000.00, date '2019-07-01', 'CV and Interview', date '2020-07-01', 10)

  INTO programme (programme_code, programme_name, programme_mandatory) VALUES ('3384', 'BSc (Hons) Computer and Information Security', 0)
  INTO programme (programme_code, programme_name, programme_mandatory) VALUES ('3429', 'BSc (Hons) Computer Science', 0)
  INTO programme (programme_code, programme_name, programme_mandatory) VALUES ('0746', 'BSc (Hons) Computer Systems and Networks', 0)
  INTO programme (programme_code, programme_name, programme_mandatory) VALUES ('2594', 'BSc (Hons) Computing', 0)
  INTO programme (programme_code, programme_name, programme_mandatory) VALUES ('4230', 'BSc (Hons) Computing and Games Development', 0)
  INTO programme (programme_code, programme_name, programme_mandatory) VALUES ('6007', 'BSc (Hons) Applied Computing with Professional Experience', 1)
  
SELECT 1 FROM DUAL;

INSERT ALL

  INTO student (programme_code, student_first_name, student_last_name, student_date_of_birth, student_email, student_home_address_line_1, student_home_address_line_2, student_home_postcode, student_term_address_line_1, student_term_address_line_2, student_term_postcode, student_mobile_number, student_home_number, student_alternative_number, student_active, student_cv_submit_date, student_cv_approval_date, student_preference_location, student_preference_job_type, student_preference_other) VALUES ('3384',  'Barry', 'Paul', date '1995-11-20', 'barrypaul@gmail.com', 'The House', 'The Street', 'PL35UAB', 'The Shed', '','PL35AFG', '07453923165', '01724561385', '07814028461', 1, date '2018-10-20', date '2018-10-31', 'Cornwall', 'Computing',  'Not underground.')
  INTO student (programme_code, student_first_name, student_last_name, student_date_of_birth, student_email, student_home_address_line_1, student_home_address_line_2, student_home_postcode, student_term_address_line_1, student_term_address_line_2, student_term_postcode, student_mobile_number, student_home_number, student_alternative_number, student_active, student_cv_submit_date, student_cv_approval_date, student_preference_location, student_preference_job_type) VALUES ('6007',  'Kirk', 'Mchoggen', date '1997-01-15', 'kirkmcg@live.co.uk', 'Yew Tree House', '13 Long Avenue', 'PL3 8FG', '', '', '', '07263478463', '01747385629', '', 0, '', '', 'London', 'Computing')
  INTO student (programme_code, student_first_name, student_last_name, student_date_of_birth, student_email, student_home_address_line_1, student_home_address_line_2, student_home_postcode, student_term_address_line_1, student_term_address_line_2, student_term_postcode, student_mobile_number, student_home_number, student_alternative_number, student_active, student_cv_submit_date, student_cv_approval_date, student_preference_location, student_preference_job_type, student_preference_other) VALUES ('2594',  'Hugh', 'Hiorns', date '1996-03-10', 'hughh1@gmail.com', '7 Orange Road', 'Antley', 'GL7 8HG', '4 Cask Street', 'Plymouth', 'PL5 9FH', '07746284375', '01486726306', '07263748616', 1, date '2018-10-29', date '2018-10-31', '', 'Software Engineering', 'Working in large teams')

  
  INTO application (student_id, job_id, application_submitted, applicant_interview, applicant_passed) VALUES (1000, 1000, date '2018-11-12', date '2019-01-21', date '2018-12-01')
  INTO application (student_id, job_id, application_submitted, applicant_interview, applicant_passed) VALUES (1001, 1000, date '2018-11-12', date '2019-01-21', date '2018-12-01')
    
SELECT 1 FROM DUAL;

*/
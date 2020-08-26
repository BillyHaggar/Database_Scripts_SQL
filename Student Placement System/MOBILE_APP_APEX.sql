prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>14134704764733740
,p_default_application_id=>346
,p_default_owner=>'APEX817'
);
end;
/
 
prompt APPLICATION 346 - Apex817 Mobile Application
--
-- Application Export:
--   Application:     346
--   Name:            Apex817 Mobile Application
--   Date and Time:   04:31 Thursday December 13, 2018
--   Exported By:     APEX817
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.4.00.08
--   Instance ID:     108855196699054
--

-- Application Statistics:
--   Pages:                     10
--     Items:                   77
--     Processes:                4
--     Regions:                 11
--     Buttons:                 15
--     Dynamic Actions:          6
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  1
--       Breadcrumbs:            1
--         Entries:              2
--       NavBar Entries:         1
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 3
--         Region:              14
--         Label:                3
--         List:                 5
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               2
--         Report:               1
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,346)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX817')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Apex817 Mobile Application')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_346')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'07ADB4E0D2646EB92DD0B8539240BC2B6D164AD70BB581355989B49F86764C11'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(122363569433698689)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:Apex817 Mobile Application'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181212204142'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(114702163597519392)
,p_name=>'Mobile Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(126567659846583898)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(114931507345953098)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Job Vacancies'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(135319297546673117)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Applications'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23,24'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(141364290431103859)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Your Account'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25,26'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(114701511714519385)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(114701610233519389)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(114701745527519392)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(114701804335519392)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(114701996960519392)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(114702036530519392)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(114710508796519635)
,p_icon_sequence=>200
,p_icon_subtext=>'Log Out'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Log Out'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(114710755401519648)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(141635646001281043)
,p_parent_id=>wwv_flow_api.id(141673041384324175)
,p_short_name=>'Vacancies'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(141673041384324175)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(114702203188519398)
,p_theme_id=>51
,p_name=>'Dialog'
,p_internal_name=>'DIALOG'
,p_is_popup=>true
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-dialog="true" data-role="page" data-close-btn="right" aria-label="#TITLE#" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
' <div data-role="header" class="ui-header ui-bar-c">',
'  <h1>#TITLE#</h1>',
' </div>',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#THEME_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>4
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_width=>'92.5%'
,p_dialog_max_width=>'500px'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3944623128197965030
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(114702355585519432)
,p_theme_id=>51
,p_name=>'Page'
,p_internal_name=>'PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <meta name="apple-mobile-web-app-capable" content="yes">',
'  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a" data-url="#REQUESTED_URL#" class="ui-responsive-panel" >',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'#REGION_POSITION_01#',
'',
'<div data-role="panel" id="menupanel"  class="jqm-navmenu-panel" data-position="left" data-display="overlay">',
'    #SIDE_GLOBAL_NAVIGATION_LIST#',
'</div>    ',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div>',
'',
'#REGION_POSITION_08#',
'',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" style="margin-bottom:20px;" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS# apex-grid-debug">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773948923360905623
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(114702892388519446)
,p_theme_id=>51
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#    ',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773982230016967788
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(114705237834519493)
,p_template_name=>'Icon Button'
,p_internal_name=>'ICON_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3769112915850328396
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_preset_template_options=>'ui-btn-icon-notext'
,p_theme_id=>51
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(114709411350519507)
,p_template_name=>'Standard Button'
,p_internal_name=>'STANDARD_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3773985424233098554
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_theme_id=>51
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114702985518519450)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" data-type="horizontal" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Horizontal)'
,p_internal_name=>'BUTTON_GROUP_HORIZONTAL'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986716277171983
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703027297519459)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Vertical)'
,p_internal_name=>'BUTTON_GROUP_VERTICAL'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986516015153022
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703178340519460)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" #REGION_CSS_CLASSES# #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Closed)'
,p_internal_name=>'COLLAPSIBLE_CLOSED'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3802613893727675064
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703292188519460)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" data-collapsed="false" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Open)'
,p_internal_name=>'COLLAPSIBLE_OPEN'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773989519618239167
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703321092519460)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible-set" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Collapsible Set'
,p_internal_name=>'COLLAPSIBLE_SET'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773995014648303985
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703484696519460)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Displays at Bottom of Page)'
,p_internal_name=>'FOOTER_TOOLBAR_DISPLAYS_AT_BOTTOM_OF_PAGE'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773960018627216969
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703538548519462)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fixed)'
,p_internal_name=>'FOOTER_TOOLBAR_FIXED'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956337432111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703669461519462)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fullscreen)'
,p_internal_name=>'FOOTER_TOOLBAR_FULLSCREEN'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773955815682111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703766827519462)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#PAGE_TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fixed)'
,p_internal_name=>'HEADER_TOOLBAR_FIXED'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773957032569111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703832501519462)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fullscreen)'
,p_internal_name=>'HEADER_TOOLBAR_FULLSCREEN'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956714688111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114703977712519462)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-role="panel" id="#REGION_STATIC_ID#" data-position="right" data-display="overlay" class="#REGION_CSS_CLASSES#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'</div>  '))
,p_page_plug_template_name=>'Panel'
,p_internal_name=>'PANEL'
,p_theme_id=>51
,p_theme_class_id=>2
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4376395493293226388
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114704034275519462)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#PREVIOUS#',
'#NEXT#    ',
'</div>'))
,p_page_plug_template_name=>'Plain (No Title)'
,p_internal_name=>'PLAIN_NO_TITLE'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773970912843347834
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114704152269519462)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ui-collapsible #REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'  <h3 class="ui-collapsible-heading ui-btn ui-corner-top ui-btn-up-a">',
'    <span class="ui-btn-inner ui-corner-top ui-corner-bottom">',
'      <span lass="ui-btn-text">#TITLE#</span>',
'    </span>',
'  </h3>',
'  <div class="ui-collapsible-content ui-body-c ui-corner-bottom">',
'    #BODY#',
'    #SUB_REGIONS#',
'    #EDIT#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Region (With Title Bar)'
,p_internal_name=>'REGION_WITH_TITLE_BAR'
,p_theme_id=>51
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774008426020553267
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(114704252666519465)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'#SUB_REGIONS#',
'#EDIT#',
'</div>'))
,p_page_plug_template_name=>'Region (With Title)'
,p_internal_name=>'REGION_WITH_TITLE'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774032731297886006
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(114704418724519475)
,p_list_template_current=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_name=>'Button Control Group'
,p_internal_name=>'BUTTON_CONTROL_GROUP'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="navgroup">',
'   <div data-role="controlgroup" data-type="horizontal">'))
,p_list_template_after_rows=>'</div></div>'
,p_reference_id=>4142824253118274072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(114704546436519481)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View'
,p_internal_name=>'LIST_VIEW'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3776865227797444118
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(114704633101519481)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View (Inset)'
,p_internal_name=>'LIST_VIEW_INSET'
,p_theme_id=>51
,p_theme_class_id=>10
,p_list_template_before_rows=>'<ul data-role="listview" data-inset="true">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-inset="true">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3935648678734663305
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(114704753400519481)
,p_list_template_current=>'<li><a href="#LINK#" class="ui-btn-active" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>51
,p_theme_class_id=>11
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-role="navbar">',
'  <ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div><!-- /navbar -->'))
,p_reference_id=>3773961435821288174
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(114704811253519481)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Menu'
,p_internal_name=>'NAVIGATION_MENU'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.jqm-navmenu-panel .ui-listview > li .ui-collapsible-heading {',
'    margin: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible.ui-li-static {',
'    border: medium none !important;',
'    padding: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible + li > .ui-btn, .jqm-navmenu-panel .ui-collapsible + .ui-collapsible > .ui-collapsible-heading > .ui-btn, .jqm-navmenu-panel .ui-panel-inner > .ui-listview > li.ui-first-child .ui-btn {',
'    border-top: medium none !important;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn {',
'    color: #999;',
'    padding-left: 1.5em;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn.ui-btn-active {',
'    color: #fff;',
'}',
'.jqm-navmenu-panel .ui-btn:after {',
'    opacity: 0.4;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav {',
'    display: none;',
'    left: 12px;',
'    position: absolute;',
'    top: 178px;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav ul li:first-child a {',
'    border-top: medium none;',
'}',
'',
''))
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-role="listview" data-theme="b">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    <ul data-role="listview" data-theme="b">',
'        #SUB_LISTS#',
'    </ul>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    #SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_reference_id=>5052261073199403386
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(114704322681519465)
,p_row_template_name=>'Standard Report'
,p_internal_name=>'STANDARD_REPORT'
,p_row_template1=>'<div class="list-view-cell" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_VALUE#</div>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<ul data-role="listview">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<li data-role="list-divider">'
,p_column_heading_template=>'<div class="list-view-cell" id="#COLUMN_HEADER_NAME#" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_HEADER#</div>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3938915966414985025
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(114704322681519465)
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(114704927515519485)
,p_template_name=>'No Label (For Screenreaders)'
,p_internal_name=>'NO_LABEL_FOR_SCREENREADERS'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-hide-label" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>13
,p_reference_id=>3774000536044404829
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(114705089900519492)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>3
,p_reference_id=>3773999522622381968
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(114705150804519492)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'<span class="a-Icon icon-asterisk"></span></label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3773952434061913595
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(141651227426302987)
,p_name=>'APEX817MobileAppBreadcrumb'
,p_internal_name=>'APEX817MOBILEAPPBREADCRUMB'
,p_current_page_option=>'#NAME#'
,p_non_current_page_option=>'<a href="#LINK#" style="color:black">#NAME#</a>'
,p_between_levels=>'&nbsp;&gt;&nbsp;'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>51
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(114709815956519520)
,p_popup_icon=>'#IMAGE_PREFIX#list.gif'
,p_popup_icon_attr=>'width=13 height=13 alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css>',
'#THEME_CSS#',
'</head>'))
,p_page_body_attr=>'bgcolor=white OnLoad=first_field()'
,p_before_field_text=>' '
,p_page_heading_text=>'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css><style>a:link { color:#336699; text-decoration:none; padding:2px;} a:visited { color:#336699; text-decoration:none;} a:hover { color:red; text-decoration:underline;} body { font-fami'
||'ly:arial; background-color:#ffffff;} </style>'
,p_page_footer_text=>'</center></td></tr></table>'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next'
,p_prev_button_text=>'Previous'
,p_after_field_text=>'</div><br />'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'Row(s) #FIRST_ROW# - #LAST_ROW#'
,p_result_rows_per_pg=>10
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3773970616521339369
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(114709765698519512)
,p_cal_template_name=>'Basic Calendar'
,p_internal_name=>'BASIC_CALENDAR'
,p_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="m-Calendar" id="calendar_month_#REGION_STATIC_ID#" data-enhance=false>',
'<tr><th scope="colgroup" class="m-MonthTitle" colspan="7" >#IMONTH# #YYYY#</th></tr>',
''))
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="7">',
'<div id="calendar_day_details_#REGION_STATIC_ID#"></div>',
'</td>',
'</tr>',
'</table>',
'<script>',
'apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageinit", function() {',
'',
'    // Initialize calendar data as list view as soon as that section has been refreshed',
'    // Use Swipe Left and Right to go to the next or previous month',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ )',
'        .on( "apexafterrefresh", function() {',
'            apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'                .find( "[data-role=''listview'']")',
'                .listview(); })',
'        .on( "swipeleft", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''next''); } )',
'        .on( "swiperight", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''previous''); } );',
'',
'    // Load calendar data of date if it''s tapped',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "tap", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function () {',
'        var lDate     = apex.jQuery( this ).data( "date" ),',
'            lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery(".apex-calendar-today-has-data")',
'            .addClass(''apex-calendar-has-data'')',
'            .removeClass("apex-calendar-today-has-data");',
'        apex.jQuery( ".m-Today" )',
'            .addClass("m-Day")',
'            .removeClass( "m-Today" );',
'        apex.jQuery( this ).addClass( "m-Today" );',
'',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", lDate, {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'    // New calendar entries can be added with tab and hold',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "taphold", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function (e) {',
'       apex.widget.calendar.ajaxAddData(e);',
'    });',
'',
'    // Get the data of the current day as soon as the page gets displayed',
'    apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageshow", function() {',
'        var lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery( ".m-Today", apex.gPageContext$ )',
'            .addClass( "m-Day" )',
'            .removeClass( "m-Today" );',
'        apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'            .find( "td[data-date=#CURRENT_DATE#]" )',
'            .addClass( "m-Today" );',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", "#CURRENT_DATE#", {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'});',
'</script>'))
,p_day_title_format=>'<div class="content-primary" class="m-DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="m-Day #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="m-Today #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="content-primary" class="m-WeekendDayTitle">#DD#</div>',
''))
,p_weekend_open_format=>'<td class="m-WeekendDay #HAS_DATA#"  data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="content-primary" class="m-NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="m-NonDay"  data-date="#CANONICAL_DATE#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="m-WeekCalendar">',
'	<tr>',
'        <th scope="colgroup" class="m-monthTitle" colspan="7" >#WTITLE#</th>',
'	</tr>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="m-DayOfWeek" >#IDY# #MM#/#DD#</th>',
''))
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_weekly_day_open_format=>'<td class="m-Day">'
,p_weekly_day_close_format=>'</td>'
,p_weekly_today_open_format=>'<td class="m-Today">'
,p_weekly_weekend_open_format=>'<td class="m-NonDay">'
,p_weekly_weekend_close_format=>'</td>'
,p_weekly_time_open_format=>'<th scope="row" class="m-hour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr rowspan="2">'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDAY# #DD# #IMONTH# #YYYY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL#" class="m-DayCalendar"><tr>',
''))
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_daily_day_open_format=>'<td class="m-Day">'
,p_daily_day_close_format=>'</td>'
,p_daily_today_open_format=>'<td class="m-ToDay">'
,p_daily_time_open_format=>'<th scope="row" class="m-hour">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr rowspan="2" >'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul data-role="listview">',
'#DAYS#',
'</ul>',
''))
,p_agenda_past_day_format=>'<li data-role="list-divider" data-theme="a">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_today_day_format=>'<li data-role="list-divider" data-theme="b">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_future_day_format=>'<li  data-role="list-divider" >#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_past_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_today_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_future_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_month_data_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul id="listview_#REGION_STATIC_ID#" data-role="listview" data-inset="true" data-theme="a">#DAYS#</ul>',
''))
,p_month_data_entry_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li align="left" >#LINK##DATA#<p class="ui-li-aside">#TIME#</p></li>',
' '))
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3894606461977238251
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(114710352112519542)
,p_theme_id=>51
,p_theme_name=>'Mobile'
,p_theme_internal_name=>'MOBILE'
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_navigation_type=>'L'
,p_nav_bar_type=>'NAVBAR'
,p_reference_id=>3773947624214896911
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(114702355585519432)
,p_default_dialog_template=>wwv_flow_api.id(114702203188519398)
,p_error_template=>wwv_flow_api.id(114702355585519432)
,p_printer_friendly_template=>wwv_flow_api.id(114702355585519432)
,p_login_template=>wwv_flow_api.id(114702355585519432)
,p_default_button_template=>wwv_flow_api.id(114709411350519507)
,p_default_region_template=>wwv_flow_api.id(114704034275519462)
,p_default_chart_template=>wwv_flow_api.id(114704034275519462)
,p_default_form_template=>wwv_flow_api.id(114704034275519462)
,p_default_reportr_template=>wwv_flow_api.id(114704252666519465)
,p_default_tabform_template=>wwv_flow_api.id(114704034275519462)
,p_default_wizard_template=>wwv_flow_api.id(114704034275519462)
,p_default_irr_template=>wwv_flow_api.id(114704034275519462)
,p_default_report_template=>wwv_flow_api.id(114704322681519465)
,p_default_label_template=>wwv_flow_api.id(114705089900519492)
,p_default_calendar_template=>wwv_flow_api.id(114709765698519512)
,p_default_list_template=>wwv_flow_api.id(114704633101519481)
,p_default_nav_list_template=>wwv_flow_api.id(114704546436519481)
,p_default_top_nav_list_temp=>wwv_flow_api.id(114704546436519481)
,p_default_side_nav_list_temp=>wwv_flow_api.id(114704811253519481)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(114702985518519450)
,p_default_dialogr_template=>wwv_flow_api.id(114704034275519462)
,p_default_option_label=>wwv_flow_api.id(114705089900519492)
,p_default_header_template=>wwv_flow_api.id(114703766827519462)
,p_default_footer_template=>wwv_flow_api.id(114703538548519462)
,p_default_required_label=>wwv_flow_api.id(114705150804519492)
,p_default_page_transition=>'SLIDE'
,p_default_popup_transition=>'POP'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(51),'#IMAGE_PREFIX#themes/theme_51/')
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#THEME_IMAGES#css/5_0.css',
'#JET_CSS_DIRECTORY#alta/oj-alta-notag-min.css'))
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(114709942361519528)
,p_theme_id=>51
,p_name=>'Blue'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/blue/theme_style_blue.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/blue/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537230577370
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(114710052915519531)
,p_theme_id=>51
,p_name=>'Dark'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/dark/theme_style_dark.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/dark/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3806542953350945495
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(114710131664519531)
,p_theme_id=>51
,p_name=>'Default'
,p_css_file_urls=>'#IMAGE_PREFIX#themes/theme_51/css/default/theme_style_default.css'
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3768671220784242708
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(114710221599519531)
,p_theme_id=>51
,p_name=>'Red'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/red/theme_style_red.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/red/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537227576001
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(114702466409519440)
,p_theme_id=>51
,p_name=>'MENU_PANEL_OPTIONS'
,p_display_name=>'Menu Panel Options'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'The relationship of the menu panel to the page contents. Can either push the page over ("reveal"), re-flow the content to fit the panel content as a column ("push"), or sit over the content ("overlay").'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(114705302877519500)
,p_theme_id=>51
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(114706113562519501)
,p_theme_id=>51
,p_name=>'ICON_BUTTON'
,p_display_name=>'Icon Button'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114702551787519443)
,p_theme_id=>51
,p_name=>'OVERLAY'
,p_display_name=>'Overlay'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(114702355585519432)
,p_css_classes=>'overlay'
,p_group_id=>wwv_flow_api.id(114702466409519440)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114702677773519446)
,p_theme_id=>51
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(114702355585519432)
,p_css_classes=>'push'
,p_group_id=>wwv_flow_api.id(114702466409519440)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114702733994519446)
,p_theme_id=>51
,p_name=>'REVEAL'
,p_display_name=>'Reveal'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(114702355585519432)
,p_css_classes=>'reveal'
,p_group_id=>wwv_flow_api.id(114702466409519440)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114705480917519500)
,p_theme_id=>51
,p_name=>'ICON_BOTTOM'
,p_display_name=>'Bottom'
,p_display_sequence=>50
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-btn-icon-bottom'
,p_group_id=>wwv_flow_api.id(114705302877519500)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114705539563519501)
,p_theme_id=>51
,p_name=>'ICON_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-btn-icon-left'
,p_group_id=>wwv_flow_api.id(114705302877519500)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114705610930519501)
,p_theme_id=>51
,p_name=>'NO_TEXT'
,p_display_name=>'No Text'
,p_display_sequence=>60
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-btn-icon-notext'
,p_group_id=>wwv_flow_api.id(114705302877519500)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114705719740519501)
,p_theme_id=>51
,p_name=>'ICON_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>40
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-btn-icon-right'
,p_group_id=>wwv_flow_api.id(114705302877519500)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114705876178519501)
,p_theme_id=>51
,p_name=>'ICON_TOP'
,p_display_name=>'Top'
,p_display_sequence=>30
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-btn-icon-top'
,p_group_id=>wwv_flow_api.id(114705302877519500)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114705976587519501)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>5
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114706065661519501)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114706258269519501)
,p_theme_id=>51
,p_name=>'ICON_ACTION'
,p_display_name=>'Action'
,p_display_sequence=>100
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-action'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114706390703519501)
,p_theme_id=>51
,p_name=>'ICON_ALERT'
,p_display_name=>'Alert'
,p_display_sequence=>110
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-alert'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114706481892519501)
,p_theme_id=>51
,p_name=>'ICON_BACK'
,p_display_name=>'Back'
,p_display_sequence=>120
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-back'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114706543437519501)
,p_theme_id=>51
,p_name=>'ICON_BARS'
,p_display_name=>'Bars'
,p_display_sequence=>130
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-bars'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114706639582519501)
,p_theme_id=>51
,p_name=>'ICON_BULLETS'
,p_display_name=>'Bullets'
,p_display_sequence=>140
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-bullets'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114706707027519501)
,p_theme_id=>51
,p_name=>'ICON_CALENDAR'
,p_display_name=>'Calendar'
,p_display_sequence=>150
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-calendar'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114706868153519503)
,p_theme_id=>51
,p_name=>'ICON_CARAT_DOWN'
,p_display_name=>'Down'
,p_display_sequence=>160
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-carat-d'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114706977784519503)
,p_theme_id=>51
,p_name=>'ICON_CARAT_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>170
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-carat-l'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707041155519503)
,p_theme_id=>51
,p_name=>'ICON_CARAT_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>180
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-carat-r'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707121636519503)
,p_theme_id=>51
,p_name=>'ICON_CARAT_UP'
,p_display_name=>'Up'
,p_display_sequence=>190
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-carat-u'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707223221519503)
,p_theme_id=>51
,p_name=>'ICON_CHECK'
,p_display_name=>'Check'
,p_display_sequence=>210
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-check'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707326474519503)
,p_theme_id=>51
,p_name=>'ICON_CLOCK'
,p_display_name=>'Clock'
,p_display_sequence=>240
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-clock'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707482060519503)
,p_theme_id=>51
,p_name=>'ICON_CLOUD'
,p_display_name=>'Cloud'
,p_display_sequence=>220
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-cloud'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707587668519503)
,p_theme_id=>51
,p_name=>'ICON_COMMENT'
,p_display_name=>'Comment'
,p_display_sequence=>230
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-comment'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707644329519503)
,p_theme_id=>51
,p_name=>'ICON_DELETE'
,p_display_name=>'Delete'
,p_display_sequence=>200
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-delete'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707751891519506)
,p_theme_id=>51
,p_name=>'ICON_EDIT'
,p_display_name=>'Edit'
,p_display_sequence=>250
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-edit'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707850997519506)
,p_theme_id=>51
,p_name=>'ICON_GEAR'
,p_display_name=>'Gear'
,p_display_sequence=>260
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-gear'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114707931080519506)
,p_theme_id=>51
,p_name=>'ICON_GRID'
,p_display_name=>'Grid'
,p_display_sequence=>270
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-grid'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708012821519506)
,p_theme_id=>51
,p_name=>'ICON_HOME'
,p_display_name=>'Home'
,p_display_sequence=>280
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-home'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708165744519506)
,p_theme_id=>51
,p_name=>'ICON_INFO'
,p_display_name=>'Info'
,p_display_sequence=>290
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-info'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708254727519506)
,p_theme_id=>51
,p_name=>'ICON_LOCATION'
,p_display_name=>'Location'
,p_display_sequence=>300
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-location'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708391823519506)
,p_theme_id=>51
,p_name=>'ICON_LOCK'
,p_display_name=>'Lock'
,p_display_sequence=>310
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-lock'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708418372519507)
,p_theme_id=>51
,p_name=>'ICON_MAIL'
,p_display_name=>'Mail'
,p_display_sequence=>320
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-mail'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708513116519507)
,p_theme_id=>51
,p_name=>'ICON_MINUS'
,p_display_name=>'Minus'
,p_display_sequence=>330
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-minus'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708695733519507)
,p_theme_id=>51
,p_name=>'ICON_PHONE'
,p_display_name=>'Phone'
,p_display_sequence=>340
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-phone'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708790765519507)
,p_theme_id=>51
,p_name=>'ICON_PLUS'
,p_display_name=>'Plus'
,p_display_sequence=>350
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-plus'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708852653519507)
,p_theme_id=>51
,p_name=>'ICON_POWER'
,p_display_name=>'Power'
,p_display_sequence=>360
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-power'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114708986301519507)
,p_theme_id=>51
,p_name=>'ICON_REFRESH'
,p_display_name=>'Refresh'
,p_display_sequence=>370
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-refresh'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114709000615519507)
,p_theme_id=>51
,p_name=>'ICON_SEARCH'
,p_display_name=>'Search'
,p_display_sequence=>380
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-search'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114709195612519507)
,p_theme_id=>51
,p_name=>'ICON_STAR'
,p_display_name=>'Star'
,p_display_sequence=>390
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-star'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114709243043519507)
,p_theme_id=>51
,p_name=>'ICON_TAG'
,p_display_name=>'Tag'
,p_display_sequence=>400
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-tag'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114709374890519507)
,p_theme_id=>51
,p_name=>'ICON_USER'
,p_display_name=>'User'
,p_display_sequence=>410
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_css_classes=>'ui-icon-user'
,p_group_id=>wwv_flow_api.id(114706113562519501)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114709500050519509)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(114709629406519509)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(126203427969713087)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(114710623251519639)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(122363569433698689)
,p_name=>'APEX817_custom_student_db_authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'validate_student_from_db'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION validate_student_from_db(p_username IN VARCHAR2,p_password IN VARCHAR2)',
'RETURN BOOLEAN AS FOUND NUMBER :=0;',
'BEGIN ',
'SELECT 1 INTO FOUND FROM student',
'WHERE UPPER(student_username)=UPPER(p_username)',
'and student_password=p_password;',
'return true;',
'exception',
'when no_data_found then ',
'return false;',
'end;'))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(114710444086519604)
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_display_name=>'Mobile'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>51
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_JQM_SMARTPHONE:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(114702163597519392)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(114704811253519481)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'NAVBAR'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'Global Page - Mobile'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Mobile'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20181205172252'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114711078532519653)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(114703766827519462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Header'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114711349686519657)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(114703538548519462)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Footer'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114711257597519657)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(114711078532519653)
,p_button_name=>'LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'Log Out'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:location.href="&LOGOUT_URL.";'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114711183970519654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(114711078532519653)
,p_button_name=>'MENU'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:ui-btn-icon-notext:ui-icon-bars'
,p_button_template_id=>wwv_flow_api.id(114705237834519493)
,p_button_image_alt=>'Menu'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_cattributes=>' data-direction="reverse"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(114711440285519657)
,p_name=>'open panel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(114711183970519654)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(114711440285519657)
,p_event_id=>wwv_flow_api.id(114711440285519657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.mobile.activePage.find(''#menupanel'').panel("open");'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181209203515'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117510046909206932)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(114704034275519462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(114702163597519392)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(114704633101519481)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126474183993407916)
,p_name=>'P1_WELCOME_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(117510046909206932)
,p_pre_element_text=>'<h1>Welcome '
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</h1>',
'<br/>',
'<h2>View job vacancies, edit an application and more below.<h2/>'))
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student.student_first_name',
'from student',
'where UPPER(student.student_username)=UPPER(:APP_USER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'Job Vacancies'
,p_page_mode=>'NORMAL'
,p_step_title=>'Job Vacancies'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181212031305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114779282686597003)
,p_plug_name=>'Job Vacancies'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(114704034275519462)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT job.job_title,',
'       company.company_name,',
'       site.site_name,',
'       job.job_description,',
'       job.job_contact_number,',
'       job.job_contact_email,',
'       job.job_salary,',
'       job.job_start,',
'       job.job_close,',
'       job.job_application_method,',
'       site.site_address_line_1,',
'       site.site_address_line_2,',
'       site.site_address_postcode,',
'       job.job_id',
'FROM job JOIN site ON job.site_id = site.site_id',
'JOIN company ON site.company_id = company.company_id',
'WHERE (UPPER(job.job_title) LIKE ''%''||UPPER(:P2_SEARCH)||''%'' OR :P2_SEARCH IS NULL) AND job.job_post_available > 0'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'DIVIDER:INSET'
,p_attribute_02=>'JOB_TITLE'
,p_attribute_06=>'COMPANY_NAME'
,p_attribute_14=>'JOB_CLOSE'
,p_attribute_16=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:P7_JOB_ID:&JOB_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117511497015206946)
,p_name=>'P2_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(114779282686597003)
,p_placeholder=>'Search by job title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134529423442772721)
,p_name=>'P2_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(114779282686597003)
,p_prompt=>'View and apply to a vacancy:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'New Application'
,p_page_mode=>'NORMAL'
,p_step_title=>'New Application'
,p_allow_duplicate_submissions=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_browser_cache=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181212160345'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(132931173522626114)
,p_plug_name=>'New Application'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(114704034275519462)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(132931870522626121)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(132931173522626114)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(132931579455626120)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(132931173522626114)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P6_APPLICATION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119261049501498522)
,p_name=>'P6_STUDENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_id',
'from student',
'where UPPER(student_username)=UPPER(:APP_USER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126474296796407917)
,p_name=>'P6_JOB_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132933327670626207)
,p_name=>'P6_APPLICATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132933745419626240)
,p_name=>'P6_APPLICATION_SUBMITTED'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_item_default=>'to_char(sysdate)'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Application Submitted'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132934056756626242)
,p_name=>'P6_APPLICATION_WITHDRAWN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_prompt=>'Application Withdrawn'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132934482788626245)
,p_name=>'P6_APPLICANT_INTERVIEW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_prompt=>'Applicant Interview'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132934810516626245)
,p_name=>'P6_APPLICANT_ASESSMENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_prompt=>'Applicant Asessment'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132935271403626246)
,p_name=>'P6_APPLICANT_REJECTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_prompt=>'Applicant Rejected'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132935694179626246)
,p_name=>'P6_APPLICANT_PASSED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_prompt=>'Applicant Passed'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132936091301626246)
,p_name=>'P6_APPLICANT_ACCEPTED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_prompt=>'Applicant Accepted'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132936441284626248)
,p_name=>'P6_APPLICANT_DECLINED'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(132931173522626114)
,p_prompt=>'Applicant Declined'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(119262704124498539)
,p_name=>'Create new application'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(132931579455626120)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(149210915288714709)
,p_event_id=>wwv_flow_api.id(119262704124498539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (window.confirm("Are you sure you would like to create a new application?"))',
'{',
'}',
'else',
'{',
'    apex.da.cancelEvent.call(this);',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121903564034201721)
,p_event_id=>wwv_flow_api.id(119262704124498539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into application',
'(student_id,',
' job_id,',
' application_submitted,',
' application_withdrawn,',
' applicant_interview,',
' applicant_asessment,',
' applicant_passed,',
' applicant_rejected,',
' applicant_accepted,',
' applicant_declined)',
'values',
'(:P6_STUDENT_ID,',
' :P6_JOB_ID,',
' to_date(:P6_APPLICATION_SUBMITTED, ''YYYY-MM-DD''),',
' to_date(:P6_APPLICATION_WITHDRAWN, ''YYYY-MM-DD''),',
' to_date(:P6_APPLICANT_INTERVIEW, ''YYYY-MM-DD''),',
' to_date(:P6_APPLICANT_ASESSMENT, ''YYYY-MM-DD''),',
' to_date(:P6_APPLICANT_PASSED, ''YYYY-MM-DD''),',
' to_date(:P6_APPLICANT_REJECTED, ''YYYY-MM-DD''),',
' to_date(:P6_APPLICANT_ACCEPTED, ''YYYY-MM-DD''),',
' to_date(:P6_APPLICANT_DECLINED, ''YYYY-MM-DD''));'))
,p_attribute_02=>'P6_APPLICATION_SUBMITTED,P6_APPLICATION_WITHDRAWN,P6_APPLICANT_INTERVIEW,P6_APPLICANT_ASESSMENT,P6_APPLICANT_REJECTED,P6_APPLICANT_PASSED,P6_APPLICANT_ACCEPTED,P6_APPLICANT_DECLINED'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121905704351201743)
,p_event_id=>wwv_flow_api.id(119262704124498539)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (window.confirm("New application created. Click ''OK'' to view your applications or ''Cancel'' to go back to job vacancies"))',
'{',
'    window.location = ''f?p=&APP_ID.:23:&APP_SESSION.'';',
'}',
'else',
'{',
'    window.location = ''f?p=&APP_ID.:2:&APP_SESSION.'';',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(143199775600053002)
,p_name=>'Fetch student_id'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(143199894601053003)
,p_event_id=>wwv_flow_api.id(143199775600053002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_id into :P6_STUDENT_ID',
'from student',
'where UPPER(student_username)=UPPER(:APP_USER);'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'Vacancy Info'
,p_page_mode=>'NORMAL'
,p_step_title=>'Vacancy Info'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181211203224'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126475787511407932)
,p_plug_name=>'Vacancy Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(114704034275519462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(134528486170772711)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(126475787511407932)
,p_button_name=>'BackTop'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'< Back'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(134527433013772701)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(126475787511407932)
,p_button_name=>'BackBottom'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'< Back'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(134527701375772704)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(126475787511407932)
,p_button_name=>'CreateApplication'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'Create Application'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_JOB_ID:&P7_JOB_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126476251443407937)
,p_name=>'P7_SITE_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Site Name'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.site_name',
'from site s join job j on j.site_id=s.site_id',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126476371038407938)
,p_name=>'P7_JOB_DESCRIPTION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Job Description'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.job_description',
'from job j',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126476484612407939)
,p_name=>'P7_JOB_CONTACT_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Job Contact Number'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.job_contact_number',
'from job j',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126476539402407940)
,p_name=>'P7_JOB_CONTACT_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Contact Email'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.job_contact_email',
'from job j',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126476648678407941)
,p_name=>'P7_JOB_SALARY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Job Salary'
,p_pre_element_text=>'<b>£'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.job_salary',
'from job j',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126476713260407942)
,p_name=>'P7_COMPANY_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Company'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.company_name',
'from company c join site s on s.company_id=c.company_id',
'join job j on j.site_id=s.site_id',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126476888839407943)
,p_name=>'P7_JOB_TITLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Job Title'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.job_title',
'from job j',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126476958713407944)
,p_name=>'P7_JOB_START'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Job Start'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.job_start',
'from job j',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126477080663407945)
,p_name=>'P7_JOB_CLOSE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Job Close'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.job_close',
'from job j',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126477141671407946)
,p_name=>'P7_JOB_APPLICATION_METHOD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Job Application Method'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.job_application_method',
'from job j',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126477288076407947)
,p_name=>'P7_SITE_ADDRESS_LINE_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Site Address Line 1'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.site_address_line_1',
'from site s join job j on j.site_id=s.site_id',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126477379255407948)
,p_name=>'P7_SITE_ADDRESS_LINE_2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Site Address Line 2'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.site_address_line_2',
'from site s join job j on j.site_id=s.site_id',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126477455027407949)
,p_name=>'P7_SITE_ADDRESS_POSTCODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_prompt=>'Site Postcode'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.site_address_postcode',
'from site s join job j on j.site_id=s.site_id',
'where j.job_id=:P7_JOB_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134529562722772722)
,p_name=>'P7_JOB_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(126475787511407932)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'Login Page'
,p_alias=>'LOGIN_JQM_SMARTPHONE'
,p_page_mode=>'NORMAL'
,p_step_title=>'Apex817 Mobile Application - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(114702355585519432)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181210154416'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(122274542971468768)
,p_plug_name=>'Apex817 Mobile Application'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(114704034275519462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(122275771379468782)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(122274542971468768)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(122274996902468775)
,p_name=>'P13_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(122274542971468768)
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(122275328828468781)
,p_name=>'P13_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(122274542971468768)
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122276576529468796)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P13_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122276123189468793)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P13_USERNAME,',
'    p_password => :P13_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122277382676468796)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122276976288468796)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P13_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'Applications'
,p_page_mode=>'NORMAL'
,p_step_title=>'Applications'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181212031228'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135319986317673125)
,p_plug_name=>'Current Applications'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(114704252666519465)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.*,',
'       j.job_title,',
'       j.job_description,',
'       j.job_contact_number,',
'       j.job_contact_email,',
'       j.job_salary,',
'       j.job_start,',
'       j.job_close,',
'       j.job_application_method,',
'       s.site_name,',
'       s.site_address_line_1,',
'       s.site_address_line_2,',
'       s.site_address_postcode,',
'       c.company_name',
'  from application a',
'  join student on student.student_id=a.student_id',
'  join job j on j.job_id=a.job_id',
'  join site s on s.site_id=j.site_id',
'  join company c on c.company_id=s.company_id',
'  where (UPPER(j.job_title) like ''%''||UPPER(:P23_SEARCH)||''%'' or :P23_SEARCH IS NULL) and UPPER(student.student_username)=UPPER(:APP_USER)'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'DIVIDER:INSET'
,p_attribute_02=>'JOB_TITLE'
,p_attribute_06=>'COMPANY_NAME'
,p_attribute_14=>'APPLICATION_SUBMITTED'
,p_attribute_16=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:P24_APPLICATION_ID:&APPLICATION_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135320436627673126)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(135319986317673125)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'New Application'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,24::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121906252095201748)
,p_name=>'P23_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(135319986317673125)
,p_placeholder=>'Search by job title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'Application Info'
,p_page_mode=>'NORMAL'
,p_step_title=>'Application Info'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181212204142'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135310506408672992)
,p_plug_name=>'Application'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(114704034275519462)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121904329718201729)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(135310506408672992)
,p_button_name=>'CANCEL_TOP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135311039907673014)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(135310506408672992)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P24_APPLICATION_SUBMITTED'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135311265085673015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(135310506408672992)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135311151783673014)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(135310506408672992)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P24_APPLICATION_SUBMITTED'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134528670857772713)
,p_name=>'P24_APPLICANT_INTERVIEW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interview Date'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(applicant_interview, ''YYYY-MM-DD'')',
'from application',
'where application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134528786415772714)
,p_name=>'P24_APPLICANT_ASESSMENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Asessment Date'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(applicant_asessment, ''YYYY-MM-DD'')',
'from application',
'where application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134528825833772715)
,p_name=>'P24_APPLICANT_REJECTED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date of Rejection'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(applicant_rejected, ''YYYY-MM-DD'')',
'from application',
'where application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134528973701772716)
,p_name=>'P24_APPLICANT_PASSED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Passed'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(applicant_passed, ''YYYY-MM-DD'')',
'from application',
'where application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134529056960772717)
,p_name=>'P24_APPLICANT_ACCEPTED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Job Accepted'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(applicant_accepted, ''YYYY-MM-DD'')',
'from application',
'where application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134529111197772718)
,p_name=>'P24_APPLICANT_DECLINED'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Job Declined'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(applicant_declined, ''YYYY-MM-DD'')',
'from application',
'where application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135313689275673093)
,p_name=>'P24_APPLICATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135314028631673098)
,p_name=>'P24_STUDENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_id',
'from student',
'where UPPER(student_username)=UPPER(:APP_USER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135314697918673103)
,p_name=>'P24_JOB_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job_id',
'from application',
'where application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135315067437673103)
,p_name=>'P24_APPLICATION_SUBMITTED'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date of Application Submission'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(application_submitted, ''YYYY-MM-DD'')',
'from application',
'where application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135315423766673104)
,p_name=>'P24_APPLICATION_WITHDRAWN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date of Application Withdrawal'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(application_withdrawn, ''YYYY-MM-DD'')',
'from application',
'where application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135480307572810979)
,p_name=>'P24_JOB_TITLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Title'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job.job_title',
'from job join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135500163494844400)
,p_name=>'P24_JOB_DESCRIPTION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Description'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job.job_description',
'from job join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135502974275850146)
,p_name=>'P24_JOB_CONTACT_NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Contact Number'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job.job_contact_number',
'from job join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135505317541854470)
,p_name=>'P24_JOB_CONTACT_EMAIL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Contact Email'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job.job_contact_email',
'from job join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135510083143867490)
,p_name=>'P24_JOB_SALARY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Salary'
,p_pre_element_text=>'<b>£'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job.job_salary',
'from job join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135511976622871215)
,p_name=>'P24_JOB_START'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Start'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job.job_start',
'from job join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135512284908874250)
,p_name=>'P24_JOB_CLOSE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Close'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job.job_close',
'from job join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135518370174879932)
,p_name=>'P24_JOB_APPLICATION_METHOD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Application Method'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job.job_application_method',
'from job join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135557867613890390)
,p_name=>'P24_SITE_NAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site Name'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select site.site_name',
'from site join job on job.site_id=site.site_id',
'join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135559212093900125)
,p_name=>'P24_SITE_ADDRESS_LINE_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site Address 1'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select site.site_address_line_1',
'from site join job on job.site_id=site.site_id',
'join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135562376574903862)
,p_name=>'P24_SITE_ADDRESS_LINE_2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site Address 2'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select site.site_address_line_2',
'from site join job on job.site_id=site.site_id',
'join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135567743904907295)
,p_name=>'P24_SITE_POSTCODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site Postcode'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select site.site_address_postcode',
'from site join job on job.site_id=site.site_id',
'join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135570041475918904)
,p_name=>'P24_COMPANY_NAME'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(135310506408672992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company'
,p_pre_element_text=>'<b>'
,p_post_element_text=>'</b>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select company.company_name',
'from company join site on site.company_id=company.company_id',
'join job on job.site_id=site.site_id',
'join application on application.job_id=job.job_id',
'where application.application_id=:P24_APPLICATION_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121903970027201725)
,p_name=>'Delete from database'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(135311151783673014)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(149210705819714707)
,p_event_id=>wwv_flow_api.id(121903970027201725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (window.confirm("Are you sure you would like to delete this application?"))',
'{',
'}',
'else',
'{',
'    apex.da.cancelEvent.call(this);',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121904060276201726)
,p_event_id=>wwv_flow_api.id(121903970027201725)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Use database application delete trigger to archive application, instead of dropping row */',
'delete from application',
'where application_id=:P24_APPLICATION_ID;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121905864695201744)
,p_event_id=>wwv_flow_api.id(121903970027201725)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alert(''Your application has been deleted. You will be returned to the application overview.'');',
'window.location = ''f?p=&APP_ID.:23:&APP_SESSION.'';'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121904141453201727)
,p_name=>'Update database'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(135311039907673014)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(149210834494714708)
,p_event_id=>wwv_flow_api.id(121904141453201727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (window.confirm("Are you sure you would like to save this application?"))',
'{',
'}',
'else',
'{',
'    apex.da.cancelEvent.call(this);',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121904295006201728)
,p_event_id=>wwv_flow_api.id(121904141453201727)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update application',
'set',
'    application_submitted = to_date(:P24_APPLICATION_SUBMITTED, ''YYYY-MM-DD''),',
'    application_withdrawn = to_date(:P24_APPLICATION_WITHDRAWN, ''YYYY-MM-DD''),',
'    applicant_interview = to_date(:P24_APPLICANT_INTERVIEW, ''YYYY-MM-DD''),',
'    applicant_asessment = to_date(:P24_APPLICANT_ASESSMENT, ''YYYY-MM-DD''),',
'    applicant_passed = to_date(:P24_APPLICANT_PASSED, ''YYYY-MM-DD''),',
'    applicant_rejected = to_date(:P24_APPLICANT_REJECTED, ''YYYY-MM-DD''),',
'    applicant_accepted = to_date(:P24_APPLICANT_ACCEPTED, ''YYYY-MM-DD''),',
'    applicant_declined = to_date(:P24_APPLICANT_DECLINED, ''YYYY-MM-DD'')',
'where application_id = :P24_APPLICATION_ID;'))
,p_attribute_02=>'P24_APPLICATION_SUBMITTED,P24_APPLICATION_WITHDRAWN,P24_APPLICANT_INTERVIEW,P24_APPLICANT_ASESSMENT,P24_APPLICANT_REJECTED,P24_APPLICANT_PASSED,P24_APPLICANT_ACCEPTED,P24_APPLICANT_DECLINED'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121905510076201741)
,p_event_id=>wwv_flow_api.id(121904141453201727)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert(''Your application has been updated.'');'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'Student'
,p_page_mode=>'NORMAL'
,p_step_title=>'Student'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181212030259'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(141364888182103912)
,p_plug_name=>'Your Account'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(114704252666519465)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student.*',
'  from student',
'  where UPPER(student_username)=UPPER(:APP_USER)'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'INSET'
,p_attribute_02=>'STUDENT_FIRST_NAME'
,p_attribute_06=>'STUDENT_USERNAME'
,p_attribute_16=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP,26:P26_STUDENT_ID:&STUDENT_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119261979380498531)
,p_name=>'P25_PARAGRAPH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(141364888182103912)
,p_prompt=>'View and make changes to your account (your password will be visible):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(114710444086519604)
,p_name=>'Student Info'
,p_page_mode=>'NORMAL'
,p_step_title=>'Student Info'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX817'
,p_last_upd_yyyymmddhh24miss=>'20181212160229'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(141342788460103629)
,p_plug_name=>'Student'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(114704034275519462)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(141343334995103642)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(141342788460103629)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(141343630091103645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(141342788460103629)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114709411350519507)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121904826861201734)
,p_name=>'P26_STUDENT_TERM_ADDRESS_LINE_2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Term Address Line 2'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_term_address_line_2',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141347172290103804)
,p_name=>'P26_STUDENT_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID (Student)'
,p_source=>'STUDENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'ID (primary key) for the student'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141347950585103820)
,p_name=>'P26_STUDENT_USERNAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_username',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141348346482103826)
,p_name=>'P26_STUDENT_PASSWORD'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_password',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141348714660103826)
,p_name=>'P26_STUDENT_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_first_name',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141349145920103826)
,p_name=>'P26_STUDENT_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_last_name',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141349593572103828)
,p_name=>'P26_STUDENT_DATE_OF_BIRTH'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Of Birth'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(student_date_of_birth, ''YYYY-MM-DD'')',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141349944017103828)
,p_name=>'P26_STUDENT_EMAIL'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_email',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141350307985103829)
,p_name=>'P26_STUDENT_HOME_ADDRESS_LINE_1'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Home Address Line 1'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_home_address_line_1',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141350706543103834)
,p_name=>'P26_STUDENT_HOME_ADDRESS_LINE_2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Home Address Line 2'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_home_address_line_2',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141351163939103835)
,p_name=>'P26_STUDENT_HOME_POSTCODE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Home Postcode'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_home_postcode',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141351501734103837)
,p_name=>'P26_STUDENT_TERM_ADDRESS_LINE_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Term Address Line 1'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_term_address_line_1',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141351979147103837)
,p_name=>'P26_STUDENT_TERM_POSTCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Term Postcode'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_term_postcode',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141352355954103837)
,p_name=>'P26_STUDENT_MOBILE_NUMBER'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile Number'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_mobile_number',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141352721241103837)
,p_name=>'P26_STUDENT_HOME_NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Home Number'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_home_number',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141353197468103839)
,p_name=>'P26_STUDENT_ALTERNATIVE_NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alternative Number'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_alternative_number',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141353957370103840)
,p_name=>'P26_STUDENT_CV_SUBMIT_DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CV Submit Date'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(student_cv_submit_date, ''YYYY-MM-DD'')',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141354325268103840)
,p_name=>'P26_STUDENT_CV_APPROVAL_DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CV Approval Date'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(student_cv_approval_date, ''YYYY-MM-DD'')',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705089900519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141354701382103840)
,p_name=>'P26_STUDENT_PREFERENCE_LOCATION'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Preference Location'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_preference_location',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141355164042103842)
,p_name=>'P26_STUDENT_PREFERENCE_JOB_TYPE'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Preference Job Type'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_preference_job_type',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141355563990103842)
,p_name=>'P26_STUDENT_PREFERENCE_OTHER'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(141342788460103629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Preference Other'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select student_preference_other',
'from student',
'where student_id=:P26_STUDENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(114705150804519492)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121904650720201732)
,p_name=>'Update database'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(141343334995103642)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(149211082738714710)
,p_event_id=>wwv_flow_api.id(121904650720201732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (window.confirm("Are you sure you would like to update your account?"))',
'{',
'}',
'else',
'{',
'    apex.da.cancelEvent.call(this);',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121904773625201733)
,p_event_id=>wwv_flow_api.id(121904650720201732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update student',
'set',
'    student_username = :P26_STUDENT_USERNAME,',
'    student_password = :P26_STUDENT_PASSWORD,',
'    student_first_name = :P26_STUDENT_FIRST_NAME,',
'    student_last_name = :P26_STUDENT_LAST_NAME,',
'    student_date_of_birth = to_date(:P26_STUDENT_DATE_OF_BIRTH, ''YYYY-MM-DD''),',
'    student_email = :P26_STUDENT_EMAIL,',
'    student_home_address_line_1 = :P26_STUDENT_HOME_ADDRESS_LINE_1,',
'    student_home_address_line_2 = :P26_STUDENT_HOME_ADDRESS_LINE_2,',
'    student_home_postcode = :P26_STUDENT_HOME_POSTCODE,',
'    student_term_address_line_1 = :P26_STUDENT_TERM_ADDRESS_LINE_1,',
'    student_term_address_line_2 = :P26_STUDENT_TERM_ADDRESS_LINE_2,',
'    student_term_postcode = :P26_STUDENT_TERM_POSTCODE,',
'    student_mobile_number = :P26_STUDENT_MOBILE_NUMBER,',
'    student_home_number = :P26_STUDENT_HOME_NUMBER,',
'    student_alternative_number = :P26_STUDENT_ALTERNATIVE_NUMBER,',
'    student_cv_submit_date = to_date(:P26_STUDENT_CV_SUBMIT_DATE, ''YYYY-MM-DD''),',
'    student_cv_approval_date = to_date(:P26_STUDENT_CV_APPROVAL_DATE, ''YYYY-MM-DD''),',
'    student_preference_location = :P26_STUDENT_PREFERENCE_LOCATION,',
'    student_preference_job_type = :P26_STUDENT_PREFERENCE_JOB_TYPE,',
'    student_preference_other = :P26_STUDENT_PREFERENCE_OTHER',
'where student_id = :P26_STUDENT_ID;'))
,p_attribute_02=>'P26_STUDENT_USERNAME,P26_STUDENT_PASSWORD,P26_STUDENT_FIRST_NAME,P26_STUDENT_LAST_NAME,P26_STUDENT_DATE_OF_BIRTH,P26_STUDENT_EMAIL,P26_STUDENT_HOME_ADDRESS_LINE_1,P26_STUDENT_HOME_ADDRESS_LINE_2,P26_STUDENT_HOME_POSTCODE,P26_STUDENT_TERM_ADDRESS_LINE'
||'_1,P26_STUDENT_TERM_ADDRESS_LINE_2,P26_STUDENT_TERM_POSTCODE,P26_STUDENT_MOBILE_NUMBER,P26_STUDENT_HOME_NUMBER,P26_STUDENT_ALTERNATIVE_NUMBER,P26_STUDENT_CV_SUBMIT_DATE,P26_STUDENT_CV_APPROVAL_DATE,P26_STUDENT_PREFERENCE_LOCATION,P26_STUDENT_PREFEREN'
||'CE_JOB_TYPE,P26_STUDENT_PREFERENCE_OTHER'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121905922026201745)
,p_event_id=>wwv_flow_api.id(121904650720201732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert(''Your account has been updated'');'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(122372714456745131)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

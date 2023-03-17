prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 35405
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>229530610947369368
,p_default_application_id=>35405
,p_default_id_offset=>231456681126401453
,p_default_owner=>'WKSP_UNIVESPPI'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(34219733624513841645)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(34219626987612841597)
,p_default_dialog_template=>wwv_flow_imp.id(34219622757649841595)
,p_error_template=>wwv_flow_imp.id(34219614808130841591)
,p_printer_friendly_template=>wwv_flow_imp.id(34219626987612841597)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(34219614808130841591)
,p_default_button_template=>wwv_flow_imp.id(34219730802335841643)
,p_default_region_template=>wwv_flow_imp.id(34219665707554841613)
,p_default_chart_template=>wwv_flow_imp.id(34219665707554841613)
,p_default_form_template=>wwv_flow_imp.id(34219665707554841613)
,p_default_reportr_template=>wwv_flow_imp.id(34219665707554841613)
,p_default_tabform_template=>wwv_flow_imp.id(34219665707554841613)
,p_default_wizard_template=>wwv_flow_imp.id(34219665707554841613)
,p_default_menur_template=>wwv_flow_imp.id(34219675171744841617)
,p_default_listr_template=>wwv_flow_imp.id(34219665707554841613)
,p_default_irr_template=>wwv_flow_imp.id(34219663827714841612)
,p_default_report_template=>wwv_flow_imp.id(34219695803857841626)
,p_default_label_template=>wwv_flow_imp.id(34219728370103841642)
,p_default_menu_template=>wwv_flow_imp.id(34219732255248841644)
,p_default_calendar_template=>wwv_flow_imp.id(34219732315439841644)
,p_default_list_template=>wwv_flow_imp.id(34219712249382841634)
,p_default_nav_list_template=>wwv_flow_imp.id(34219724059152841640)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(34219724059152841640)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(34219718636501841637)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(34219635726215841601)
,p_default_dialogr_template=>wwv_flow_imp.id(34219634747259841600)
,p_default_option_label=>wwv_flow_imp.id(34219728370103841642)
,p_default_required_label=>wwv_flow_imp.id(34219729618031841642)
,p_default_navbar_list_template=>wwv_flow_imp.id(34219718257627841637)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.1/')
,p_files_version=>68
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/

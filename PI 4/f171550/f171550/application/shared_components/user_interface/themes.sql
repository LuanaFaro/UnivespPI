prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 171550
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.4'
,p_default_workspace_id=>229530610947369368
,p_default_application_id=>171550
,p_default_id_offset=>0
,p_default_owner=>'WKSP_UNIVESPPI'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(69137372560696422131)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(69137220274831422064)
,p_default_dialog_template=>wwv_flow_imp.id(69137215041946422062)
,p_error_template=>wwv_flow_imp.id(69137205024525422057)
,p_printer_friendly_template=>wwv_flow_imp.id(69137220274831422064)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(69137205024525422057)
,p_default_button_template=>wwv_flow_imp.id(69137369599403422129)
,p_default_region_template=>wwv_flow_imp.id(69137296463532422097)
,p_default_chart_template=>wwv_flow_imp.id(69137296463532422097)
,p_default_form_template=>wwv_flow_imp.id(69137296463532422097)
,p_default_reportr_template=>wwv_flow_imp.id(69137296463532422097)
,p_default_tabform_template=>wwv_flow_imp.id(69137296463532422097)
,p_default_wizard_template=>wwv_flow_imp.id(69137296463532422097)
,p_default_menur_template=>wwv_flow_imp.id(69137308810043422102)
,p_default_listr_template=>wwv_flow_imp.id(69137296463532422097)
,p_default_irr_template=>wwv_flow_imp.id(69137286631746422093)
,p_default_report_template=>wwv_flow_imp.id(69137334569295422112)
,p_default_label_template=>wwv_flow_imp.id(69137367026340422127)
,p_default_menu_template=>wwv_flow_imp.id(69137371106230422129)
,p_default_calendar_template=>wwv_flow_imp.id(69137371209951422130)
,p_default_list_template=>wwv_flow_imp.id(69137350982782422119)
,p_default_nav_list_template=>wwv_flow_imp.id(69137362727158422125)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(69137362727158422125)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(69137357361363422122)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(69137233266689422070)
,p_default_dialogr_template=>wwv_flow_imp.id(69137230390770422069)
,p_default_option_label=>wwv_flow_imp.id(69137367026340422127)
,p_default_required_label=>wwv_flow_imp.id(69137368322787422128)
,p_default_navbar_list_template=>wwv_flow_imp.id(69137356999239422122)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.2/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/

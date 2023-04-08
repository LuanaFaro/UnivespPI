prompt --application/create_application
begin
--   Manifest
--     FLOW: 171550
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.4'
,p_default_workspace_id=>229530610947369368
,p_default_application_id=>171550
,p_default_id_offset=>0
,p_default_owner=>'WKSP_UNIVESPPI'
);
wwv_flow_imp.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_UNIVESPPI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Projeto + Vida')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'PROJETO-VIDA')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'77862282E5CFE93F79F0F9F2D884FC0643D7C16D99467A2CC07D8C27FC2B4261'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_imp.id(69137193307464422050)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Projeto + Vida'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Projeto + Vida'
,p_last_updated_by=>'2008214@ALUNO.UNIVESP.BR'
,p_last_upd_yyyymmddhh24miss=>'20230408195059'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>7
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
);
wwv_flow_imp.component_end;
end;
/

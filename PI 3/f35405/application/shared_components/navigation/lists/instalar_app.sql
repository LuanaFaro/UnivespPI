prompt --application/shared_components/navigation/lists/instalar_app
begin
--   Manifest
--     LIST: Instalar App
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>229530610947369368
,p_default_application_id=>35405
,p_default_id_offset=>231456681126401453
,p_default_owner=>'WKSP_UNIVESPPI'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14503276130345584155)
,p_name=>'Instalar App'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14503276340169584157)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Instalar App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/navigation/lists/install_app
begin
--   Manifest
--     LIST: Install App
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
 p_id=>wwv_flow_imp.id(14492378212373722575)
,p_name=>'Install App'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14492378465668722576)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'javascript: #action$a-pwa-install;'
,p_list_item_icon=>'fa-cloud-arrow-down'
,p_list_text_02=>'pwa-install-btn'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

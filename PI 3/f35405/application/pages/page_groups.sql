prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 35405
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>229530610947369368
,p_default_application_id=>35405
,p_default_id_offset=>231456681126401453
,p_default_owner=>'WKSP_UNIVESPPI'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(34219758411083841660)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/

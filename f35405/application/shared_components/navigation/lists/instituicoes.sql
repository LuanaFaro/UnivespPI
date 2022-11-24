prompt --application/shared_components/navigation/lists/instituicoes
begin
--   Manifest
--     LIST: Instituicoes
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
 p_id=>wwv_flow_imp.id(10076437286694989648)
,p_name=>'Instituicoes'
,p_list_type=>'SQL_QUERY'
,p_list_query=>'select * from INSTITUICOES'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/

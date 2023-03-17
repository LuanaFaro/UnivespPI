prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>229530610947369368
,p_default_application_id=>35405
,p_default_id_offset=>231456681126401453
,p_default_owner=>'WKSP_UNIVESPPI'
);
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>unistr('Instala\00E7\00E3o')
,p_alias=>unistr('INSTALA\00C7\00C3O111')
,p_step_title=>unistr('Instala\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'06'
,p_last_updated_by=>'2008214@ALUNO.UNIVESP.BR'
,p_last_upd_yyyymmddhh24miss=>'20221111001325'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492527066011460711)
,p_plug_name=>'Instalar Aplicativo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(14503276130345584155)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(34219712249382841634)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'Para instalar o aplicativo clique no link abaixo: '
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492527628330460717)
,p_plug_name=>'1'
,p_parent_plug_id=>wwv_flow_imp.id(14492527066011460711)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219634747259841600)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_FILES#img_1.jpeg" style="width:100%;height:100%;max-width:200px">',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492527745607460718)
,p_plug_name=>'2'
,p_parent_plug_id=>wwv_flow_imp.id(14492527066011460711)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219634747259841600)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_FILES#img2.jpeg" style="width:100%;height:100%;max-width:200px">',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492527890680460719)
,p_plug_name=>'3'
,p_parent_plug_id=>wwv_flow_imp.id(14492527066011460711)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219634747259841600)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_FILES#img3.jpeg" style="width:100%;height:100%;max-width:200px">',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14492527332785460714)
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp.component_end;
end;
/

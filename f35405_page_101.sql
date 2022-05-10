prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>229530610947369368
,p_default_application_id=>35405
,p_default_id_offset=>231456681126401453
,p_default_owner=>'WKSP_UNIVESPPI'
);
end;
/
 
prompt APPLICATION 35405 - Projeto DoAção
--
-- Application Export:
--   Application:     35405
--   Name:            Projeto DoAção
--   Date and Time:   23:19 Tuesday May 10, 2022
--   Exported By:     2008214@ALUNO.UNIVESP.BR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 101
--   Manifest End
--   Version:         22.1.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00101
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>101);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_imp.id(34219755303665841654)
,p_name=>unistr('DoA\00E7\00E3o')
,p_alias=>unistr('DOA\00C7\00C3O')
,p_step_title=>unistr('DoA\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body{',
'    background-color: #d5d5d5;',
'}',
'',
'.t-Header-branding {',
'    position: relative;',
'    display: grid;',
'    grid-template-columns: auto auto 1fr auto;',
'    grid-template-areas: "controls logo search navbar";',
'    align-items: center;',
'    gap: var(--ut-header-item-spacing, 8px);',
'    padding-top: var(--ut-header-padding-y, var(--ut-header-item-spacing, 8px));',
'    padding-bottom: var(--ut-header-padding-y, var(--ut-header-item-spacing, 8px));',
'    padding-left: var(--ut-header-padding-x, var(--ut-header-item-spacing, 8px));',
'    padding-right: var(--ut-header-padding-x, var(--ut-header-item-spacing, 8px));',
'    background-color: #3a5781;',
'    box-shadow: var(--ut-header-box-shadow);',
'    color: var(--ut-header-text-color);',
'    min-height: var(--ut-header-height);',
'}',
'',
'.t-Footer {',
'    grid-area: content-footer;',
'    display: grid;',
'    grid-template-areas:',
'        "footer-body"',
'        "footer-top";',
'    gap: var(--ut-footer-item-spacing, 16px);',
'    padding: var(--ut-footer-padding-y, 16px) var(--ut-footer-padding-x, 16px);',
'    background-color: #3a5781;',
'    color: var(--ut-footer-text-color);',
'    border-width: 0;',
'    border-top-width: var(--ut-footer-border-width, 1px);',
'    border-style: solid;',
'    border-color: var(--ut-footer-border-color);',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_deep_linking=>'N'
,p_rejoin_existing_sessions=>'N'
,p_page_component_map=>'18'
,p_last_updated_by=>'2008214@ALUNO.UNIVESP.BR'
,p_last_upd_yyyymmddhh24miss=>'20220505122126'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10068628442482654168)
,p_plug_name=>unistr('DoA\00E7\00E3o')
,p_region_name=>'capa'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_FILES#capa.jpeg" style="width:100%;height:380px;">',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10068630024753654184)
,p_plug_name=>unistr('Institui\00E7\00F5es')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10068628914160654173)
,p_plug_name=>unistr('Institui\00E7\00F5es')
,p_region_name=>'instituicoes'
,p_parent_plug_id=>wwv_flow_imp.id(10068630024753654184)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219646122204841605)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.STRNOME,',
'       a.STRLOUGADOURO,',
'       a.INTNUMERO,',
'       a.BAIRRO,',
'       a.INTTELEFONE,',
'       a.STREMAIL,',
'       b.STRMUNICIPIO,',
'       (select  LISTAGG(d.STRITEM, ''</br>'')',
'         WITHIN GROUP (ORDER BY d.STRITEM) "Emp_list"',
'         from INSTITENSACEITOS c, ITENS d',
'        where c.FKEINSTITUICOES = a.id',
'        and c.FKEITENS = d.id)as itens',
'  from INSTITUICOES a, MUNICIPIO b',
'  where ',
'    a.FKEMUNICIPIO = b.id',
'    and b.id = nvl(:P101_MUNICIPIO,b.id)',
'    and (select  LISTAGG(lpad(d.id,10,0), ''</br>'')',
'         WITHIN GROUP (ORDER BY d.STRITEM) "Emp_list"',
'         from INSTITENSACEITOS c, ITENS d',
'        where c.FKEINSTITUICOES = a.id',
'        and c.FKEITENS = d.id) like ''%'' || nvl(:P101_ITENS,''%'') || ''%'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P101_MUNICIPIO,P101_ITENS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Institui\00E7\00F5es')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10068629002883654174)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LUANA'
,p_internal_uid=>9837172321757252721
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068629127146654175)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068629245468654176)
,p_db_column_name=>'STRNOME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Institui\00E7\00E3o')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068629365894654177)
,p_db_column_name=>'STRLOUGADOURO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Lougradouro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068629412046654178)
,p_db_column_name=>'INTNUMERO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068629494753654179)
,p_db_column_name=>'BAIRRO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Bairro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068629643305654180)
,p_db_column_name=>'INTTELEFONE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Telefone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068629747658654181)
,p_db_column_name=>'STREMAIL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068629845453654182)
,p_db_column_name=>'STRMUNICIPIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Munic\00EDpio')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068629892064654183)
,p_db_column_name=>'ITENS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Itens Aceitos'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10076483891627006940)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'98450273'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_view_mode=>'REPORT'
,p_report_columns=>'ID:STRNOME:STRLOUGADOURO:INTNUMERO:BAIRRO:INTTELEFONE:STREMAIL:STRMUNICIPIO:ITENS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10068630138087654185)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_imp.id(10068630024753654184)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(34219646122204841605)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10068631493889654199)
,p_plug_name=>'Sobre'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('O Projeto DoA\00E7\00E3o \00E9 uma iniciativa dos graduandos em computa\00E7\00E3o da Universidade Virtual do Estado '),
unistr('de S\00E3o Paulo (UNIVESP) - Polo de Caraguatatuba, com o objetivo de amenizar a dificuldade das pessoas'),
unistr('em realizar doa\00E7\00F5es, agrupando informa\00E7\00F5es de institui\00E7\00F5es que aceitam doa\00E7\00F5es, desta maneira o doador pode '),
'encontrar com mais facilidade onde doar seus pertences.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10068630589640654190)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10068630138087654185)
,p_button_name=>'PESQUISAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(34219730962669841643)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pesquisar'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10068631114290654195)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10068630138087654185)
,p_button_name=>'Limpar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(34219730802335841643)
,p_button_image_alt=>'Limpar Filtros'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10068630267792654186)
,p_name=>'P101_MUNICIPIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10068630138087654185)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Munic\00EDpio')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STRMUNICIPIO as display_value, ID as return_value ',
'from MUNICIPIO',
'order by STRMUNICIPIO'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(34219728370103841642)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10068630333777654187)
,p_name=>'P101_ITENS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10068630138087654185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    STRITEM as display_value',
'    ,lpad(id,10,0) as return_value',
'from itens'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(34219728370103841642)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10068630759270654191)
,p_name=>'Pesquisar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10068630589640654190)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10068630872184654192)
,p_event_id=>wwv_flow_imp.id(10068630759270654191)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10068628914160654173)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10478911994252471559)
,p_event_id=>wwv_flow_imp.id(10068630759270654191)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").find(".a-Collapsible").collapsible("expand");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10068631233517654196)
,p_name=>'Limpa Filtros'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10068631114290654195)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10068631327761654197)
,p_event_id=>wwv_flow_imp.id(10068631233517654196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_MUNICIPIO,P101_ITENS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10068631461929654198)
,p_event_id=>wwv_flow_imp.id(10068631233517654196)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10068628914160654173)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

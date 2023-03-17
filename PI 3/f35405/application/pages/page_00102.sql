prompt --application/pages/page_00102
begin
--   Manifest
--     PAGE: 00102
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
 p_id=>102
,p_name=>unistr('Projeto Doa\00E7\00E3o')
,p_alias=>unistr('PROJETO-DOA\00C7\00C3O')
,p_step_title=>unistr('Projeto DoA\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body{',
'    background-color: #e9e9e9;',
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
,p_page_component_map=>'23'
,p_last_updated_by=>'2008214@ALUNO.UNIVESP.BR'
,p_last_upd_yyyymmddhh24miss=>'20220515204042'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(666864704971967222)
,p_plug_name=>unistr('iNSTITUI\00C7\00D5ES')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219637934656841602)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.STRNOME,',
'       a.STRLOUGADOURO || '', ''||  a.INTNUMERO || '', '' || a.BAIRRO || '' - ''  || b.STRMUNICIPIO AS ENDERECO,',
'       ''Telefone: '' || a.INTTELEFONE || '' Email: '' || a.STREMAIL AS COMUNICACAO,',
'       (select  LISTAGG(d.STRITEM, '', '')',
'         WITHIN GROUP (ORDER BY d.STRITEM) "Emp_list"',
'         from INSTITENSACEITOS c, ITENS d',
'        where c.FKEINSTITUICOES = a.id',
'        and c.FKEITENS = d.id)as itens',
'  from INSTITUICOES a, MUNICIPIO b',
'  where ',
'    a.FKEMUNICIPIO = b.id',
'    --and b.id = nvl(:P102_MUNICIPIO,b.id)',
'    and (select  LISTAGG(lpad(d.id,10,0), '', '')',
'         WITHIN GROUP (ORDER BY d.STRITEM) "Emp_list"',
'         from INSTITENSACEITOS c, ITENS d',
'        where c.FKEINSTITUICOES = a.id',
'        and c.FKEITENS = d.id) like ''%'' || nvl(:P102_ITENS,''%'') || ''%'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P102_ITENS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(666864876170967223)
,p_region_id=>wwv_flow_imp.id(666864704971967222)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'STRNOME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'ENDERECO'
,p_body_adv_formatting=>false
,p_body_column_name=>'ITENS'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'COMUNICACAO'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-heartbeat'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20912485030866609586)
,p_plug_name=>unistr('DoA\00E7\00E3o')
,p_region_name=>'capa'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_FILES#capa.png" style="width:100%;height:380px;">',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20912486613137609602)
,p_plug_name=>unistr('Institui\00E7\00F5es')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20912486726471609603)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_imp.id(20912486613137609602)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219634747259841600)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20912488082273609617)
,p_plug_name=>'Sobre'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(10843862014512955431)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(20912486726471609603)
,p_button_name=>'PESQUISAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(34219730962669841643)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pesquisar'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10843862479192955432)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(20912486726471609603)
,p_button_name=>'Limpar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--gapLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(34219730802335841643)
,p_button_image_alt=>'Limpar Filtros'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666864102009967216)
,p_name=>'P102_BAIRRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20912486726471609603)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666864288397967217)
,p_name=>'P102_CIDADE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20912486726471609603)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666864691998967221)
,p_name=>'P102_BAIRRO_CIDADE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20912486726471609603)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Filtro por:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Bairro;1,Cidade;2'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(34219728370103841642)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10843862881904955432)
,p_name=>'P102_ITENS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20912486726471609603)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Itens Aceitos'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    STRITEM as display_value',
'    ,lpad(id,10,0) as return_value',
'from itens'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(10843863263042955432)
,p_name=>'P102_CEP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20912486726471609603)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CEP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(34219728370103841642)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10843863935772955433)
,p_name=>'Pesquisar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10843862014512955431)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10843864457498955433)
,p_event_id=>wwv_flow_imp.id(10843863935772955433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(666864704971967222)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10843865322461955434)
,p_name=>'Limpa Filtros'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10843862479192955432)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10843865883549955434)
,p_event_id=>wwv_flow_imp.id(10843865322461955434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P102_ITENS,P102_CEP'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666864376314967218)
,p_name=>'set_values'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_CEP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666864432877967219)
,p_event_id=>wwv_flow_imp.id(666864376314967218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_json_api clob;',
'    v_cep varchar2(8);',
'begin',
'    -- limpa',
'    apex_web_service.g_request_headers.delete();',
'',
'    v_cep := :P102_CEP;',
'    ',
'    v_json_api := apex_web_service.make_rest_request(',
'        p_url => ''https://viacep.com.br/ws/''||v_cep||''/json/'',',
'        p_http_method => ''GET''',
'    );',
'',
'    for cur in (',
'        select ',
'         bairro',
'        , localidade',
'',
'        from json_table (',
'            v_json_api format json, ''$''columns(',
'                 bairro varchar2(100) path ''$.bairro''',
'                , localidade varchar2(100) path ''$.localidade''',
'',
'            )',
'        )',
'    ) loop',
'        :P102_BAIRRO          := cur.bairro;',
'        :P102_CIDADE  := cur.localidade;',
'    end loop;',
'exception ',
'    when others then',
'        apex_error.add_error (',
'            p_message          => ''Erro ao requisitar CEP - ''|| sqlerrm,',
'            p_display_location => apex_error.c_inline_in_notification );',
'end;'))
,p_attribute_02=>'P102_CEP'
,p_attribute_03=>'P102_BAIRRO,P102_CIDADE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

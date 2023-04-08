prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.4'
,p_default_workspace_id=>229530610947369368
,p_default_application_id=>171550
,p_default_id_offset=>0
,p_default_owner=>'WKSP_UNIVESPPI'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'PROJETO-MAIS-VIDA'
,p_step_title=>'Projeto + Vida'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.card-one {',
'    background-color: #afa331;',
'}',
'',
'.card-two {',
'    background-color: #665F24;',
'}',
'',
'.card-three {',
'    background-color: #b6a406;',
'}',
'',
'.card-four {',
'    background-color: #a79922;',
'}',
'',
'.card-five {',
'    background-color: #CCBF47;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'2008214@ALUNO.UNIVESP.BR'
,p_last_upd_yyyymmddhh24miss=>'20230408195059'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492528071589460721)
,p_plug_name=>'Projeto + Vida'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69137230390770422069)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_FILES#image.png" style="width:100%;height:100%;">',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492529570565460736)
,p_plug_name=>'Header'
,p_parent_plug_id=>wwv_flow_imp.id(14492528071589460721)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69137230390770422069)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492528269791460723)
,p_plug_name=>'CARD 1'
,p_parent_plug_id=>wwv_flow_imp.id(14492529570565460736)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(69137237526221422072)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(VALOR,''999G999G999G999G999G999G990'') AS VALOR',
'  FROM PI4_IND_MORTALIDADE_INFANTIL ',
' WHERE PAIS      = :P1_PAIS ',
'   AND ANO       = :P1_ANO',
'   AND INDICADOR = ''Deaths 1-59 months''',
'   AND GENERO    = ''Total'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P1_ANO,P1_PAIS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14492528703628460728)
,p_region_id=>wwv_flow_imp.id(14492528269791460723)
,p_layout_type=>'ROW'
,p_card_css_classes=>'card-one'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1><span style="color:#FFFFFF">&VALOR.</span></h1>',
''))
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>unistr('<p><span style="color:#FFFFFF">Mortes de crian\00E7as com idade entre 1-59 meses</span></p>')
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492528882166460729)
,p_plug_name=>'CARD 4'
,p_parent_plug_id=>wwv_flow_imp.id(14492529570565460736)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69137237526221422072)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(VALOR,''999G999G999G999G999G999G990'') AS VALOR',
'  FROM PI4_IND_MORTALIDADE_INFANTIL ',
' WHERE PAIS      = :P1_PAIS',
'   AND ANO       = :P1_ANO',
'   AND INDICADOR = ''Deaths aged 10 to 14''',
'   AND GENERO    = ''Total'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P1_ANO,P1_PAIS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14492528950188460730)
,p_region_id=>wwv_flow_imp.id(14492528882166460729)
,p_layout_type=>'ROW'
,p_card_css_classes=>'card-four'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1><span style="color:#FFFFFF">&VALOR.</span></h1>',
''))
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>unistr('<p><span style="color:#FFFFFF">Mortes de crian\00E7as com idade entre 10-14 anos</span></p>')
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492529010511460731)
,p_plug_name=>'CARD 2'
,p_parent_plug_id=>wwv_flow_imp.id(14492529570565460736)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69137237526221422072)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(VALOR,''999G999G999G999G999G999G990'') AS VALOR',
'  FROM PI4_IND_MORTALIDADE_INFANTIL ',
' WHERE PAIS      = :P1_PAIS',
'   AND ANO       = :P1_ANO',
'   AND INDICADOR = ''Child deaths (aged 1-4 years)''',
'   AND GENERO    = ''Total'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P1_ANO,P1_PAIS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14492529169585460732)
,p_region_id=>wwv_flow_imp.id(14492529010511460731)
,p_layout_type=>'ROW'
,p_card_css_classes=>'card-two'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1><span style="color:#FFFFFF">&VALOR.</span></h1>',
''))
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>unistr('<p><span style="color:#FFFFFF">Mortes de crian\00E7as com idade entre 1-4 anos</span></p>')
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492529220649460733)
,p_plug_name=>'CARD 3'
,p_parent_plug_id=>wwv_flow_imp.id(14492529570565460736)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69137237526221422072)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(VALOR,''999G999G999G999G999G999G990'') AS VALOR',
'  FROM PI4_IND_MORTALIDADE_INFANTIL ',
' WHERE PAIS      = :P1_PAIS',
'   AND ANO       = :P1_ANO',
'   AND INDICADOR = ''Deaths aged 5 to 9''',
'   AND GENERO    = ''Total'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P1_ANO,P1_PAIS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14492529342661460734)
,p_region_id=>wwv_flow_imp.id(14492529220649460733)
,p_layout_type=>'ROW'
,p_card_css_classes=>'card-three'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1><span style="color:#FFFFFF">&VALOR.</span></h1>',
''))
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>unistr('<p><span style="color:#FFFFFF">Mortes de crian\00E7as com idade entre 5-9 anos</span></p>')
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14492529663379460737)
,p_plug_name=>'CARD 5'
,p_parent_plug_id=>wwv_flow_imp.id(14492529570565460736)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69137237526221422072)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(VALOR,''999G999G999G999G999G999G990'') AS VALOR',
'  FROM PI4_IND_MORTALIDADE_INFANTIL ',
' WHERE PAIS      = :P1_PAIS',
'   AND ANO       = :P1_ANO',
'   AND INDICADOR = ''Deaths aged 15 to 19''',
'   AND GENERO    = ''Total'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P1_ANO,P1_PAIS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14492529749348460738)
,p_region_id=>wwv_flow_imp.id(14492529663379460737)
,p_layout_type=>'ROW'
,p_card_css_classes=>'card-five'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1><span style="color:#FFFFFF">&VALOR.</span></h1>',
''))
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>unistr('<p><span style="color:#FFFFFF">Mortes de crian\00E7as com idade entre 15-19 anos</span></p>')
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14492529450986460735)
,p_name=>'P1_ANO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14492529570565460736)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(ANO)',
'  FROM PI4_IND_MORTALIDADE_INFANTIL ',
' WHERE ANO IS NOT NULL'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Ano '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ANO',
'  FROM PI4_IND_MORTALIDADE_INFANTIL ',
' WHERE ANO IS NOT NULL',
' GROUP BY ANO',
' ORDER BY ANO DESC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(69137367026340422127)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14492529839915460739)
,p_name=>'P1_PAIS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14492529570565460736)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PAIS',
'  FROM PI4_IND_MORTALIDADE_INFANTIL ',
' WHERE PAIS = ''Brazil''',
''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('Pa\00EDs')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PAIS',
'  FROM PI4_IND_MORTALIDADE_INFANTIL ',
' WHERE PAIS IS NOT NULL',
' GROUP BY PAIS',
' ORDER BY PAIS'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(69137367026340422127)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14492529966457460740)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_ANO,P1_PAIS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14492530017868460741)
,p_event_id=>wwv_flow_imp.id(14492529966457460740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14492528269791460723)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14492530111034460742)
,p_event_id=>wwv_flow_imp.id(14492529966457460740)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14492529010511460731)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14492530214582460743)
,p_event_id=>wwv_flow_imp.id(14492529966457460740)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14492529220649460733)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14492530357628460744)
,p_event_id=>wwv_flow_imp.id(14492529966457460740)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14492528882166460729)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14492530426011460745)
,p_event_id=>wwv_flow_imp.id(14492529966457460740)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14492529663379460737)
);
wwv_flow_imp.component_end;
end;
/

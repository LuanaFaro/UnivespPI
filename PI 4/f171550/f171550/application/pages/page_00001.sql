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
,p_last_upd_yyyymmddhh24miss=>'20230416221551'
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
'   AND INDICADOR = ''Mortes 1-59 meses''',
'   AND GENERO    = ''Total''',
'   AND ROWNUM    = 1'))
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
'   AND INDICADOR = ''Mortes de 10 a 14 anos''',
'   AND GENERO    = ''Total''',
'   AND ROWNUM    = 1'))
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
unistr('   AND INDICADOR = ''\00D3bitos infantis (de 1 a 4 anos)'''),
'   AND GENERO    = ''Total''',
'   AND ROWNUM    = 1'))
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
'   AND INDICADOR = ''Mortes de 5 a 9 anos''',
'   AND GENERO    = ''Total''',
'   AND ROWNUM    = 1'))
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
'   AND INDICADOR = ''Mortes entre 15 e 19 anos''',
'   AND GENERO    = ''Total''',
'   AND ROWNUM    = 1',
''))
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40682321745556277746)
,p_plug_name=>unistr('Total de mortes por g\00EAnero')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69137296463532422097)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(40682321893425277747)
,p_region_id=>wwv_flow_imp.id(40682321745556277746)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(40682321930203277748)
,p_chart_id=>wwv_flow_imp.id(40682321893425277747)
,p_seq=>10
,p_name=>'Feminino'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(valor) as total, Indicador, GENERO from PI4_IND_MORTALIDADE_INFANTIL',
'where pais = :P1_PAIS',
'and genero = ''Feminino''',
'and ano = :P1_ANO',
unistr('and INDICADOR IN (''\00D3bitos infantis (de 1 a 4 anos)'''),
'                   ,''Mortes de 5 a 9 anos''',
'                   ,''Mortes de 10 a 14 anos''',
'                   ,''Mortes entre 15 e 19 anos'')',
'                   Group By INDICADOR, GENERO',
'',
'',
'',
''))
,p_ajax_items_to_submit=>'P1_ANO,P1_PAIS'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'INDICADOR'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(73711465422362238801)
,p_chart_id=>wwv_flow_imp.id(40682321893425277747)
,p_seq=>20
,p_name=>'Masculino'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(valor) as total, Indicador, GENERO from PI4_IND_MORTALIDADE_INFANTIL',
'where pais = :P1_PAIS',
'and genero = ''Masculino''',
'and ano = :P1_ANO',
unistr('and INDICADOR IN (''\00D3bitos infantis (de 1 a 4 anos)'''),
'                   ,''Mortes de 5 a 9 anos''',
'                   ,''Mortes de 10 a 14 anos''',
'                   ,''Mortes entre 15 e 19 anos'')',
'                   Group By INDICADOR, GENERO',
'',
'',
'',
''))
,p_ajax_items_to_submit=>'P1_ANO,P1_PAIS'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'INDICADOR'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(40682322017623277749)
,p_chart_id=>wwv_flow_imp.id(40682321893425277747)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(40682322108311277750)
,p_chart_id=>wwv_flow_imp.id(40682321893425277747)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73711466221321238809)
,p_plug_name=>unistr('Top 5 Pa\00EDses com maior n\00FAmero de mortes')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69137296463532422097)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(73711466337967238810)
,p_region_id=>wwv_flow_imp.id(73711466221321238809)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(73711466454862238811)
,p_chart_id=>wwv_flow_imp.id(73711466337967238810)
,p_seq=>10
,p_name=>'Geral'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select total, pais from (',
'    select * from (',
'        select sum(Valor)as Total, Pais From PI4_IND_MORTALIDADE_INFANTIL',
'          Where ano = :P1_ANO',
'          and',
'          INDICADOR IN (''Mortes 1-59 meses''',
unistr('                       ,''\00D3bitos infantis (de 1 a 4 anos)'''),
'                       ,''Mortes de 5 a 9 anos''',
'                       ,''Mortes de 10 a 14 anos''',
'                       ,''Mortes entre 15 e 19 anos'')',
'          Group by Pais',
')',
'Order By Total desc',
')',
'where rownum <=5',
'',
''))
,p_ajax_items_to_submit=>'P1_ANO'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'PAIS'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(73711466676731238813)
,p_chart_id=>wwv_flow_imp.id(73711466337967238810)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(73711466786797238814)
,p_chart_id=>wwv_flow_imp.id(73711466337967238810)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73711466954569238816)
,p_plug_name=>unistr('Total de mortes por ano/pa\00EDs')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(69137296463532422097)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(73711467015569238817)
,p_region_id=>wwv_flow_imp.id(73711466954569238816)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(73711467128869238818)
,p_chart_id=>wwv_flow_imp.id(73711467015569238817)
,p_seq=>10
,p_name=>'Geral'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUM(VALOR) AS TOTAL,PAIS  FROM PI4_IND_MORTALIDADE_INFANTIL ',
'WHERE GENERO = ''Total''',
'AND ANO = :P1_ANO',
'GROUP BY PAIS',
'ORDER BY PAIS'))
,p_ajax_items_to_submit=>'P1_ANO'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'PAIS'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
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
,p_item_default=>'Brasil'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73711465527690238802)
,p_event_id=>wwv_flow_imp.id(14492529966457460740)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40682321745556277746)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73711466896235238815)
,p_event_id=>wwv_flow_imp.id(14492529966457460740)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73711466221321238809)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73711467419547238821)
,p_event_id=>wwv_flow_imp.id(14492529966457460740)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73711466954569238816)
);
wwv_flow_imp.component_end;
end;
/

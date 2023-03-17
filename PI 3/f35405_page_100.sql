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
,p_release=>'22.1.1'
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
--   Date and Time:   18:42 Friday June 17, 2022
--   Exported By:     2008214@ALUNO.UNIVESP.BR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 100
--   Manifest End
--   Version:         22.1.1
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00100
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>100);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_imp_page.create_page(
 p_id=>100
,p_user_interface_id=>wwv_flow_imp.id(34219755303665841654)
,p_name=>unistr('Projeto DoA\00E7\00E3o')
,p_alias=>'PROJETO-DOACAO'
,p_step_title=>unistr('Projeto DoA\00E7\00E3o')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div vw class="enabled">',
'    <div vw-access-button class="active"></div>',
'    <div vw-plugin-wrapper>',
'      <div class="vw-plugin-top-wrapper"></div>',
'    </div>',
'  </div>',
'  <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>',
'  <script>',
'    new window.VLibras.Widget(''https://vlibras.gov.br/app'');',
'  </script>',
'',
'',
'<script>(function(d){var s = d.createElement("script");s.setAttribute("data-account", "uOkvGzylfZ");s.setAttribute("src", "https://cdn.userway.org/widget.js");(d.body || d.head).appendChild(s);})(document)</script><noscript>Please ensure Javascript i'
||'s enabled for purposes of <a href="https://userway.org">website accessibility</a></noscript>',
'',
'<script src="https://code.responsivevoice.org/responsivevoice.js?key=ZXfXkCet"></script>',
'',
'<div  class="region_speak">',
'    ',
'<button id="btn_voice" class= "btn_speak" >',
'<svg',
'version="1.1"',
'xmlns="http://www.w3.org/2000/svg"',
'stroke="#FFF" ',
'viewBox="0 0 295.928 295.928"',
'fill="#FFF"',
'>',
'<g>',
'  <path',
'    d="M193.686,68.762c-3.907,3.902-3.909,10.234-0.005,14.141c26.269,26.287,26.252,69.074-0.037,95.379',
'c-3.904,3.908-3.902,10.238,0.004,14.143c1.953,1.951,4.511,2.928,7.069,2.928c2.561,0,5.12-0.979,7.073-2.932',
'c34.079-34.1,34.096-89.57,0.037-123.654C203.925,64.86,197.592,64.856,193.686,68.762z"',
'  />',
'  <path',
'    d="M156.301,97.448c-3.907,3.902-3.909,10.234-0.005,14.141c10.472,10.48,10.471,27.533-0.002,38.014',
'c-3.904,3.906-3.902,10.238,0.005,14.143c1.952,1.951,4.511,2.926,7.068,2.926c2.561,0,5.121-0.976,7.073-2.932',
'c18.263-18.275,18.264-48.012,0.002-66.287C166.54,93.544,160.207,93.542,156.301,97.448z"',
'  />',
'  <path',
'    d="M252.097,24.471c-3.904-3.908-10.235-3.91-14.142-0.006c-3.907,3.904-3.909,10.236-0.005,14.143',
'c50.671,50.703,50.649,133.225-0.052,183.951c-3.904,3.906-3.902,10.238,0.004,14.143c1.953,1.951,4.511,2.928,7.069,2.928',
'c2.56,0,5.12-0.979,7.073-2.932C310.536,178.175,310.559,82.97,252.097,24.471z"',
'  />',
'  <path',
'    d="M72.751,195.087c25.71-1.771,46.091-23.264,46.091-49.447c0-27.338-22.217-49.578-49.524-49.578',
'c-27.309,0-49.526,22.24-49.526,49.578c0,26.182,20.381,47.674,46.092,49.447c-19.25,0.74-36.203,7.695-48.019,19.789',
'C5.726,227.3-0.443,244.501,0.025,264.622c0.126,5.43,4.564,9.768,9.997,9.768h118.582c5.433,0,9.871-4.338,9.997-9.77',
'c0.467-20.123-5.703-37.326-17.843-49.75C108.945,202.78,91.997,195.827,72.751,195.087z"',
'  />',
'</g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'<g></g>',
'</svg>',
'</button>',
'       ',
'<Script>',
'        const botao = document.getElementById(''btn_voice'');',
'  document.getElementById(''btn_voice'').onclick = () => {',
'    responsiveVoice.speechAllowedByUser = !responsiveVoice.speechAllowedByUser',
'    if(responsiveVoice.speechAllowedByUser) botao.style.backgroundColor = "#44f42a"; botao.style.border = "#44f42a"; console.log(''Voz Ligada'');',
'    if(!responsiveVoice.speechAllowedByUser)botao.style.backgroundColor = "#2A9DF4"; botao.style.border = "#2A9DF4"; console.log(''Voz Desligada'');',
'  }',
'</Script>',
'</div>',
''))
,p_javascript_code=>'responsiveVoice.speechAllowedByUser = false;'
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
'',
'',
'.region_speak{',
'      z-index: 2147483647;',
'    position: fixed!important;',
'    transform: none!important;',
'    filter: none!important;',
'        bottom: 15px;',
'    left: 15px;',
'    width: fit-content;',
'',
'}',
'.btn_speak svg {',
'    color: #FFFFFF;',
'    width: 42px;',
'}',
'.svg:not(:root) {',
'    overflow: hidden;',
'}',
'',
'',
'.btn_speak:focus, .btn_speak:active {',
'                  outline: none;',
'                  background-color: #49b139;',
'                  transform: translateY(4px);',
'                  border: 2px solid #49b139;',
'',
'              }',
'',
'.btn_speak {',
'    z-index: 10000;',
'    positon: absolute;',
'    top: 0;',
'    left: 0;',
'    margin: 0;',
'    padding: 0;',
'    width: 57px;',
'    height: 57px;',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    border: 2px solid #246aa0;',
'    border-radius: 50%;',
'    background: #246aa0;',
'    transition: transform .2s;',
'    cursor: pointer;',
'    box-shadow: 0px 8px 15px #246aa0;',
'    float:left};',
'',
'.btn_speak_click {',
'    z-index: 10000;',
'    positon: absolute;',
'    top: 0;',
'    left: 0;',
'    margin: 0;',
'    padding: 0;',
'    width: 57px;',
'    height: 57px;',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    border: 2px solid #246aa0;',
'    border-radius: 50%;',
'    background: #246aa0;',
'    transition: transform .2s;',
'    cursor: pointer;',
'    box-shadow: 0px 8px 15px #246aa0;',
'    float:left};',
''))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_deep_linking=>'N'
,p_rejoin_existing_sessions=>'N'
,p_page_component_map=>'23'
,p_last_updated_by=>'2008214@ALUNO.UNIVESP.BR'
,p_last_upd_yyyymmddhh24miss=>'20220617114856'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28778812357116289963)
,p_plug_name=>unistr('DoA\00E7\00E3o')
,p_region_name=>'capa'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_FILES#capa.png" style="width:100%;height:380px;">',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28778813939387289979)
,p_plug_name=>unistr('Institui\00E7\00F5es')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28778812828794289968)
,p_plug_name=>unistr('Institui\00E7\00F5es')
,p_region_name=>'instituicoes'
,p_parent_plug_id=>wwv_flow_imp.id(28778813939387289979)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219637934656841602)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
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
'    and (select  LISTAGG(lpad(d.id,10,0), ''</br>'')',
'         WITHIN GROUP (ORDER BY d.STRITEM) "Emp_list"',
'         from INSTITENSACEITOS c, ITENS d',
'        where c.FKEINSTITUICOES = a.id',
'        and c.FKEITENS = d.id) like ''%'' || nvl(:P100_ITENS,''%'') || ''%''',
'        and a.BAIRRO = case when :P100_BAIRRO_CIDADE = 1 --Bairro ',
'        then :P100_BAIRRO ',
'        else ',
'        a.BAIRRO',
'        end ',
'        and b.STRMUNICIPIO = case when :P100_BAIRRO_CIDADE = 2 --Bairro ',
'        then :P100_CIDADE ',
'        else ',
'        b.STRMUNICIPIO',
'        end ',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P100_ITENS,P100_BAIRRO_CIDADE,P100_CIDADE,P100_BAIRRO,P100_CEP'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>unistr('N\00E3o existem institui\00E7\00F5es cadastradas de acordo com os filtros aplicados. Remova os filtros.')
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(666865544696967230)
,p_region_id=>wwv_flow_imp.id(28778812828794289968)
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
 p_id=>wwv_flow_imp.id(28778814052721289980)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_imp.id(28778813939387289979)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219634747259841600)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28778815408523289994)
,p_plug_name=>'Sobre'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('O Projeto DoA\00E7\00E3o \00E9 uma iniciativa dos graduandos em computa\00E7\00E3o da Universidade Virtual do Estado '),
unistr('de S\00E3o Paulo (UNIVESP) - Polo de Caraguatatuba/ Polo de Campinas, com o objetivo de amenizar a dificuldade das pessoas'),
unistr('em realizar doa\00E7\00F5es, agrupando informa\00E7\00F5es de institui\00E7\00F5es que aceitam doa\00E7\00F5es, desta maneira o doador pode '),
'encontrar com mais facilidade onde doar seus pertences.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18710189323235635822)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(28778814052721289980)
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
 p_id=>wwv_flow_imp.id(18710189747248635822)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(28778814052721289980)
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
 p_id=>wwv_flow_imp.id(666864907533967224)
,p_name=>'P100_CEP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28778814052721289980)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666865081487967225)
,p_name=>'P100_BAIRRO_CIDADE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(28778814052721289980)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(666865319431967228)
,p_name=>'P100_CIDADE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(28778814052721289980)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666865462880967229)
,p_name=>'P100_BAIRRO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(28778814052721289980)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666865970276967234)
,p_name=>'P100_IP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(28778814052721289980)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18710190500953635823)
,p_name=>'P100_ITENS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28778814052721289980)
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
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18710191210543635825)
,p_name=>'Pesquisar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18710189323235635822)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18710191709912635826)
,p_event_id=>wwv_flow_imp.id(18710191210543635825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28778812828794289968)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18710192253236635827)
,p_event_id=>wwv_flow_imp.id(18710191210543635825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").find(".a-Collapsible").collapsible("expand");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18710192699820635827)
,p_name=>'Limpa Filtros'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18710189747248635822)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18710193156081635827)
,p_event_id=>wwv_flow_imp.id(18710192699820635827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P100_ITENS,P100_CEP,P100_BAIRRO_CIDADE,P100_CIDADE,P100_BAIRRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18710193687040635827)
,p_event_id=>wwv_flow_imp.id(18710192699820635827)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28778812828794289968)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666865111674967226)
,p_name=>'set_values'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_CEP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666865239904967227)
,p_event_id=>wwv_flow_imp.id(666865111674967226)
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
'    v_cep := :P100_CEP;',
'    ',
'    v_json_api := apex_web_service.make_rest_request(',
'        p_url => ''https://viacep.com.br/ws/''||v_cep||''/json/'',',
'        p_http_method => ''GET''',
'    );',
'',
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
'        :P100_BAIRRO          := cur.bairro;',
'        :P100_CIDADE  := cur.localidade;',
'    end loop;',
'exception ',
'    when others then',
'        apex_error.add_error (',
'            p_message          => ''Erro ao requisitar CEP - ''|| sqlerrm,',
'            p_display_location => apex_error.c_inline_in_notification );',
'end;'))
,p_attribute_02=>'P100_CEP'
,p_attribute_03=>'P100_CIDADE,P100_BAIRRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666865766547967232)
,p_name=>'busca_ip'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666865849068967233)
,p_event_id=>wwv_flow_imp.id(666865766547967232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var result;',
'',
' fetch(''https://api.ipify.org/?format=json'')',
'      .then(res => {return res.json()})',
'      .then(',
'        (result) => {',
'              apex.item(''P100_IP'').setValue(result.ip);',
'        })',
'      .catch((error) => { window.alert("error", error);',
'        console.log("authentication failed");',
'      });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666866195130967236)
,p_name=>'grava_acesso'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_IP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666866002639967235)
,p_event_id=>wwv_flow_imp.id(666866195130967236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'insert into log_acesso values(:P100_IP, sysdate);'
,p_attribute_02=>'P100_IP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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

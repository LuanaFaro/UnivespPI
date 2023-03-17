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
--   Date and Time:   14:43 Saturday June 11, 2022
--   Exported By:     2008214@ALUNO.UNIVESP.BR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 2
--   Manifest End
--   Version:         22.1.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00002
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>2);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_imp.id(34219755303665841654)
,p_name=>unistr('Cadastro de Institui\00E7\00F5es')
,p_alias=>unistr('CADASTRO-DE-INSTITUI\00C7\00D5ES')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Cadastro de Institui\00E7\00F5es')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'2008214@ALUNO.UNIVESP.BR'
,p_last_upd_yyyymmddhh24miss=>'20220611144105'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9771275691361512400)
,p_plug_name=>'Novo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219635726215841601)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9771419100333553939)
,p_plug_name=>'Dados Cadastrais'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'INSTITUICOES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9771274407845512387)
,p_plug_name=>'Itens Aceitos'
,p_parent_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9771275802543512401)
,p_plug_name=>'Itens Cadastrados'
,p_parent_plug_id=>wwv_flow_imp.id(9771274407845512387)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219663827714841612)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.ID, B.STRITEM from INSTITENSACEITOS A, ITENS B',
'where ',
'A.FKEITENS = B.ID AND',
'A.FKEINSTITUICOES = :P2_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Itens Cadastrados'
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
 p_id=>wwv_flow_imp.id(9771275999809512403)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LUANA'
,p_internal_uid=>9539819318683110950
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068626989260654154)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript: $s("P2_ID_EXCLUIR",''#ID#'');apex.confirm(''Deseja Excluir o Registro?'',''EXCLUIR_ITEM'');'
,p_column_linktext=>'<span class="fa fa-trash"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068627724100654161)
,p_db_column_name=>'STRITEM'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10068994630344655449)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'98375380'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:STRITEM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10068627521517654159)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9771274407845512387)
,p_button_name=>'Inserir'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(34219730962669841643)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inserir Item'
,p_icon_css_classes=>'fa-plus-square-o'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9771425393234553944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9771275691361512400)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(34219730802335841643)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9771426039341553944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9771275691361512400)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(34219730802335841643)
,p_button_image_alt=>'Deletar'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9771426445991553944)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9771275691361512400)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(34219730802335841643)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CREATE'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9771426859040553944)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9771275691361512400)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(34219730802335841643)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'CREATE'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10068628173568654165)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(9771426039341553944)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9771275543900512398)
,p_name=>'P2_ITENS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9771274407845512387)
,p_prompt=>'Item'
,p_placeholder=>'Selecione um item'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    STRITEM as display_value',
'    ,id as return_value',
'from itens ',
'where id not in (select FKEITENS from INSTITENSACEITOS where FKEINSTITUICOES = :P2_ID)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P2_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(34219728370103841642)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9771419438858553940)
,p_name=>'P2_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_source_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(34219728370103841642)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9771419819756553940)
,p_name=>'P2_STRNOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_source_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_prompt=>unistr('Institui\00E7\00E3o ')
,p_source=>'STRNOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>400
,p_field_template=>wwv_flow_imp.id(34219729618031841642)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9771420233944553940)
,p_name=>'P2_STRLOUGADOURO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_source_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_prompt=>'Logradouro'
,p_source=>'STRLOUGADOURO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(34219729618031841642)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9771420617085553941)
,p_name=>'P2_INTNUMERO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_source_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_prompt=>unistr('N\00FAmero')
,p_source=>'INTNUMERO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(34219729618031841642)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9771421035988553941)
,p_name=>'P2_BAIRRO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_source_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_prompt=>'Bairro'
,p_source=>'BAIRRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(34219729618031841642)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9771421390751553941)
,p_name=>'P2_FKEMUNICIPIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_source_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_prompt=>unistr('Munic\00EDpio')
,p_source=>'FKEMUNICIPIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STRMUNICIPIO as display_value, ID as return_value ',
'from MUNICIPIO',
'order by STRMUNICIPIO'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(34219729618031841642)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9771421792460553942)
,p_name=>'P2_INTTELEFONE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_source_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_prompt=>'Telefone'
,p_source=>'INTTELEFONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(34219729618031841642)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9771422209089553942)
,p_name=>'P2_DTMATUALIZACAO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_source_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'DTMATUALIZACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10068627925701654163)
,p_name=>'P2_ID_EXCLUIR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9771275802543512401)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10068627985142654164)
,p_name=>'P2_STREMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_item_source_plug_id=>wwv_flow_imp.id(9771419100333553939)
,p_prompt=>'Email'
,p_source=>'STREMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>400
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(34219728370103841642)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9771422743882553942)
,p_validation_name=>'P2_DTMATUALIZACAO must be timestamp'
,p_validation_sequence=>70
,p_validation=>'P2_DTMATUALIZACAO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(9771422209089553942)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(666866596676967240)
,p_validation_name=>'vld_instituicao'
,p_validation_sequence=>80
,p_validation=>'select * from instituicoes where UPPER(TRIM(STRNOME)) =  UPPER(TRIM(:P2_STRNOME))'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Institui\00E7\00E3o j\00E1 cadastrada.')
,p_when_button_pressed=>wwv_flow_imp.id(9771426859040553944)
,p_associated_item=>wwv_flow_imp.id(9771419819756553940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9771427599588553945)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9771419100333553939)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Cadastro de Institui\00E7\00F5es')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Registro Alterado!'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10068627668053654160)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert INSTITENSACEITOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into INSTITENSACEITOS (FKEINSTITUICOES,FKEITENS,DTMATUALIZACAO)',
'values(:P2_ID,:P2_ITENS, SYSDATE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10068627521517654159)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10068627875687654162)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete INSTITENSACEITOS'
,p_process_sql_clob=>'delete from INSTITENSACEITOS where id =  :P2_ID_EXCLUIR;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'EXCLUIR_ITEM'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9771427227245553945)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9771419100333553939)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Cadastro de Institui\00E7\00F5es')
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

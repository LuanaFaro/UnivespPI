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
--   Date and Time:   14:41 Saturday June 11, 2022
--   Exported By:     2008214@ALUNO.UNIVESP.BR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 1
--   Manifest End
--   Version:         22.1.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00001
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>1);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(34219755303665841654)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>unistr('DoA\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*.t-Button--header {',
'    visibility: hidden;',
'}*/'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
,p_last_updated_by=>'2008214@ALUNO.UNIVESP.BR'
,p_last_upd_yyyymmddhh24miss=>'20220611133409'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9771271154861512354)
,p_plug_name=>unistr('Instui\00E7\00F5es Beneficientes')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(34219665707554841613)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9771271183749512355)
,p_plug_name=>unistr('Instui\00E7\00F5es Beneficientes')
,p_parent_plug_id=>wwv_flow_imp.id(9771271154861512354)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(34219663827714841612)
,p_plug_display_sequence=>10
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
'       b.STRMUNICIPIO',
'  from INSTITUICOES a, MUNICIPIO b',
'  where a.FKEMUNICIPIO = b.id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Instui\00E7\00F5es Beneficientes')
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
 p_id=>wwv_flow_imp.id(9771272362175512366)
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
,p_internal_uid=>9539815681049110913
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9771272428110512367)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9771272530958512368)
,p_db_column_name=>'STRNOME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9771272596572512369)
,p_db_column_name=>'STRLOUGADOURO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Lougadouro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9771272731524512370)
,p_db_column_name=>'INTNUMERO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9771272808727512371)
,p_db_column_name=>'BAIRRO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Bairro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9771273045232512373)
,p_db_column_name=>'INTTELEFONE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Telefone'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068628187130654166)
,p_db_column_name=>'STREMAIL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10068628372451654167)
,p_db_column_name=>'STRMUNICIPIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Munic\00EDpio')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9771327048376523850)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'95398704'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:STRNOME:STRLOUGADOURO:INTNUMERO:BAIRRO:STRMUNICIPIO:INTTELEFONE:STREMAIL:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9771272208103512365)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9771271183749512355)
,p_button_name=>'BTN_INSERIR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(34219730962669841643)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inserir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666866368092967238)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9771271183749512355)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666866413868967239)
,p_event_id=>wwv_flow_imp.id(666866368092967238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9771271183749512355)
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

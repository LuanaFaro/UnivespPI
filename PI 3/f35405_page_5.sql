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
--   Date and Time:   23:18 Tuesday May 10, 2022
--   Exported By:     2008214@ALUNO.UNIVESP.BR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 5
--   Manifest End
--   Version:         22.1.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00005
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>5);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_imp.id(34219755303665841654)
,p_name=>'Municipios'
,p_alias=>'MUNICIPIOS'
,p_step_title=>'Municipios'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LUANA'
,p_last_upd_yyyymmddhh24miss=>'20211106003318'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9775093149117653941)
,p_plug_name=>'Municipios'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(34219663827714841612)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       STRMUNICIPIO,',
'       DTMATUALIZACAO',
'  from MUNICIPIO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Municipios'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9775093243606653941)
,p_name=>'Municipios'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LUANA'
,p_internal_uid=>9543636562480252488
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9775093654177653944)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9775094392448653945)
,p_db_column_name=>'DTMATUALIZACAO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Data de Cadastro'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9771274527283512388)
,p_db_column_name=>'STRMUNICIPIO'
,p_display_order=>13
,p_column_identifier=>'D'
,p_column_label=>unistr('Munic\00EDpio')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9774699064541697581)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'95432424'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:STRMUNICIPIO:DTMATUALIZACAO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9771274587262512389)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9775093149117653941)
,p_button_name=>'INSERIR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(34219730962669841643)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inserir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3::'
,p_icon_css_classes=>'fa-plus-square-o'
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

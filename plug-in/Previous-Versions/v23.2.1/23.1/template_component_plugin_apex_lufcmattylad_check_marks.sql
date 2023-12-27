--------------------------------------------------------------------------------
-- Name: Customers
-- Copyright (c)2012, 2023 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0 as shown 
-- at https://oss.oracle.com/licenses/upl/
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>2282420131933307
,p_default_application_id=>104
,p_default_id_offset=>10277619682290029
,p_default_owner=>'WKSP_X'
);
end;
/
 
prompt APPLICATION 104 - Customers
--
-- Application Export:
--   Application:     104
--   Name:            Customers
--   Date and Time:   09:55 Monday October 23, 2023
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 229011659789261075
--   Manifest End
--   Version:         23.1.5
--   Instance ID:     8567745099245431
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/apex_lufcmattylad_check_marks
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(229011659789261075)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'APEX.LUFCMATTYLAD.CHECK_MARKS'
,p_display_name=>'Check Marks'
,p_supported_component_types=>'PARTIAL'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div><span aria-hidden="true" class="fa fa-circle-7-8 fa-anim-spin"></span></div>',
'{else/}',
'   <div column-value="#COLUMN#">{if LINK/}<a href="#LINK#">{endif/}<span #CUSTOM_ATTRIBUTES# class="fa ',
'   {if COLUMN/}',
'    {case COLUMN/}',
'        {when T/}#TRUTHY_ICON#',
'        {when Y/}#TRUTHY_ICON#',
'        {when 1/}#TRUTHY_ICON#',
'        {otherwise/}',
'          {case TREAT_NOT_NULL_AS/}',
'              {when TRUTHY/}#TRUTHY_ICON#',
'              {when FALSEY/}#FALSEY_ICON#',
'              {when OTHER/}#OTHER_VALUES_ICON#',
'              {otherwise/}#NULL_ICON#',
'          {endcase/} ',
'    {endcase/} ',
'   {endif/}',
'   {if !=COLUMN/}#FALSEY_ICON#{endif/}',
'   {if !?COLUMN/}',
'    {case TREAT_NULL_AS/}',
'        {when TRUTHY/}#TRUTHY_ICON#',
'        {when FALSEY/}#FALSEY_ICON#',
'        {when OTHER/}#OTHER_VALUES_ICON#',
'        {otherwise/}#NULL_ICON#',
'    {endcase/} ',
'   {endif/}',
'   " aria-hidden="true"></span>{if LINK/}</a>{endif/}</div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Displays Truthy (T, Y, 1) & Falsey (F, N, 0) Template Directive Values as an Icon with alternative icons for Null and Other values'
,p_version_identifier=>'23.2.1'
,p_about_url=>'https://github.com/lufcmattylad/Check-Marks-Template-Component'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(251802207238399629)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_title=>'Icon'
,p_display_sequence=>1
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(246397981537340280)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'COLUMN'
,p_prompt=>'Column'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_examples=>'https://apex.oracle.com/pls/apex/r/apex_pm/ut/template-directives'
,p_help_text=>'Select the Column containing the Truthy or Falsey value. Truthy column values are T, Y and 1. Falsey column values are F, N and 0. See "Evalution" section on the link below. Not/Null values are augmented by the settings below.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(254304475032659638)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TRUTHY_ICON'
,p_prompt=>'Truthy Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_default_value=>'fa-check u-success-text u-bold'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(251802207238399629)
,p_examples=>'fa-check u-success-text u-bold'
,p_help_text=>'Icon to show if Truthy'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(254345354818662331)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'FALSEY_ICON'
,p_prompt=>'Falsey Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_default_value=>'fa-times u-danger-text u-bold'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(251802207238399629)
,p_examples=>'fa-times u-danger-text u-bold'
,p_help_text=>'Icon to show if Truthy'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(300563135318868806)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'TREAT_NULL_AS'
,p_prompt=>'Treat Null as'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'FALSEY'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Null values are treat by default as Falsey i.e. they use the Falsey icon, however it can be set to either the Truthy, Null or Other Icon'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(304212923811873656)
,p_plugin_attribute_id=>wwv_flow_imp.id(300563135318868806)
,p_display_sequence=>10
,p_display_value=>'Truthy'
,p_return_value=>'TRUTHY'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(304146294109872737)
,p_plugin_attribute_id=>wwv_flow_imp.id(300563135318868806)
,p_display_sequence=>20
,p_display_value=>'Falsey'
,p_return_value=>'FALSEY'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(303214970936870779)
,p_plugin_attribute_id=>wwv_flow_imp.id(300563135318868806)
,p_display_sequence=>40
,p_display_value=>'Null'
,p_return_value=>'NULL'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(926870659554578804)
,p_plugin_attribute_id=>wwv_flow_imp.id(300563135318868806)
,p_display_sequence=>50
,p_display_value=>'Other'
,p_return_value=>'OTHER'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(330344946463769907)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>45
,p_static_id=>'TREAT_NOT_NULL_AS'
,p_prompt=>'Treat Other values as'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'TRUTHY'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Other Truthy values are treat by default as Truthy i.e. they use the Truthy icon, however it can be set to either the Falsey, Null or Other icon'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(329340751701014167)
,p_plugin_attribute_id=>wwv_flow_imp.id(330344946463769907)
,p_display_sequence=>10
,p_display_value=>'Truthy'
,p_return_value=>'TRUTHY'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(329341934571014716)
,p_plugin_attribute_id=>wwv_flow_imp.id(330344946463769907)
,p_display_sequence=>20
,p_display_value=>'Falsey'
,p_return_value=>'FALSEY'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(330351374072772005)
,p_plugin_attribute_id=>wwv_flow_imp.id(330344946463769907)
,p_display_sequence=>30
,p_display_value=>'Null'
,p_return_value=>'NULL'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(925014567653343616)
,p_plugin_attribute_id=>wwv_flow_imp.id(330344946463769907)
,p_display_sequence=>40
,p_display_value=>'Other'
,p_return_value=>'OTHER'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(337963891100109729)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>40
,p_static_id=>'NULL_ICON'
,p_prompt=>'Null Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_default_value=>'fa-exclamation-triangle-o u-warning-text'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(251802207238399629)
,p_examples=>'fa-exclamation-triangle-o u-warning-text'
,p_help_text=>'The icon to show if the column has a Null value. By default this is null (i.e no icon) however it can be changed to another icon depending on the context. An example is provided below'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(343257488209160255)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'LINK'
,p_prompt=>'Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'A link associated with the icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(924929801174333097)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'OTHER_VALUES_ICON'
,p_prompt=>'Other Values Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_default_value=>'fa-question-circle-o u-info-text'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(251802207238399629)
,p_examples=>'fa-question-circle-o u-info-text'
,p_help_text=>'Icon to show if Other Values e.g. not in Truthy values (T, Y, 1) or Falsely Values (F, N, 0) or Null'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2284455247287055721)
,p_plugin_id=>wwv_flow_imp.id(229011659789261075)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'CUSTOM_ATTRIBUTES'
,p_prompt=>'Custom Attributes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_examples=>'title="Hello #NAME#"'
,p_help_text=>'Enter additional attributes to be included in the form element HTML tag. The size and id HTML attributes are generated and therefore should not be supplied. For the class HTML attribute it is better to use the dedicated CSS Classes attribute instead.'
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

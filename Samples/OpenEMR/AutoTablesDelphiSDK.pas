unit AutoTablesDelphiSDK;

interface

uses
  System.SysUtils, System.Classes, System.JSON, FireDAC.Stan.Intf, System.StrUtils,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Client, REST.Backend.Endpoint, REST.Types,
  REST.Backend.EMSProvider, REST.Backend.ServiceComponents, REST.Backend.Providers;

type
  TSDKClient = class(TComponent)
  private
    { Private declarations }
    FUserName, FPassword: String;
  public
    { Public declarations }
    FEMSProvider: TEMSProvider;
    FBackendAuth: TBackendAuth;

    constructor Create(AOwner: TComponent);
    destructor Destroy;

    function LoginAPI(const UserName, Password: String): Boolean;
    function GetAPI(const APath: String): TBytesStream;
    function PostAPI(const APath: String; ABytesStream: TBytesStream): TBytesStream;
    function DeleteAPI(const APath: String): TBytesStream;

    function getaddresses(Aformat: String = ''): TBytesStream;

    function postaddresses(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteaddresses(Aid: String; Aformat: String = ''): TBytesStream;

    function getamc_misc_data(Aformat: String = ''): TBytesStream;

    function getamendments(Aformat: String = ''): TBytesStream;

    function postamendments(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteamendments(Aamendment_id: String; Aformat: String = ''): TBytesStream;

    function getamendments_history(Aformat: String = ''): TBytesStream;

    function getar_activity(Aformat: String = ''): TBytesStream;

    function postar_activity(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletear_activity(Apid: String; Aformat: String = ''): TBytesStream;

    function getar_session(Aformat: String = ''): TBytesStream;

    function postar_session(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletear_session(Asession_id: String; Aformat: String = ''): TBytesStream;

    function getarray(Aformat: String = ''): TBytesStream;

    function getaudit_details(Aformat: String = ''): TBytesStream;

    function postaudit_details(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteaudit_details(Aid: String; Aformat: String = ''): TBytesStream;

    function getaudit_master(Aformat: String = ''): TBytesStream;

    function postaudit_master(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteaudit_master(Aid: String; Aformat: String = ''): TBytesStream;

    function getautomatic_notification(Aformat: String = ''): TBytesStream;

    function postautomatic_notification(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteautomatic_notification(Anotification_id: String; Aformat: String = ''): TBytesStream;

    function getbackground_services(Aformat: String = ''): TBytesStream;

    function postbackground_services(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletebackground_services(Aname: String; Aformat: String = ''): TBytesStream;

    function getbatchcom(Aformat: String = ''): TBytesStream;

    function postbatchcom(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletebatchcom(Aid: String; Aformat: String = ''): TBytesStream;

    function getbilling(Aformat: String = ''): TBytesStream;

    function postbilling(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletebilling(Aid: String; Aformat: String = ''): TBytesStream;

    function getcalendar_external(Aformat: String = ''): TBytesStream;

    function postcalendar_external(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletecalendar_external(Aid: String; Aformat: String = ''): TBytesStream;

    function getcategories(Aformat: String = ''): TBytesStream;

    function postcategories(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletecategories(Aid: String; Aformat: String = ''): TBytesStream;

    function getcategories_seq(Aformat: String = ''): TBytesStream;

    function postcategories_seq(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletecategories_seq(Aid: String; Aformat: String = ''): TBytesStream;

    function getcategories_to_documents(Aformat: String = ''): TBytesStream;

    function postcategories_to_documents(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletecategories_to_documents(Acategory_id: String; Aformat: String = ''): TBytesStream;

    function getccda(Aformat: String = ''): TBytesStream;

    function postccda(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteccda(Aid: String; Aformat: String = ''): TBytesStream;

    function getccda_components(Aformat: String = ''): TBytesStream;

    function postccda_components(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteccda_components(Accda_components_id: String; Aformat: String = ''): TBytesStream;

    function getccda_field_mapping(Aformat: String = ''): TBytesStream;

    function postccda_field_mapping(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteccda_field_mapping(Aid: String; Aformat: String = ''): TBytesStream;

    function getccda_sections(Aformat: String = ''): TBytesStream;

    function postccda_sections(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteccda_sections(Accda_sections_id: String; Aformat: String = ''): TBytesStream;

    function getccda_table_mapping(Aformat: String = ''): TBytesStream;

    function postccda_table_mapping(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteccda_table_mapping(Aid: String; Aformat: String = ''): TBytesStream;

    function getchart_tracker(Aformat: String = ''): TBytesStream;

    function postchart_tracker(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletechart_tracker(Act_pid: String; Aformat: String = ''): TBytesStream;

    function getclaims(Aformat: String = ''): TBytesStream;

    function postclaims(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteclaims(Apatient_id: String; Aformat: String = ''): TBytesStream;

    function getclinical_plans(Aformat: String = ''): TBytesStream;

    function postclinical_plans(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteclinical_plans(Aid: String; Aformat: String = ''): TBytesStream;

    function getclinical_plans_rules(Aformat: String = ''): TBytesStream;

    function postclinical_plans_rules(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteclinical_plans_rules(Aplan_id: String; Aformat: String = ''): TBytesStream;

    function getclinical_rules(Aformat: String = ''): TBytesStream;

    function postclinical_rules(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteclinical_rules(Aid: String; Aformat: String = ''): TBytesStream;

    function getclinical_rules_log(Aformat: String = ''): TBytesStream;

    function postclinical_rules_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteclinical_rules_log(Aid: String; Aformat: String = ''): TBytesStream;

    function getcode_types(Aformat: String = ''): TBytesStream;

    function postcode_types(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletecode_types(Act_key: String; Aformat: String = ''): TBytesStream;

    function getcodes(Aformat: String = ''): TBytesStream;

    function postcodes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletecodes(Aid: String; Aformat: String = ''): TBytesStream;

    function getconfig(Aformat: String = ''): TBytesStream;

    function postconfig(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteconfig(Aid: String; Aformat: String = ''): TBytesStream;

    function getconfig_seq(Aformat: String = ''): TBytesStream;

    function postconfig_seq(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteconfig_seq(Aid: String; Aformat: String = ''): TBytesStream;

    function getcustomlists(Aformat: String = ''): TBytesStream;

    function postcustomlists(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletecustomlists(Acl_list_slno: String; Aformat: String = ''): TBytesStream;

    function getdated_reminders(Aformat: String = ''): TBytesStream;

    function postdated_reminders(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedated_reminders(Adr_id: String; Aformat: String = ''): TBytesStream;

    function getdated_reminders_link(Aformat: String = ''): TBytesStream;

    function postdated_reminders_link(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedated_reminders_link(Adr_link_id: String; Aformat: String = ''): TBytesStream;

    function getdirect_message_log(Aformat: String = ''): TBytesStream;

    function postdirect_message_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedirect_message_log(Aid: String; Aformat: String = ''): TBytesStream;

    function getdocuments(Aformat: String = ''): TBytesStream;

    function postdocuments(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedocuments(Aid: String; Aformat: String = ''): TBytesStream;

    function getdocuments_legal_categories(Aformat: String = ''): TBytesStream;

    function postdocuments_legal_categories(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedocuments_legal_categories(Adlc_id: String; Aformat: String = ''): TBytesStream;

    function getdocuments_legal_detail(Aformat: String = ''): TBytesStream;

    function postdocuments_legal_detail(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedocuments_legal_detail(Adld_id: String; Aformat: String = ''): TBytesStream;

    function getdocuments_legal_master(Aformat: String = ''): TBytesStream;

    function postdocuments_legal_master(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedocuments_legal_master(Adlm_document_id: String; Aformat: String = ''): TBytesStream;

    function getdrug_inventory(Aformat: String = ''): TBytesStream;

    function postdrug_inventory(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedrug_inventory(Ainventory_id: String; Aformat: String = ''): TBytesStream;

    function getdrug_sales(Aformat: String = ''): TBytesStream;

    function postdrug_sales(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedrug_sales(Asale_id: String; Aformat: String = ''): TBytesStream;

    function getdrug_templates(Aformat: String = ''): TBytesStream;

    function postdrug_templates(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedrug_templates(Adrug_id: String; Aformat: String = ''): TBytesStream;

    function getdrugs(Aformat: String = ''): TBytesStream;

    function postdrugs(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletedrugs(Adrug_id: String; Aformat: String = ''): TBytesStream;

    function geteligibility_response(Aformat: String = ''): TBytesStream;

    function posteligibility_response(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteeligibility_response(Aresponse_id: String; Aformat: String = ''): TBytesStream;

    function geteligibility_verification(Aformat: String = ''): TBytesStream;

    function posteligibility_verification(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteeligibility_verification(Averification_id: String; Aformat: String = ''): TBytesStream;

    function getemployer_data(Aformat: String = ''): TBytesStream;

    function postemployer_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteemployer_data(Aid: String; Aformat: String = ''): TBytesStream;

    function getenc_category_map(Aformat: String = ''): TBytesStream;

    function geterx_drug_paid(Aformat: String = ''): TBytesStream;

    function posterx_drug_paid(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteerx_drug_paid(Adrugid: String; Aformat: String = ''): TBytesStream;

    function geterx_narcotics(Aformat: String = ''): TBytesStream;

    function posterx_narcotics(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteerx_narcotics(Aid: String; Aformat: String = ''): TBytesStream;

    function geterx_rx_log(Aformat: String = ''): TBytesStream;

    function posterx_rx_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteerx_rx_log(Aid: String; Aformat: String = ''): TBytesStream;

    function geterx_ttl_touch(Aformat: String = ''): TBytesStream;

    function posterx_ttl_touch(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteerx_ttl_touch(Apatient_id: String; Aformat: String = ''): TBytesStream;

    function getesign_signatures(Aformat: String = ''): TBytesStream;

    function postesign_signatures(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteesign_signatures(Aid: String; Aformat: String = ''): TBytesStream;

    function getextended_log(Aformat: String = ''): TBytesStream;

    function postextended_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteextended_log(Aid: String; Aformat: String = ''): TBytesStream;

    function getexternal_encounters(Aformat: String = ''): TBytesStream;

    function postexternal_encounters(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteexternal_encounters(Aee_id: String; Aformat: String = ''): TBytesStream;

    function getexternal_procedures(Aformat: String = ''): TBytesStream;

    function postexternal_procedures(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteexternal_procedures(Aep_id: String; Aformat: String = ''): TBytesStream;

    function getfacility(Aformat: String = ''): TBytesStream;

    function postfacility(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletefacility(Aid: String; Aformat: String = ''): TBytesStream;

    function getfacility_user_ids(Aformat: String = ''): TBytesStream;

    function postfacility_user_ids(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletefacility_user_ids(Aid: String; Aformat: String = ''): TBytesStream;

    function getfee_sheet_options(Aformat: String = ''): TBytesStream;

    function getform_care_plan(Aformat: String = ''): TBytesStream;

    function getform_clinical_instructions(Aformat: String = ''): TBytesStream;

    function postform_clinical_instructions(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteform_clinical_instructions(Aid: String; Aformat: String = ''): TBytesStream;

    function getform_dictation(Aformat: String = ''): TBytesStream;

    function postform_dictation(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteform_dictation(Aid: String; Aformat: String = ''): TBytesStream;

    function getform_encounter(Aformat: String = ''): TBytesStream;

    function postform_encounter(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteform_encounter(Aid: String; Aformat: String = ''): TBytesStream;

    function getform_eye_mag_dispense(Aformat: String = ''): TBytesStream;

    function postform_eye_mag_dispense(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteform_eye_mag_dispense(Aid: String; Aformat: String = ''): TBytesStream;

    function getform_eye_mag_prefs(Aformat: String = ''): TBytesStream;

    function getform_functional_cognitive_status(Aformat: String = ''): TBytesStream;

    function getform_misc_billing_options(Aformat: String = ''): TBytesStream;

    function postform_misc_billing_options(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteform_misc_billing_options(Aid: String; Aformat: String = ''): TBytesStream;

    function getform_observation(Aformat: String = ''): TBytesStream;

    function getform_reviewofs(Aformat: String = ''): TBytesStream;

    function postform_reviewofs(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteform_reviewofs(Aid: String; Aformat: String = ''): TBytesStream;

    function getform_ros(Aformat: String = ''): TBytesStream;

    function postform_ros(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteform_ros(Aid: String; Aformat: String = ''): TBytesStream;

    function getform_soap(Aformat: String = ''): TBytesStream;

    function postform_soap(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteform_soap(Aid: String; Aformat: String = ''): TBytesStream;

    function getform_vitals(Aformat: String = ''): TBytesStream;

    function postform_vitals(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteform_vitals(Aid: String; Aformat: String = ''): TBytesStream;

    function getforms(Aformat: String = ''): TBytesStream;

    function postforms(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteforms(Aid: String; Aformat: String = ''): TBytesStream;

    function getgeo_country_reference(Aformat: String = ''): TBytesStream;

    function postgeo_country_reference(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletegeo_country_reference(Acountries_id: String; Aformat: String = ''): TBytesStream;

    function getgeo_zone_reference(Aformat: String = ''): TBytesStream;

    function postgeo_zone_reference(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletegeo_zone_reference(Azone_id: String; Aformat: String = ''): TBytesStream;

    function getglobals(Aformat: String = ''): TBytesStream;

    function postglobals(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteglobals(Agl_name: String; Aformat: String = ''): TBytesStream;

    function getgprelations(Aformat: String = ''): TBytesStream;

    function postgprelations(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletegprelations(Atype1: String; Aformat: String = ''): TBytesStream;

    function getgroups(Aformat: String = ''): TBytesStream;

    function postgroups(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletegroups(Aid: String; Aformat: String = ''): TBytesStream;

    function gethistory_data(Aformat: String = ''): TBytesStream;

    function posthistory_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletehistory_data(Aid: String; Aformat: String = ''): TBytesStream;

    function geticd10_dx_order_code(Aformat: String = ''): TBytesStream;

    function geticd10_gem_dx_10_9(Aformat: String = ''): TBytesStream;

    function geticd10_gem_dx_9_10(Aformat: String = ''): TBytesStream;

    function geticd10_gem_pcs_10_9(Aformat: String = ''): TBytesStream;

    function geticd10_gem_pcs_9_10(Aformat: String = ''): TBytesStream;

    function geticd10_pcs_order_code(Aformat: String = ''): TBytesStream;

    function geticd10_reimbr_dx_9_10(Aformat: String = ''): TBytesStream;

    function geticd10_reimbr_pcs_9_10(Aformat: String = ''): TBytesStream;

    function geticd9_dx_code(Aformat: String = ''): TBytesStream;

    function geticd9_dx_long_code(Aformat: String = ''): TBytesStream;

    function geticd9_sg_code(Aformat: String = ''): TBytesStream;

    function geticd9_sg_long_code(Aformat: String = ''): TBytesStream;

    function getimmunization_observation(Aformat: String = ''): TBytesStream;

    function postimmunization_observation(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteimmunization_observation(Aimo_id: String; Aformat: String = ''): TBytesStream;

    function getimmunizations(Aformat: String = ''): TBytesStream;

    function postimmunizations(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteimmunizations(Aid: String; Aformat: String = ''): TBytesStream;

    function getinsurance_companies(Aformat: String = ''): TBytesStream;

    function postinsurance_companies(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteinsurance_companies(Aid: String; Aformat: String = ''): TBytesStream;

    function getinsurance_data(Aformat: String = ''): TBytesStream;

    function postinsurance_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteinsurance_data(Aid: String; Aformat: String = ''): TBytesStream;

    function getinsurance_numbers(Aformat: String = ''): TBytesStream;

    function postinsurance_numbers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteinsurance_numbers(Aid: String; Aformat: String = ''): TBytesStream;

    function getissue_encounter(Aformat: String = ''): TBytesStream;

    function postissue_encounter(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteissue_encounter(Apid: String; Aformat: String = ''): TBytesStream;

    function getissue_types(Aformat: String = ''): TBytesStream;

    function postissue_types(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteissue_types(Acategory: String; Aformat: String = ''): TBytesStream;

    function get_keys_(Aformat: String = ''): TBytesStream;

    function post_keys_(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function delete_keys_(Aid: String; Aformat: String = ''): TBytesStream;

    function getlang_constants(Aformat: String = ''): TBytesStream;

    function getlang_custom(Aformat: String = ''): TBytesStream;

    function getlang_definitions(Aformat: String = ''): TBytesStream;

    function getlang_languages(Aformat: String = ''): TBytesStream;

    function getlayout_group_properties(Aformat: String = ''): TBytesStream;

    function postlayout_group_properties(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelayout_group_properties(Agrp_form_id: String; Aformat: String = ''): TBytesStream;

    function getlayout_options(Aformat: String = ''): TBytesStream;

    function postlayout_options(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelayout_options(Aform_id: String; Aformat: String = ''): TBytesStream;

    function getlbf_data(Aformat: String = ''): TBytesStream;

    function postlbf_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelbf_data(Aform_id: String; Aformat: String = ''): TBytesStream;

    function getlbt_data(Aformat: String = ''): TBytesStream;

    function postlbt_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelbt_data(Aform_id: String; Aformat: String = ''): TBytesStream;

    function getlist_options(Aformat: String = ''): TBytesStream;

    function postlist_options(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelist_options(Alist_id: String; Aformat: String = ''): TBytesStream;

    function getlists(Aformat: String = ''): TBytesStream;

    function postlists(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelists(Aid: String; Aformat: String = ''): TBytesStream;

    function getlists_touch(Aformat: String = ''): TBytesStream;

    function postlists_touch(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelists_touch(Apid: String; Aformat: String = ''): TBytesStream;

    function getlog(Aformat: String = ''): TBytesStream;

    function postlog(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelog(Aid: String; Aformat: String = ''): TBytesStream;

    function getlog_comment_encrypt(Aformat: String = ''): TBytesStream;

    function postlog_comment_encrypt(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelog_comment_encrypt(Aid: String; Aformat: String = ''): TBytesStream;

    function getmisc_address_book(Aformat: String = ''): TBytesStream;

    function postmisc_address_book(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletemisc_address_book(Aid: String; Aformat: String = ''): TBytesStream;

    function getmodule_acl_group_settings(Aformat: String = ''): TBytesStream;

    function postmodule_acl_group_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletemodule_acl_group_settings(Amodule_id: String; Aformat: String = ''): TBytesStream;

    function getmodule_acl_sections(Aformat: String = ''): TBytesStream;

    function getmodule_acl_user_settings(Aformat: String = ''): TBytesStream;

    function postmodule_acl_user_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletemodule_acl_user_settings(Amodule_id: String; Aformat: String = ''): TBytesStream;

    function getmodule_configuration(Aformat: String = ''): TBytesStream;

    function postmodule_configuration(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletemodule_configuration(Amodule_config_id: String; Aformat: String = ''): TBytesStream;

    function getmodules(Aformat: String = ''): TBytesStream;

    function postmodules(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletemodules(Amod_id: String; Aformat: String = ''): TBytesStream;

    function getmodules_hooks_settings(Aformat: String = ''): TBytesStream;

    function postmodules_hooks_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletemodules_hooks_settings(Aid: String; Aformat: String = ''): TBytesStream;

    function getmodules_settings(Aformat: String = ''): TBytesStream;

    function getnotes(Aformat: String = ''): TBytesStream;

    function postnotes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletenotes(Aid: String; Aformat: String = ''): TBytesStream;

    function getnotification_log(Aformat: String = ''): TBytesStream;

    function postnotification_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletenotification_log(AiLogId: String; Aformat: String = ''): TBytesStream;

    function getnotification_settings(Aformat: String = ''): TBytesStream;

    function postnotification_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletenotification_settings(ASettingsId: String; Aformat: String = ''): TBytesStream;

    function getonotes(Aformat: String = ''): TBytesStream;

    function postonotes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteonotes(Aid: String; Aformat: String = ''): TBytesStream;

    function getonsite_documents(Aformat: String = ''): TBytesStream;

    function postonsite_documents(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteonsite_documents(Aid: String; Aformat: String = ''): TBytesStream;

    function getonsite_mail(Aformat: String = ''): TBytesStream;

    function postonsite_mail(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteonsite_mail(Aid: String; Aformat: String = ''): TBytesStream;

    function getonsite_messages(Aformat: String = ''): TBytesStream;

    function postonsite_messages(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteonsite_messages(Aid: String; Aformat: String = ''): TBytesStream;

    function getonsite_online(Aformat: String = ''): TBytesStream;

    function postonsite_online(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteonsite_online(Ahash: String; Aformat: String = ''): TBytesStream;

    function getonsite_portal_activity(Aformat: String = ''): TBytesStream;

    function postonsite_portal_activity(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteonsite_portal_activity(Aid: String; Aformat: String = ''): TBytesStream;

    function getonsite_signatures(Aformat: String = ''): TBytesStream;

    function postonsite_signatures(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteonsite_signatures(Aid: String; Aformat: String = ''): TBytesStream;

    function getopenemr_module_vars(Aformat: String = ''): TBytesStream;

    function postopenemr_module_vars(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteopenemr_module_vars(Apn_id: String; Aformat: String = ''): TBytesStream;

    function getopenemr_modules(Aformat: String = ''): TBytesStream;

    function postopenemr_modules(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteopenemr_modules(Apn_id: String; Aformat: String = ''): TBytesStream;

    function getopenemr_postcalendar_categories(Aformat: String = ''): TBytesStream;

    function postopenemr_postcalendar_categories(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteopenemr_postcalendar_categories(Apc_catid: String; Aformat: String = ''): TBytesStream;

    function getopenemr_postcalendar_events(Aformat: String = ''): TBytesStream;

    function postopenemr_postcalendar_events(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteopenemr_postcalendar_events(Apc_eid: String; Aformat: String = ''): TBytesStream;

    function getopenemr_postcalendar_limits(Aformat: String = ''): TBytesStream;

    function postopenemr_postcalendar_limits(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteopenemr_postcalendar_limits(Apc_limitid: String; Aformat: String = ''): TBytesStream;

    function getopenemr_postcalendar_topics(Aformat: String = ''): TBytesStream;

    function postopenemr_postcalendar_topics(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteopenemr_postcalendar_topics(Apc_catid: String; Aformat: String = ''): TBytesStream;

    function getopenemr_session_info(Aformat: String = ''): TBytesStream;

    function postopenemr_session_info(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteopenemr_session_info(Apn_sessid: String; Aformat: String = ''): TBytesStream;

    function getpatient_access_offsite(Aformat: String = ''): TBytesStream;

    function postpatient_access_offsite(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletepatient_access_offsite(Aid: String; Aformat: String = ''): TBytesStream;

    function getpatient_access_onsite(Aformat: String = ''): TBytesStream;

    function postpatient_access_onsite(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletepatient_access_onsite(Aid: String; Aformat: String = ''): TBytesStream;

    function getpatient_data(Aformat: String = ''): TBytesStream;

    function getpatient_portal_menu(Aformat: String = ''): TBytesStream;

    function postpatient_portal_menu(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletepatient_portal_menu(Apatient_portal_menu_id: String; Aformat: String = ''): TBytesStream;

    function getpatient_reminders(Aformat: String = ''): TBytesStream;

    function postpatient_reminders(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletepatient_reminders(Aid: String; Aformat: String = ''): TBytesStream;

    function getpatient_tracker(Aformat: String = ''): TBytesStream;

    function postpatient_tracker(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletepatient_tracker(Aid: String; Aformat: String = ''): TBytesStream;

    function getpatient_tracker_element(Aformat: String = ''): TBytesStream;

    function getpayment_gateway_details(Aformat: String = ''): TBytesStream;

    function postpayment_gateway_details(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletepayment_gateway_details(Aid: String; Aformat: String = ''): TBytesStream;

    function getpayments(Aformat: String = ''): TBytesStream;

    function postpayments(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletepayments(Aid: String; Aformat: String = ''): TBytesStream;

    function getpharmacies(Aformat: String = ''): TBytesStream;

    function postpharmacies(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletepharmacies(Aid: String; Aformat: String = ''): TBytesStream;

    function getphone_numbers(Aformat: String = ''): TBytesStream;

    function postphone_numbers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletephone_numbers(Aid: String; Aformat: String = ''): TBytesStream;

    function getpnotes(Aformat: String = ''): TBytesStream;

    function postpnotes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletepnotes(Aid: String; Aformat: String = ''): TBytesStream;

    function getprescriptions(Aformat: String = ''): TBytesStream;

    function postprescriptions(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprescriptions(Aid: String; Aformat: String = ''): TBytesStream;

    function getprices(Aformat: String = ''): TBytesStream;

    function postprices(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprices(Apr_id: String; Aformat: String = ''): TBytesStream;

    function getprocedure_answers(Aformat: String = ''): TBytesStream;

    function postprocedure_answers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprocedure_answers(Aprocedure_order_id: String; Aformat: String = ''): TBytesStream;

    function getprocedure_order(Aformat: String = ''): TBytesStream;

    function postprocedure_order(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprocedure_order(Aprocedure_order_id: String; Aformat: String = ''): TBytesStream;

    function getprocedure_order_code(Aformat: String = ''): TBytesStream;

    function postprocedure_order_code(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprocedure_order_code(Aprocedure_order_id: String; Aformat: String = ''): TBytesStream;

    function getprocedure_providers(Aformat: String = ''): TBytesStream;

    function postprocedure_providers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprocedure_providers(Appid: String; Aformat: String = ''): TBytesStream;

    function getprocedure_questions(Aformat: String = ''): TBytesStream;

    function postprocedure_questions(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprocedure_questions(Alab_id: String; Aformat: String = ''): TBytesStream;

    function getprocedure_report(Aformat: String = ''): TBytesStream;

    function postprocedure_report(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprocedure_report(Aprocedure_report_id: String; Aformat: String = ''): TBytesStream;

    function getprocedure_result(Aformat: String = ''): TBytesStream;

    function postprocedure_result(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprocedure_result(Aprocedure_result_id: String; Aformat: String = ''): TBytesStream;

    function getprocedure_type(Aformat: String = ''): TBytesStream;

    function postprocedure_type(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteprocedure_type(Aprocedure_type_id: String; Aformat: String = ''): TBytesStream;

    function getproduct_warehouse(Aformat: String = ''): TBytesStream;

    function postproduct_warehouse(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteproduct_warehouse(Apw_drug_id: String; Aformat: String = ''): TBytesStream;

    function getregistry(Aformat: String = ''): TBytesStream;

    function postregistry(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteregistry(Aid: String; Aformat: String = ''): TBytesStream;

    function getreport_itemized(Aformat: String = ''): TBytesStream;

    function getreport_results(Aformat: String = ''): TBytesStream;

    function postreport_results(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletereport_results(Areport_id: String; Aformat: String = ''): TBytesStream;

    function getrule_action(Aformat: String = ''): TBytesStream;

    function getrule_action_item(Aformat: String = ''): TBytesStream;

    function postrule_action_item(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleterule_action_item(Acategory: String; Aformat: String = ''): TBytesStream;

    function getrule_filter(Aformat: String = ''): TBytesStream;

    function getrule_patient_data(Aformat: String = ''): TBytesStream;

    function postrule_patient_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleterule_patient_data(Aid: String; Aformat: String = ''): TBytesStream;

    function getrule_reminder(Aformat: String = ''): TBytesStream;

    function getrule_target(Aformat: String = ''): TBytesStream;

    function getsequences(Aformat: String = ''): TBytesStream;

    function getshared_attributes(Aformat: String = ''): TBytesStream;

    function postshared_attributes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteshared_attributes(Apid: String; Aformat: String = ''): TBytesStream;

    function getstandardized_tables_track(Aformat: String = ''): TBytesStream;

    function poststandardized_tables_track(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletestandardized_tables_track(Aid: String; Aformat: String = ''): TBytesStream;

    function getsupported_external_dataloads(Aformat: String = ''): TBytesStream;

    function getsyndromic_surveillance(Aformat: String = ''): TBytesStream;

    function postsyndromic_surveillance(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletesyndromic_surveillance(Aid: String; Aformat: String = ''): TBytesStream;

    function gettemplate_users(Aformat: String = ''): TBytesStream;

    function posttemplate_users(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletetemplate_users(Atu_id: String; Aformat: String = ''): TBytesStream;

    function gettransactions(Aformat: String = ''): TBytesStream;

    function posttransactions(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletetransactions(Aid: String; Aformat: String = ''): TBytesStream;

    function getuser_settings(Aformat: String = ''): TBytesStream;

    function postuser_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteuser_settings(Asetting_user: String; Aformat: String = ''): TBytesStream;

    function getusers(Aformat: String = ''): TBytesStream;

    function postusers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteusers(Aid: String; Aformat: String = ''): TBytesStream;

    function getusers_facility(Aformat: String = ''): TBytesStream;

    function postusers_facility(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteusers_facility(Atablename: String; Aformat: String = ''): TBytesStream;

    function getusers_secure(Aformat: String = ''): TBytesStream;

    function postusers_secure(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deleteusers_secure(Aid: String; Aformat: String = ''): TBytesStream;

    function getvalueset(Aformat: String = ''): TBytesStream;

    function postvalueset(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletevalueset(Anqf_code: String; Aformat: String = ''): TBytesStream;

    function getversion(Aformat: String = ''): TBytesStream;

    function getvoids(Aformat: String = ''): TBytesStream;

    function postvoids(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletevoids(Avoid_id: String; Aformat: String = ''): TBytesStream;

    function getx12_partners(Aformat: String = ''): TBytesStream;

    function postx12_partners(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletex12_partners(Aid: String; Aformat: String = ''): TBytesStream;


  published
    property Username: String read FUsername write FUsername;
    property Password: String read FPassword write FPassword;
  end;

implementation


constructor TSDKClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEMSProvider := TEMSProvider.Create(AOwner);
  FBackendAuth := TBackendAuth.Create(AOwner);
  FEMSProvider.URLHost := 'localhost';
  FEMSProvider.URLPort := StrToInt('8080');
  FEMSProvider.URLBasePath := '';
  FEMSProvider.URLProtocol := 'http';
  FBackendAuth.Provider := FEMSProvider;
  FUserName := '';
  FPassword := '';
end;

destructor TSDKClient.Destroy;
begin
  inherited Destroy;
  FBackendAuth.DisposeOf;
end;

function TSDKClient.LoginAPI(const UserName, Password: String): Boolean;
begin
  if not FBackendAuth.LoggedIn then
    begin
      FBackendAuth.UserName := UserName;
      FBackendAuth.Password := Password;
      FBAckendAuth.Login;

      if FBackendAuth.LoggedIn then
        begin
          if FBackendAuth.LoggedInToken = '' then
            begin
              FBackendAuth.Authentication := TBackendAuthentication.Default;
              Result := False;
            end
          else
            begin
              FBackendAuth.Authentication := TBackendAuthentication.Session;
              Result := True;
            end;
        end;
    end
  else
    Result := True;
end;

function TSDKClient.GetAPI(const APath: String): TBytesStream;
var
  EndPoint: TBackendEndpoint;
begin
  Result := TBytesStream.Create;
  EndPoint := TBackendEndpoint.Create(Self);
  EndPoint.Provider := FEMSProvider;
  EndPoint.Auth := FBackendAuth;
  try
    EndPoint.Resource := APath;
    EndPoint.Method := TRESTRequestMethod.rmGET;
    EndPoint.Execute;
    Result := TBytesStream.Create(EndPoint.Response.RawBytes);
    if EndPoint.Response.StatusCode>=400 then
      begin
        raise Exception.Create(EndPoint.Response.StatusText);
      end;
  finally
    EndPoint.DisposeOf;
  end;
end;

function TSDKClient.PostAPI(const APath: String; ABytesStream: TBytesStream): TBytesStream;
var
  EndPoint: TBackendEndpoint;
begin
  EndPoint := TBackendEndpoint.Create(Self);
  EndPoint.Provider := FEMSProvider;
  EndPoint.Auth := FBackendAuth;
  try
    EndPoint.Resource := APath;
    EndPoint.Method := TRESTRequestMethod.rmPOST;
    EndPoint.AddBody(ABytesStream,TRESTContentType.ctAPPLICATION_JSON);
    EndPoint.Execute;
    Result := TBytesStream.Create(EndPoint.Response.RawBytes);
    if EndPoint.Response.StatusCode>=400 then
      begin
        raise Exception.Create(EndPoint.Response.StatusText);
      end;
  finally
    EndPoint.DisposeOf;
  end;
end;

function TSDKClient.DeleteAPI(const APath: String): TBytesStream;
var
  EndPoint: TBackendEndpoint;
begin
  Result := TBytesStream.Create;
  EndPoint := TBackendEndpoint.Create(Self);
  EndPoint.Provider := FEMSProvider;
  EndPoint.Auth := FBackendAuth;
  try
    EndPoint.Resource := APath;
    EndPoint.Method := TRESTRequestMethod.rmDELETE;
    EndPoint.Execute;
    Result := TBytesStream.Create(EndPoint.Response.RawBytes);
    if EndPoint.Response.StatusCode>=400 then
      begin
        raise Exception.Create(EndPoint.Response.StatusText);
      end;
  finally
    EndPoint.DisposeOf;
  end;
end;

function TSDKClient.getaddresses(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getaddresses/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postaddresses(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postaddresses/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteaddresses(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteaddresses/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getamc_misc_data(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getamc_misc_data/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getamendments(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getamendments/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postamendments(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postamendments/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteamendments(Aamendment_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteamendments/?amendment_id='+Aamendment_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getamendments_history(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getamendments_history/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getar_activity(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getar_activity/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postar_activity(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postar_activity/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletear_activity(Apid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletear_activity/?pid='+Apid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getar_session(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getar_session/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postar_session(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postar_session/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletear_session(Asession_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletear_session/?session_id='+Asession_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getarray(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getarray/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getaudit_details(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getaudit_details/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postaudit_details(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postaudit_details/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteaudit_details(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteaudit_details/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getaudit_master(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getaudit_master/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postaudit_master(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postaudit_master/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteaudit_master(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteaudit_master/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getautomatic_notification(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getautomatic_notification/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postautomatic_notification(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postautomatic_notification/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteautomatic_notification(Anotification_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteautomatic_notification/?notification_id='+Anotification_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getbackground_services(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getbackground_services/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postbackground_services(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postbackground_services/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletebackground_services(Aname: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletebackground_services/?name='+Aname+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getbatchcom(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getbatchcom/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postbatchcom(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postbatchcom/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletebatchcom(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletebatchcom/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getbilling(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getbilling/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postbilling(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postbilling/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletebilling(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletebilling/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getcalendar_external(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getcalendar_external/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postcalendar_external(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postcalendar_external/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletecalendar_external(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletecalendar_external/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getcategories(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getcategories/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postcategories(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postcategories/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletecategories(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletecategories/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getcategories_seq(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getcategories_seq/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postcategories_seq(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postcategories_seq/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletecategories_seq(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletecategories_seq/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getcategories_to_documents(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getcategories_to_documents/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postcategories_to_documents(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postcategories_to_documents/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletecategories_to_documents(Acategory_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletecategories_to_documents/?category_id='+Acategory_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getccda(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getccda/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postccda(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postccda/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteccda(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteccda/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getccda_components(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getccda_components/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postccda_components(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postccda_components/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteccda_components(Accda_components_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteccda_components/?ccda_components_id='+Accda_components_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getccda_field_mapping(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getccda_field_mapping/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postccda_field_mapping(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postccda_field_mapping/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteccda_field_mapping(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteccda_field_mapping/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getccda_sections(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getccda_sections/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postccda_sections(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postccda_sections/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteccda_sections(Accda_sections_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteccda_sections/?ccda_sections_id='+Accda_sections_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getccda_table_mapping(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getccda_table_mapping/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postccda_table_mapping(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postccda_table_mapping/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteccda_table_mapping(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteccda_table_mapping/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getchart_tracker(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getchart_tracker/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postchart_tracker(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postchart_tracker/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletechart_tracker(Act_pid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletechart_tracker/?ct_pid='+Act_pid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getclaims(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getclaims/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postclaims(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postclaims/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteclaims(Apatient_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteclaims/?patient_id='+Apatient_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getclinical_plans(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getclinical_plans/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postclinical_plans(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postclinical_plans/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteclinical_plans(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteclinical_plans/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getclinical_plans_rules(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getclinical_plans_rules/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postclinical_plans_rules(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postclinical_plans_rules/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteclinical_plans_rules(Aplan_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteclinical_plans_rules/?plan_id='+Aplan_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getclinical_rules(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getclinical_rules/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postclinical_rules(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postclinical_rules/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteclinical_rules(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteclinical_rules/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getclinical_rules_log(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getclinical_rules_log/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postclinical_rules_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postclinical_rules_log/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteclinical_rules_log(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteclinical_rules_log/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getcode_types(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getcode_types/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postcode_types(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postcode_types/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletecode_types(Act_key: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletecode_types/?ct_key='+Act_key+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getcodes(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getcodes/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postcodes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postcodes/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletecodes(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletecodes/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getconfig(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getconfig/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postconfig(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postconfig/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteconfig(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteconfig/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getconfig_seq(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getconfig_seq/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postconfig_seq(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postconfig_seq/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteconfig_seq(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteconfig_seq/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getcustomlists(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getcustomlists/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postcustomlists(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postcustomlists/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletecustomlists(Acl_list_slno: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletecustomlists/?cl_list_slno='+Acl_list_slno+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdated_reminders(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdated_reminders/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdated_reminders(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdated_reminders/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedated_reminders(Adr_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedated_reminders/?dr_id='+Adr_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdated_reminders_link(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdated_reminders_link/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdated_reminders_link(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdated_reminders_link/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedated_reminders_link(Adr_link_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedated_reminders_link/?dr_link_id='+Adr_link_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdirect_message_log(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdirect_message_log/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdirect_message_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdirect_message_log/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedirect_message_log(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedirect_message_log/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdocuments(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdocuments/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdocuments(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdocuments/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedocuments(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedocuments/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdocuments_legal_categories(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdocuments_legal_categories/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdocuments_legal_categories(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdocuments_legal_categories/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedocuments_legal_categories(Adlc_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedocuments_legal_categories/?dlc_id='+Adlc_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdocuments_legal_detail(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdocuments_legal_detail/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdocuments_legal_detail(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdocuments_legal_detail/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedocuments_legal_detail(Adld_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedocuments_legal_detail/?dld_id='+Adld_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdocuments_legal_master(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdocuments_legal_master/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdocuments_legal_master(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdocuments_legal_master/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedocuments_legal_master(Adlm_document_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedocuments_legal_master/?dlm_document_id='+Adlm_document_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdrug_inventory(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdrug_inventory/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdrug_inventory(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdrug_inventory/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedrug_inventory(Ainventory_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedrug_inventory/?inventory_id='+Ainventory_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdrug_sales(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdrug_sales/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdrug_sales(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdrug_sales/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedrug_sales(Asale_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedrug_sales/?sale_id='+Asale_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdrug_templates(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdrug_templates/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdrug_templates(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdrug_templates/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedrug_templates(Adrug_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedrug_templates/?drug_id='+Adrug_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getdrugs(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getdrugs/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postdrugs(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postdrugs/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletedrugs(Adrug_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletedrugs/?drug_id='+Adrug_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.geteligibility_response(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geteligibility_response/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.posteligibility_response(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/posteligibility_response/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteeligibility_response(Aresponse_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteeligibility_response/?response_id='+Aresponse_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.geteligibility_verification(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geteligibility_verification/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.posteligibility_verification(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/posteligibility_verification/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteeligibility_verification(Averification_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteeligibility_verification/?verification_id='+Averification_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getemployer_data(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getemployer_data/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postemployer_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postemployer_data/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteemployer_data(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteemployer_data/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getenc_category_map(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getenc_category_map/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geterx_drug_paid(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geterx_drug_paid/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.posterx_drug_paid(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/posterx_drug_paid/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteerx_drug_paid(Adrugid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteerx_drug_paid/?drugid='+Adrugid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.geterx_narcotics(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geterx_narcotics/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.posterx_narcotics(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/posterx_narcotics/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteerx_narcotics(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteerx_narcotics/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.geterx_rx_log(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geterx_rx_log/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.posterx_rx_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/posterx_rx_log/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteerx_rx_log(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteerx_rx_log/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.geterx_ttl_touch(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geterx_ttl_touch/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.posterx_ttl_touch(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/posterx_ttl_touch/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteerx_ttl_touch(Apatient_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteerx_ttl_touch/?patient_id='+Apatient_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getesign_signatures(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getesign_signatures/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postesign_signatures(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postesign_signatures/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteesign_signatures(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteesign_signatures/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getextended_log(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getextended_log/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postextended_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postextended_log/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteextended_log(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteextended_log/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getexternal_encounters(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getexternal_encounters/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postexternal_encounters(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postexternal_encounters/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteexternal_encounters(Aee_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteexternal_encounters/?ee_id='+Aee_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getexternal_procedures(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getexternal_procedures/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postexternal_procedures(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postexternal_procedures/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteexternal_procedures(Aep_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteexternal_procedures/?ep_id='+Aep_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getfacility(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getfacility/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postfacility(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postfacility/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletefacility(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletefacility/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getfacility_user_ids(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getfacility_user_ids/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postfacility_user_ids(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postfacility_user_ids/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletefacility_user_ids(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletefacility_user_ids/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getfee_sheet_options(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getfee_sheet_options/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getform_care_plan(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_care_plan/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getform_clinical_instructions(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_clinical_instructions/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postform_clinical_instructions(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postform_clinical_instructions/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteform_clinical_instructions(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteform_clinical_instructions/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getform_dictation(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_dictation/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postform_dictation(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postform_dictation/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteform_dictation(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteform_dictation/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getform_encounter(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_encounter/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postform_encounter(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postform_encounter/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteform_encounter(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteform_encounter/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getform_eye_mag_dispense(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_eye_mag_dispense/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postform_eye_mag_dispense(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postform_eye_mag_dispense/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteform_eye_mag_dispense(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteform_eye_mag_dispense/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getform_eye_mag_prefs(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_eye_mag_prefs/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getform_functional_cognitive_status(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_functional_cognitive_status/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getform_misc_billing_options(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_misc_billing_options/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postform_misc_billing_options(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postform_misc_billing_options/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteform_misc_billing_options(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteform_misc_billing_options/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getform_observation(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_observation/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getform_reviewofs(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_reviewofs/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postform_reviewofs(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postform_reviewofs/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteform_reviewofs(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteform_reviewofs/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getform_ros(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_ros/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postform_ros(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postform_ros/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteform_ros(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteform_ros/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getform_soap(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_soap/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postform_soap(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postform_soap/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteform_soap(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteform_soap/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getform_vitals(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getform_vitals/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postform_vitals(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postform_vitals/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteform_vitals(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteform_vitals/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getforms(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getforms/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postforms(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postforms/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteforms(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteforms/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getgeo_country_reference(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getgeo_country_reference/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postgeo_country_reference(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postgeo_country_reference/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletegeo_country_reference(Acountries_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletegeo_country_reference/?countries_id='+Acountries_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getgeo_zone_reference(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getgeo_zone_reference/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postgeo_zone_reference(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postgeo_zone_reference/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletegeo_zone_reference(Azone_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletegeo_zone_reference/?zone_id='+Azone_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getglobals(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getglobals/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postglobals(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postglobals/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteglobals(Agl_name: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteglobals/?gl_name='+Agl_name+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getgprelations(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getgprelations/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postgprelations(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postgprelations/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletegprelations(Atype1: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletegprelations/?type1='+Atype1+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getgroups(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getgroups/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postgroups(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postgroups/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletegroups(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletegroups/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.gethistory_data(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/gethistory_data/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.posthistory_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/posthistory_data/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletehistory_data(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletehistory_data/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.geticd10_dx_order_code(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd10_dx_order_code/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd10_gem_dx_10_9(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd10_gem_dx_10_9/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd10_gem_dx_9_10(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd10_gem_dx_9_10/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd10_gem_pcs_10_9(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd10_gem_pcs_10_9/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd10_gem_pcs_9_10(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd10_gem_pcs_9_10/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd10_pcs_order_code(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd10_pcs_order_code/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd10_reimbr_dx_9_10(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd10_reimbr_dx_9_10/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd10_reimbr_pcs_9_10(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd10_reimbr_pcs_9_10/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd9_dx_code(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd9_dx_code/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd9_dx_long_code(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd9_dx_long_code/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd9_sg_code(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd9_sg_code/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.geticd9_sg_long_code(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/geticd9_sg_long_code/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getimmunization_observation(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getimmunization_observation/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postimmunization_observation(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postimmunization_observation/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteimmunization_observation(Aimo_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteimmunization_observation/?imo_id='+Aimo_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getimmunizations(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getimmunizations/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postimmunizations(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postimmunizations/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteimmunizations(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteimmunizations/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getinsurance_companies(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getinsurance_companies/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postinsurance_companies(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postinsurance_companies/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteinsurance_companies(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteinsurance_companies/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getinsurance_data(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getinsurance_data/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postinsurance_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postinsurance_data/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteinsurance_data(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteinsurance_data/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getinsurance_numbers(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getinsurance_numbers/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postinsurance_numbers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postinsurance_numbers/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteinsurance_numbers(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteinsurance_numbers/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getissue_encounter(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getissue_encounter/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postissue_encounter(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postissue_encounter/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteissue_encounter(Apid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteissue_encounter/?pid='+Apid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getissue_types(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getissue_types/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postissue_types(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postissue_types/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteissue_types(Acategory: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteissue_types/?category='+Acategory+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.get_keys_(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/get_keys_/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.post_keys_(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/post_keys_/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.delete_keys_(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/delete_keys_/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getlang_constants(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlang_constants/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getlang_custom(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlang_custom/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getlang_definitions(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlang_definitions/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getlang_languages(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlang_languages/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getlayout_group_properties(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlayout_group_properties/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlayout_group_properties(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlayout_group_properties/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelayout_group_properties(Agrp_form_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelayout_group_properties/?grp_form_id='+Agrp_form_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getlayout_options(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlayout_options/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlayout_options(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlayout_options/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelayout_options(Aform_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelayout_options/?form_id='+Aform_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getlbf_data(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlbf_data/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlbf_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlbf_data/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelbf_data(Aform_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelbf_data/?form_id='+Aform_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getlbt_data(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlbt_data/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlbt_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlbt_data/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelbt_data(Aform_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelbt_data/?form_id='+Aform_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getlist_options(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlist_options/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlist_options(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlist_options/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelist_options(Alist_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelist_options/?list_id='+Alist_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getlists(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlists/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlists(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlists/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelists(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelists/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getlists_touch(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlists_touch/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlists_touch(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlists_touch/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelists_touch(Apid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelists_touch/?pid='+Apid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getlog(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlog/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlog(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlog/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelog(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelog/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getlog_comment_encrypt(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlog_comment_encrypt/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlog_comment_encrypt(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlog_comment_encrypt/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelog_comment_encrypt(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelog_comment_encrypt/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getmisc_address_book(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getmisc_address_book/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postmisc_address_book(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postmisc_address_book/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletemisc_address_book(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletemisc_address_book/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getmodule_acl_group_settings(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getmodule_acl_group_settings/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postmodule_acl_group_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postmodule_acl_group_settings/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletemodule_acl_group_settings(Amodule_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletemodule_acl_group_settings/?module_id='+Amodule_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getmodule_acl_sections(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getmodule_acl_sections/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getmodule_acl_user_settings(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getmodule_acl_user_settings/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postmodule_acl_user_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postmodule_acl_user_settings/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletemodule_acl_user_settings(Amodule_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletemodule_acl_user_settings/?module_id='+Amodule_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getmodule_configuration(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getmodule_configuration/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postmodule_configuration(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postmodule_configuration/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletemodule_configuration(Amodule_config_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletemodule_configuration/?module_config_id='+Amodule_config_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getmodules(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getmodules/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postmodules(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postmodules/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletemodules(Amod_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletemodules/?mod_id='+Amod_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getmodules_hooks_settings(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getmodules_hooks_settings/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postmodules_hooks_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postmodules_hooks_settings/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletemodules_hooks_settings(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletemodules_hooks_settings/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getmodules_settings(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getmodules_settings/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getnotes(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getnotes/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postnotes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postnotes/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletenotes(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletenotes/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getnotification_log(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getnotification_log/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postnotification_log(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postnotification_log/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletenotification_log(AiLogId: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletenotification_log/?iLogId='+AiLogId+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getnotification_settings(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getnotification_settings/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postnotification_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postnotification_settings/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletenotification_settings(ASettingsId: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletenotification_settings/?SettingsId='+ASettingsId+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getonotes(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getonotes/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postonotes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postonotes/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteonotes(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteonotes/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getonsite_documents(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getonsite_documents/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postonsite_documents(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postonsite_documents/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteonsite_documents(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteonsite_documents/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getonsite_mail(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getonsite_mail/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postonsite_mail(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postonsite_mail/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteonsite_mail(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteonsite_mail/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getonsite_messages(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getonsite_messages/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postonsite_messages(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postonsite_messages/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteonsite_messages(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteonsite_messages/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getonsite_online(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getonsite_online/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postonsite_online(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postonsite_online/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteonsite_online(Ahash: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteonsite_online/?hash='+Ahash+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getonsite_portal_activity(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getonsite_portal_activity/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postonsite_portal_activity(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postonsite_portal_activity/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteonsite_portal_activity(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteonsite_portal_activity/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getonsite_signatures(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getonsite_signatures/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postonsite_signatures(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postonsite_signatures/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteonsite_signatures(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteonsite_signatures/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getopenemr_module_vars(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getopenemr_module_vars/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postopenemr_module_vars(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postopenemr_module_vars/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteopenemr_module_vars(Apn_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteopenemr_module_vars/?pn_id='+Apn_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getopenemr_modules(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getopenemr_modules/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postopenemr_modules(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postopenemr_modules/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteopenemr_modules(Apn_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteopenemr_modules/?pn_id='+Apn_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getopenemr_postcalendar_categories(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getopenemr_postcalendar_categories/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postopenemr_postcalendar_categories(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postopenemr_postcalendar_categories/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteopenemr_postcalendar_categories(Apc_catid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteopenemr_postcalendar_categories/?pc_catid='+Apc_catid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getopenemr_postcalendar_events(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getopenemr_postcalendar_events/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postopenemr_postcalendar_events(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postopenemr_postcalendar_events/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteopenemr_postcalendar_events(Apc_eid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteopenemr_postcalendar_events/?pc_eid='+Apc_eid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getopenemr_postcalendar_limits(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getopenemr_postcalendar_limits/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postopenemr_postcalendar_limits(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postopenemr_postcalendar_limits/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteopenemr_postcalendar_limits(Apc_limitid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteopenemr_postcalendar_limits/?pc_limitid='+Apc_limitid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getopenemr_postcalendar_topics(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getopenemr_postcalendar_topics/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postopenemr_postcalendar_topics(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postopenemr_postcalendar_topics/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteopenemr_postcalendar_topics(Apc_catid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteopenemr_postcalendar_topics/?pc_catid='+Apc_catid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getopenemr_session_info(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getopenemr_session_info/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postopenemr_session_info(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postopenemr_session_info/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteopenemr_session_info(Apn_sessid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteopenemr_session_info/?pn_sessid='+Apn_sessid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getpatient_access_offsite(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpatient_access_offsite/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postpatient_access_offsite(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postpatient_access_offsite/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletepatient_access_offsite(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletepatient_access_offsite/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getpatient_access_onsite(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpatient_access_onsite/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postpatient_access_onsite(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postpatient_access_onsite/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletepatient_access_onsite(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletepatient_access_onsite/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getpatient_data(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpatient_data/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getpatient_portal_menu(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpatient_portal_menu/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postpatient_portal_menu(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postpatient_portal_menu/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletepatient_portal_menu(Apatient_portal_menu_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletepatient_portal_menu/?patient_portal_menu_id='+Apatient_portal_menu_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getpatient_reminders(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpatient_reminders/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postpatient_reminders(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postpatient_reminders/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletepatient_reminders(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletepatient_reminders/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getpatient_tracker(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpatient_tracker/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postpatient_tracker(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postpatient_tracker/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletepatient_tracker(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletepatient_tracker/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getpatient_tracker_element(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpatient_tracker_element/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getpayment_gateway_details(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpayment_gateway_details/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postpayment_gateway_details(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postpayment_gateway_details/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletepayment_gateway_details(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletepayment_gateway_details/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getpayments(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpayments/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postpayments(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postpayments/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletepayments(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletepayments/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getpharmacies(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpharmacies/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postpharmacies(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postpharmacies/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletepharmacies(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletepharmacies/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getphone_numbers(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getphone_numbers/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postphone_numbers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postphone_numbers/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletephone_numbers(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletephone_numbers/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getpnotes(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getpnotes/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postpnotes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postpnotes/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletepnotes(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletepnotes/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprescriptions(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprescriptions/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprescriptions(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprescriptions/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprescriptions(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprescriptions/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprices(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprices/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprices(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprices/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprices(Apr_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprices/?pr_id='+Apr_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprocedure_answers(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprocedure_answers/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprocedure_answers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprocedure_answers/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprocedure_answers(Aprocedure_order_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprocedure_answers/?procedure_order_id='+Aprocedure_order_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprocedure_order(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprocedure_order/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprocedure_order(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprocedure_order/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprocedure_order(Aprocedure_order_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprocedure_order/?procedure_order_id='+Aprocedure_order_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprocedure_order_code(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprocedure_order_code/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprocedure_order_code(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprocedure_order_code/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprocedure_order_code(Aprocedure_order_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprocedure_order_code/?procedure_order_id='+Aprocedure_order_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprocedure_providers(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprocedure_providers/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprocedure_providers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprocedure_providers/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprocedure_providers(Appid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprocedure_providers/?ppid='+Appid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprocedure_questions(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprocedure_questions/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprocedure_questions(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprocedure_questions/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprocedure_questions(Alab_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprocedure_questions/?lab_id='+Alab_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprocedure_report(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprocedure_report/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprocedure_report(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprocedure_report/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprocedure_report(Aprocedure_report_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprocedure_report/?procedure_report_id='+Aprocedure_report_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprocedure_result(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprocedure_result/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprocedure_result(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprocedure_result/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprocedure_result(Aprocedure_result_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprocedure_result/?procedure_result_id='+Aprocedure_result_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getprocedure_type(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getprocedure_type/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postprocedure_type(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postprocedure_type/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteprocedure_type(Aprocedure_type_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteprocedure_type/?procedure_type_id='+Aprocedure_type_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getproduct_warehouse(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getproduct_warehouse/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postproduct_warehouse(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postproduct_warehouse/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteproduct_warehouse(Apw_drug_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteproduct_warehouse/?pw_drug_id='+Apw_drug_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getregistry(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getregistry/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postregistry(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postregistry/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteregistry(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteregistry/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getreport_itemized(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getreport_itemized/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getreport_results(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getreport_results/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postreport_results(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postreport_results/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletereport_results(Areport_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletereport_results/?report_id='+Areport_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getrule_action(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getrule_action/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getrule_action_item(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getrule_action_item/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postrule_action_item(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postrule_action_item/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleterule_action_item(Acategory: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleterule_action_item/?category='+Acategory+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getrule_filter(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getrule_filter/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getrule_patient_data(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getrule_patient_data/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postrule_patient_data(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postrule_patient_data/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleterule_patient_data(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleterule_patient_data/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getrule_reminder(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getrule_reminder/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getrule_target(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getrule_target/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getsequences(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getsequences/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getshared_attributes(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getshared_attributes/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postshared_attributes(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postshared_attributes/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteshared_attributes(Apid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteshared_attributes/?pid='+Apid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getstandardized_tables_track(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getstandardized_tables_track/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.poststandardized_tables_track(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/poststandardized_tables_track/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletestandardized_tables_track(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletestandardized_tables_track/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getsupported_external_dataloads(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getsupported_external_dataloads/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getsyndromic_surveillance(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getsyndromic_surveillance/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postsyndromic_surveillance(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postsyndromic_surveillance/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletesyndromic_surveillance(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletesyndromic_surveillance/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.gettemplate_users(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/gettemplate_users/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.posttemplate_users(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/posttemplate_users/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletetemplate_users(Atu_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletetemplate_users/?tu_id='+Atu_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.gettransactions(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/gettransactions/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.posttransactions(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/posttransactions/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletetransactions(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletetransactions/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getuser_settings(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getuser_settings/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postuser_settings(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postuser_settings/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteuser_settings(Asetting_user: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteuser_settings/?setting_user='+Asetting_user+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getusers(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getusers/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postusers(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postusers/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteusers(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteusers/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getusers_facility(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getusers_facility/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postusers_facility(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postusers_facility/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteusers_facility(Atablename: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteusers_facility/?tablename='+Atablename+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getusers_secure(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getusers_secure/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postusers_secure(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postusers_secure/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deleteusers_secure(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deleteusers_secure/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getvalueset(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getvalueset/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postvalueset(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postvalueset/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletevalueset(Anqf_code: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletevalueset/?nqf_code='+Anqf_code+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getversion(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getversion/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.getvoids(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getvoids/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postvoids(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postvoids/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletevoids(Avoid_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletevoids/?void_id='+Avoid_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getx12_partners(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getx12_partners/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postx12_partners(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postx12_partners/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletex12_partners(Aid: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletex12_partners/?id='+Aid+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;



end.

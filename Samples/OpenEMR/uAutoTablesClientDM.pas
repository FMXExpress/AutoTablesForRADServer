unit uAutoTablesClientDM;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Backend.ServiceTypes,
  System.JSON, REST.Backend.EMSServices, REST.Backend.MetaTypes,
  REST.Backend.BindSource, REST.Backend.ServiceComponents, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Client, REST.Backend.EndPoint, REST.Types,
  REST.Backend.EMSProvider, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Stan.StorageJSON;

type
  TGetFuncType = procedure of object;
  TPostFuncType = procedure of object;
  TDeleteFuncType = procedure(const ID: String) of object;
  TAutoTablesClientDM = class(TDataModule)
    BackendEndpoint1: TBackendEndpoint;
    RESTResponse1: TRESTResponse;
    getaddressesMemTable1: TFDMemTable;
    BackendEndpoint2: TBackendEndpoint;
    RESTResponse2: TRESTResponse;
    postaddressesMemTable2: TFDMemTable;
    postaddressesPostMemTable2: TFDMemTable;
    BackendEndpoint3: TBackendEndpoint;
    RESTResponse3: TRESTResponse;
    BackendEndpoint4: TBackendEndpoint;
    RESTResponse4: TRESTResponse;
    getamc_misc_dataMemTable4: TFDMemTable;
    BackendEndpoint5: TBackendEndpoint;
    RESTResponse5: TRESTResponse;
    getamendmentsMemTable5: TFDMemTable;
    BackendEndpoint6: TBackendEndpoint;
    RESTResponse6: TRESTResponse;
    postamendmentsMemTable6: TFDMemTable;
    postamendmentsPostMemTable6: TFDMemTable;
    BackendEndpoint7: TBackendEndpoint;
    RESTResponse7: TRESTResponse;
    BackendEndpoint8: TBackendEndpoint;
    RESTResponse8: TRESTResponse;
    getamendments_historyMemTable8: TFDMemTable;
    BackendEndpoint9: TBackendEndpoint;
    RESTResponse9: TRESTResponse;
    getar_activityMemTable9: TFDMemTable;
    BackendEndpoint10: TBackendEndpoint;
    RESTResponse10: TRESTResponse;
    postar_activityMemTable10: TFDMemTable;
    postar_activityPostMemTable10: TFDMemTable;
    BackendEndpoint11: TBackendEndpoint;
    RESTResponse11: TRESTResponse;
    BackendEndpoint12: TBackendEndpoint;
    RESTResponse12: TRESTResponse;
    getar_sessionMemTable12: TFDMemTable;
    BackendEndpoint13: TBackendEndpoint;
    RESTResponse13: TRESTResponse;
    postar_sessionMemTable13: TFDMemTable;
    postar_sessionPostMemTable13: TFDMemTable;
    BackendEndpoint14: TBackendEndpoint;
    RESTResponse14: TRESTResponse;
    BackendEndpoint15: TBackendEndpoint;
    RESTResponse15: TRESTResponse;
    getarrayMemTable15: TFDMemTable;
    BackendEndpoint16: TBackendEndpoint;
    RESTResponse16: TRESTResponse;
    getaudit_detailsMemTable16: TFDMemTable;
    BackendEndpoint17: TBackendEndpoint;
    RESTResponse17: TRESTResponse;
    postaudit_detailsMemTable17: TFDMemTable;
    postaudit_detailsPostMemTable17: TFDMemTable;
    BackendEndpoint18: TBackendEndpoint;
    RESTResponse18: TRESTResponse;
    BackendEndpoint19: TBackendEndpoint;
    RESTResponse19: TRESTResponse;
    getaudit_masterMemTable19: TFDMemTable;
    BackendEndpoint20: TBackendEndpoint;
    RESTResponse20: TRESTResponse;
    postaudit_masterMemTable20: TFDMemTable;
    postaudit_masterPostMemTable20: TFDMemTable;
    BackendEndpoint21: TBackendEndpoint;
    RESTResponse21: TRESTResponse;
    BackendEndpoint22: TBackendEndpoint;
    RESTResponse22: TRESTResponse;
    getautomatic_notificationMemTable22: TFDMemTable;
    BackendEndpoint23: TBackendEndpoint;
    RESTResponse23: TRESTResponse;
    postautomatic_notificationMemTable23: TFDMemTable;
    postautomatic_notificationPostMemTable23: TFDMemTable;
    BackendEndpoint24: TBackendEndpoint;
    RESTResponse24: TRESTResponse;
    BackendEndpoint25: TBackendEndpoint;
    RESTResponse25: TRESTResponse;
    getbackground_servicesMemTable25: TFDMemTable;
    BackendEndpoint26: TBackendEndpoint;
    RESTResponse26: TRESTResponse;
    postbackground_servicesMemTable26: TFDMemTable;
    postbackground_servicesPostMemTable26: TFDMemTable;
    BackendEndpoint27: TBackendEndpoint;
    RESTResponse27: TRESTResponse;
    BackendEndpoint28: TBackendEndpoint;
    RESTResponse28: TRESTResponse;
    getbatchcomMemTable28: TFDMemTable;
    BackendEndpoint29: TBackendEndpoint;
    RESTResponse29: TRESTResponse;
    postbatchcomMemTable29: TFDMemTable;
    postbatchcomPostMemTable29: TFDMemTable;
    BackendEndpoint30: TBackendEndpoint;
    RESTResponse30: TRESTResponse;
    BackendEndpoint31: TBackendEndpoint;
    RESTResponse31: TRESTResponse;
    getbillingMemTable31: TFDMemTable;
    BackendEndpoint32: TBackendEndpoint;
    RESTResponse32: TRESTResponse;
    postbillingMemTable32: TFDMemTable;
    postbillingPostMemTable32: TFDMemTable;
    BackendEndpoint33: TBackendEndpoint;
    RESTResponse33: TRESTResponse;
    BackendEndpoint34: TBackendEndpoint;
    RESTResponse34: TRESTResponse;
    getcalendar_externalMemTable34: TFDMemTable;
    BackendEndpoint35: TBackendEndpoint;
    RESTResponse35: TRESTResponse;
    postcalendar_externalMemTable35: TFDMemTable;
    postcalendar_externalPostMemTable35: TFDMemTable;
    BackendEndpoint36: TBackendEndpoint;
    RESTResponse36: TRESTResponse;
    BackendEndpoint37: TBackendEndpoint;
    RESTResponse37: TRESTResponse;
    getcategoriesMemTable37: TFDMemTable;
    BackendEndpoint38: TBackendEndpoint;
    RESTResponse38: TRESTResponse;
    postcategoriesMemTable38: TFDMemTable;
    postcategoriesPostMemTable38: TFDMemTable;
    BackendEndpoint39: TBackendEndpoint;
    RESTResponse39: TRESTResponse;
    BackendEndpoint40: TBackendEndpoint;
    RESTResponse40: TRESTResponse;
    getcategories_seqMemTable40: TFDMemTable;
    BackendEndpoint41: TBackendEndpoint;
    RESTResponse41: TRESTResponse;
    postcategories_seqMemTable41: TFDMemTable;
    postcategories_seqPostMemTable41: TFDMemTable;
    BackendEndpoint42: TBackendEndpoint;
    RESTResponse42: TRESTResponse;
    BackendEndpoint43: TBackendEndpoint;
    RESTResponse43: TRESTResponse;
    getcategories_to_documentsMemTable43: TFDMemTable;
    BackendEndpoint44: TBackendEndpoint;
    RESTResponse44: TRESTResponse;
    postcategories_to_documentsMemTable44: TFDMemTable;
    postcategories_to_documentsPostMemTable44: TFDMemTable;
    BackendEndpoint45: TBackendEndpoint;
    RESTResponse45: TRESTResponse;
    BackendEndpoint46: TBackendEndpoint;
    RESTResponse46: TRESTResponse;
    getccdaMemTable46: TFDMemTable;
    BackendEndpoint47: TBackendEndpoint;
    RESTResponse47: TRESTResponse;
    postccdaMemTable47: TFDMemTable;
    postccdaPostMemTable47: TFDMemTable;
    BackendEndpoint48: TBackendEndpoint;
    RESTResponse48: TRESTResponse;
    BackendEndpoint49: TBackendEndpoint;
    RESTResponse49: TRESTResponse;
    getccda_componentsMemTable49: TFDMemTable;
    BackendEndpoint50: TBackendEndpoint;
    RESTResponse50: TRESTResponse;
    postccda_componentsMemTable50: TFDMemTable;
    postccda_componentsPostMemTable50: TFDMemTable;
    BackendEndpoint51: TBackendEndpoint;
    RESTResponse51: TRESTResponse;
    BackendEndpoint52: TBackendEndpoint;
    RESTResponse52: TRESTResponse;
    getccda_field_mappingMemTable52: TFDMemTable;
    BackendEndpoint53: TBackendEndpoint;
    RESTResponse53: TRESTResponse;
    postccda_field_mappingMemTable53: TFDMemTable;
    postccda_field_mappingPostMemTable53: TFDMemTable;
    BackendEndpoint54: TBackendEndpoint;
    RESTResponse54: TRESTResponse;
    BackendEndpoint55: TBackendEndpoint;
    RESTResponse55: TRESTResponse;
    getccda_sectionsMemTable55: TFDMemTable;
    BackendEndpoint56: TBackendEndpoint;
    RESTResponse56: TRESTResponse;
    postccda_sectionsMemTable56: TFDMemTable;
    postccda_sectionsPostMemTable56: TFDMemTable;
    BackendEndpoint57: TBackendEndpoint;
    RESTResponse57: TRESTResponse;
    BackendEndpoint58: TBackendEndpoint;
    RESTResponse58: TRESTResponse;
    getccda_table_mappingMemTable58: TFDMemTable;
    BackendEndpoint59: TBackendEndpoint;
    RESTResponse59: TRESTResponse;
    postccda_table_mappingMemTable59: TFDMemTable;
    postccda_table_mappingPostMemTable59: TFDMemTable;
    BackendEndpoint60: TBackendEndpoint;
    RESTResponse60: TRESTResponse;
    BackendEndpoint61: TBackendEndpoint;
    RESTResponse61: TRESTResponse;
    getchart_trackerMemTable61: TFDMemTable;
    BackendEndpoint62: TBackendEndpoint;
    RESTResponse62: TRESTResponse;
    postchart_trackerMemTable62: TFDMemTable;
    postchart_trackerPostMemTable62: TFDMemTable;
    BackendEndpoint63: TBackendEndpoint;
    RESTResponse63: TRESTResponse;
    BackendEndpoint64: TBackendEndpoint;
    RESTResponse64: TRESTResponse;
    getclaimsMemTable64: TFDMemTable;
    BackendEndpoint65: TBackendEndpoint;
    RESTResponse65: TRESTResponse;
    postclaimsMemTable65: TFDMemTable;
    postclaimsPostMemTable65: TFDMemTable;
    BackendEndpoint66: TBackendEndpoint;
    RESTResponse66: TRESTResponse;
    BackendEndpoint67: TBackendEndpoint;
    RESTResponse67: TRESTResponse;
    getclinical_plansMemTable67: TFDMemTable;
    BackendEndpoint68: TBackendEndpoint;
    RESTResponse68: TRESTResponse;
    postclinical_plansMemTable68: TFDMemTable;
    postclinical_plansPostMemTable68: TFDMemTable;
    BackendEndpoint69: TBackendEndpoint;
    RESTResponse69: TRESTResponse;
    BackendEndpoint70: TBackendEndpoint;
    RESTResponse70: TRESTResponse;
    getclinical_plans_rulesMemTable70: TFDMemTable;
    BackendEndpoint71: TBackendEndpoint;
    RESTResponse71: TRESTResponse;
    postclinical_plans_rulesMemTable71: TFDMemTable;
    postclinical_plans_rulesPostMemTable71: TFDMemTable;
    BackendEndpoint72: TBackendEndpoint;
    RESTResponse72: TRESTResponse;
    BackendEndpoint73: TBackendEndpoint;
    RESTResponse73: TRESTResponse;
    getclinical_rulesMemTable73: TFDMemTable;
    BackendEndpoint74: TBackendEndpoint;
    RESTResponse74: TRESTResponse;
    postclinical_rulesMemTable74: TFDMemTable;
    postclinical_rulesPostMemTable74: TFDMemTable;
    BackendEndpoint75: TBackendEndpoint;
    RESTResponse75: TRESTResponse;
    BackendEndpoint76: TBackendEndpoint;
    RESTResponse76: TRESTResponse;
    getclinical_rules_logMemTable76: TFDMemTable;
    BackendEndpoint77: TBackendEndpoint;
    RESTResponse77: TRESTResponse;
    postclinical_rules_logMemTable77: TFDMemTable;
    postclinical_rules_logPostMemTable77: TFDMemTable;
    BackendEndpoint78: TBackendEndpoint;
    RESTResponse78: TRESTResponse;
    BackendEndpoint79: TBackendEndpoint;
    RESTResponse79: TRESTResponse;
    getcode_typesMemTable79: TFDMemTable;
    BackendEndpoint80: TBackendEndpoint;
    RESTResponse80: TRESTResponse;
    postcode_typesMemTable80: TFDMemTable;
    postcode_typesPostMemTable80: TFDMemTable;
    BackendEndpoint81: TBackendEndpoint;
    RESTResponse81: TRESTResponse;
    BackendEndpoint82: TBackendEndpoint;
    RESTResponse82: TRESTResponse;
    getcodesMemTable82: TFDMemTable;
    BackendEndpoint83: TBackendEndpoint;
    RESTResponse83: TRESTResponse;
    postcodesMemTable83: TFDMemTable;
    postcodesPostMemTable83: TFDMemTable;
    BackendEndpoint84: TBackendEndpoint;
    RESTResponse84: TRESTResponse;
    BackendEndpoint85: TBackendEndpoint;
    RESTResponse85: TRESTResponse;
    getconfigMemTable85: TFDMemTable;
    BackendEndpoint86: TBackendEndpoint;
    RESTResponse86: TRESTResponse;
    postconfigMemTable86: TFDMemTable;
    postconfigPostMemTable86: TFDMemTable;
    BackendEndpoint87: TBackendEndpoint;
    RESTResponse87: TRESTResponse;
    BackendEndpoint88: TBackendEndpoint;
    RESTResponse88: TRESTResponse;
    getconfig_seqMemTable88: TFDMemTable;
    BackendEndpoint89: TBackendEndpoint;
    RESTResponse89: TRESTResponse;
    postconfig_seqMemTable89: TFDMemTable;
    postconfig_seqPostMemTable89: TFDMemTable;
    BackendEndpoint90: TBackendEndpoint;
    RESTResponse90: TRESTResponse;
    BackendEndpoint91: TBackendEndpoint;
    RESTResponse91: TRESTResponse;
    getcustomlistsMemTable91: TFDMemTable;
    BackendEndpoint92: TBackendEndpoint;
    RESTResponse92: TRESTResponse;
    postcustomlistsMemTable92: TFDMemTable;
    postcustomlistsPostMemTable92: TFDMemTable;
    BackendEndpoint93: TBackendEndpoint;
    RESTResponse93: TRESTResponse;
    BackendEndpoint94: TBackendEndpoint;
    RESTResponse94: TRESTResponse;
    getdated_remindersMemTable94: TFDMemTable;
    BackendEndpoint95: TBackendEndpoint;
    RESTResponse95: TRESTResponse;
    postdated_remindersMemTable95: TFDMemTable;
    postdated_remindersPostMemTable95: TFDMemTable;
    BackendEndpoint96: TBackendEndpoint;
    RESTResponse96: TRESTResponse;
    BackendEndpoint97: TBackendEndpoint;
    RESTResponse97: TRESTResponse;
    getdated_reminders_linkMemTable97: TFDMemTable;
    BackendEndpoint98: TBackendEndpoint;
    RESTResponse98: TRESTResponse;
    postdated_reminders_linkMemTable98: TFDMemTable;
    postdated_reminders_linkPostMemTable98: TFDMemTable;
    BackendEndpoint99: TBackendEndpoint;
    RESTResponse99: TRESTResponse;
    BackendEndpoint100: TBackendEndpoint;
    RESTResponse100: TRESTResponse;
    getdirect_message_logMemTable100: TFDMemTable;
    BackendEndpoint101: TBackendEndpoint;
    RESTResponse101: TRESTResponse;
    postdirect_message_logMemTable101: TFDMemTable;
    postdirect_message_logPostMemTable101: TFDMemTable;
    BackendEndpoint102: TBackendEndpoint;
    RESTResponse102: TRESTResponse;
    BackendEndpoint103: TBackendEndpoint;
    RESTResponse103: TRESTResponse;
    getdocumentsMemTable103: TFDMemTable;
    BackendEndpoint104: TBackendEndpoint;
    RESTResponse104: TRESTResponse;
    postdocumentsMemTable104: TFDMemTable;
    postdocumentsPostMemTable104: TFDMemTable;
    BackendEndpoint105: TBackendEndpoint;
    RESTResponse105: TRESTResponse;
    BackendEndpoint106: TBackendEndpoint;
    RESTResponse106: TRESTResponse;
    getdocuments_legal_categoriesMemTable106: TFDMemTable;
    BackendEndpoint107: TBackendEndpoint;
    RESTResponse107: TRESTResponse;
    postdocuments_legal_categoriesMemTable107: TFDMemTable;
    postdocuments_legal_categoriesPostMemTable107: TFDMemTable;
    BackendEndpoint108: TBackendEndpoint;
    RESTResponse108: TRESTResponse;
    BackendEndpoint109: TBackendEndpoint;
    RESTResponse109: TRESTResponse;
    getdocuments_legal_detailMemTable109: TFDMemTable;
    BackendEndpoint110: TBackendEndpoint;
    RESTResponse110: TRESTResponse;
    postdocuments_legal_detailMemTable110: TFDMemTable;
    postdocuments_legal_detailPostMemTable110: TFDMemTable;
    BackendEndpoint111: TBackendEndpoint;
    RESTResponse111: TRESTResponse;
    BackendEndpoint112: TBackendEndpoint;
    RESTResponse112: TRESTResponse;
    getdocuments_legal_masterMemTable112: TFDMemTable;
    BackendEndpoint113: TBackendEndpoint;
    RESTResponse113: TRESTResponse;
    postdocuments_legal_masterMemTable113: TFDMemTable;
    postdocuments_legal_masterPostMemTable113: TFDMemTable;
    BackendEndpoint114: TBackendEndpoint;
    RESTResponse114: TRESTResponse;
    BackendEndpoint115: TBackendEndpoint;
    RESTResponse115: TRESTResponse;
    getdrug_inventoryMemTable115: TFDMemTable;
    BackendEndpoint116: TBackendEndpoint;
    RESTResponse116: TRESTResponse;
    postdrug_inventoryMemTable116: TFDMemTable;
    postdrug_inventoryPostMemTable116: TFDMemTable;
    BackendEndpoint117: TBackendEndpoint;
    RESTResponse117: TRESTResponse;
    BackendEndpoint118: TBackendEndpoint;
    RESTResponse118: TRESTResponse;
    getdrug_salesMemTable118: TFDMemTable;
    BackendEndpoint119: TBackendEndpoint;
    RESTResponse119: TRESTResponse;
    postdrug_salesMemTable119: TFDMemTable;
    postdrug_salesPostMemTable119: TFDMemTable;
    BackendEndpoint120: TBackendEndpoint;
    RESTResponse120: TRESTResponse;
    BackendEndpoint121: TBackendEndpoint;
    RESTResponse121: TRESTResponse;
    getdrug_templatesMemTable121: TFDMemTable;
    BackendEndpoint122: TBackendEndpoint;
    RESTResponse122: TRESTResponse;
    postdrug_templatesMemTable122: TFDMemTable;
    postdrug_templatesPostMemTable122: TFDMemTable;
    BackendEndpoint123: TBackendEndpoint;
    RESTResponse123: TRESTResponse;
    BackendEndpoint124: TBackendEndpoint;
    RESTResponse124: TRESTResponse;
    getdrugsMemTable124: TFDMemTable;
    BackendEndpoint125: TBackendEndpoint;
    RESTResponse125: TRESTResponse;
    postdrugsMemTable125: TFDMemTable;
    postdrugsPostMemTable125: TFDMemTable;
    BackendEndpoint126: TBackendEndpoint;
    RESTResponse126: TRESTResponse;
    BackendEndpoint127: TBackendEndpoint;
    RESTResponse127: TRESTResponse;
    geteligibility_responseMemTable127: TFDMemTable;
    BackendEndpoint128: TBackendEndpoint;
    RESTResponse128: TRESTResponse;
    posteligibility_responseMemTable128: TFDMemTable;
    posteligibility_responsePostMemTable128: TFDMemTable;
    BackendEndpoint129: TBackendEndpoint;
    RESTResponse129: TRESTResponse;
    BackendEndpoint130: TBackendEndpoint;
    RESTResponse130: TRESTResponse;
    geteligibility_verificationMemTable130: TFDMemTable;
    BackendEndpoint131: TBackendEndpoint;
    RESTResponse131: TRESTResponse;
    posteligibility_verificationMemTable131: TFDMemTable;
    posteligibility_verificationPostMemTable131: TFDMemTable;
    BackendEndpoint132: TBackendEndpoint;
    RESTResponse132: TRESTResponse;
    BackendEndpoint133: TBackendEndpoint;
    RESTResponse133: TRESTResponse;
    getemployer_dataMemTable133: TFDMemTable;
    BackendEndpoint134: TBackendEndpoint;
    RESTResponse134: TRESTResponse;
    postemployer_dataMemTable134: TFDMemTable;
    postemployer_dataPostMemTable134: TFDMemTable;
    BackendEndpoint135: TBackendEndpoint;
    RESTResponse135: TRESTResponse;
    BackendEndpoint136: TBackendEndpoint;
    RESTResponse136: TRESTResponse;
    getenc_category_mapMemTable136: TFDMemTable;
    BackendEndpoint137: TBackendEndpoint;
    RESTResponse137: TRESTResponse;
    geterx_drug_paidMemTable137: TFDMemTable;
    BackendEndpoint138: TBackendEndpoint;
    RESTResponse138: TRESTResponse;
    posterx_drug_paidMemTable138: TFDMemTable;
    posterx_drug_paidPostMemTable138: TFDMemTable;
    BackendEndpoint139: TBackendEndpoint;
    RESTResponse139: TRESTResponse;
    BackendEndpoint140: TBackendEndpoint;
    RESTResponse140: TRESTResponse;
    geterx_narcoticsMemTable140: TFDMemTable;
    BackendEndpoint141: TBackendEndpoint;
    RESTResponse141: TRESTResponse;
    posterx_narcoticsMemTable141: TFDMemTable;
    posterx_narcoticsPostMemTable141: TFDMemTable;
    BackendEndpoint142: TBackendEndpoint;
    RESTResponse142: TRESTResponse;
    BackendEndpoint143: TBackendEndpoint;
    RESTResponse143: TRESTResponse;
    geterx_rx_logMemTable143: TFDMemTable;
    BackendEndpoint144: TBackendEndpoint;
    RESTResponse144: TRESTResponse;
    posterx_rx_logMemTable144: TFDMemTable;
    posterx_rx_logPostMemTable144: TFDMemTable;
    BackendEndpoint145: TBackendEndpoint;
    RESTResponse145: TRESTResponse;
    BackendEndpoint146: TBackendEndpoint;
    RESTResponse146: TRESTResponse;
    geterx_ttl_touchMemTable146: TFDMemTable;
    BackendEndpoint147: TBackendEndpoint;
    RESTResponse147: TRESTResponse;
    posterx_ttl_touchMemTable147: TFDMemTable;
    posterx_ttl_touchPostMemTable147: TFDMemTable;
    BackendEndpoint148: TBackendEndpoint;
    RESTResponse148: TRESTResponse;
    BackendEndpoint149: TBackendEndpoint;
    RESTResponse149: TRESTResponse;
    getesign_signaturesMemTable149: TFDMemTable;
    BackendEndpoint150: TBackendEndpoint;
    RESTResponse150: TRESTResponse;
    postesign_signaturesMemTable150: TFDMemTable;
    postesign_signaturesPostMemTable150: TFDMemTable;
    BackendEndpoint151: TBackendEndpoint;
    RESTResponse151: TRESTResponse;
    BackendEndpoint152: TBackendEndpoint;
    RESTResponse152: TRESTResponse;
    getextended_logMemTable152: TFDMemTable;
    BackendEndpoint153: TBackendEndpoint;
    RESTResponse153: TRESTResponse;
    postextended_logMemTable153: TFDMemTable;
    postextended_logPostMemTable153: TFDMemTable;
    BackendEndpoint154: TBackendEndpoint;
    RESTResponse154: TRESTResponse;
    BackendEndpoint155: TBackendEndpoint;
    RESTResponse155: TRESTResponse;
    getexternal_encountersMemTable155: TFDMemTable;
    BackendEndpoint156: TBackendEndpoint;
    RESTResponse156: TRESTResponse;
    postexternal_encountersMemTable156: TFDMemTable;
    postexternal_encountersPostMemTable156: TFDMemTable;
    BackendEndpoint157: TBackendEndpoint;
    RESTResponse157: TRESTResponse;
    BackendEndpoint158: TBackendEndpoint;
    RESTResponse158: TRESTResponse;
    getexternal_proceduresMemTable158: TFDMemTable;
    BackendEndpoint159: TBackendEndpoint;
    RESTResponse159: TRESTResponse;
    postexternal_proceduresMemTable159: TFDMemTable;
    postexternal_proceduresPostMemTable159: TFDMemTable;
    BackendEndpoint160: TBackendEndpoint;
    RESTResponse160: TRESTResponse;
    BackendEndpoint161: TBackendEndpoint;
    RESTResponse161: TRESTResponse;
    getfacilityMemTable161: TFDMemTable;
    BackendEndpoint162: TBackendEndpoint;
    RESTResponse162: TRESTResponse;
    postfacilityMemTable162: TFDMemTable;
    postfacilityPostMemTable162: TFDMemTable;
    BackendEndpoint163: TBackendEndpoint;
    RESTResponse163: TRESTResponse;
    BackendEndpoint164: TBackendEndpoint;
    RESTResponse164: TRESTResponse;
    getfacility_user_idsMemTable164: TFDMemTable;
    BackendEndpoint165: TBackendEndpoint;
    RESTResponse165: TRESTResponse;
    postfacility_user_idsMemTable165: TFDMemTable;
    postfacility_user_idsPostMemTable165: TFDMemTable;
    BackendEndpoint166: TBackendEndpoint;
    RESTResponse166: TRESTResponse;
    BackendEndpoint167: TBackendEndpoint;
    RESTResponse167: TRESTResponse;
    getfee_sheet_optionsMemTable167: TFDMemTable;
    BackendEndpoint168: TBackendEndpoint;
    RESTResponse168: TRESTResponse;
    getform_care_planMemTable168: TFDMemTable;
    BackendEndpoint169: TBackendEndpoint;
    RESTResponse169: TRESTResponse;
    getform_clinical_instructionsMemTable169: TFDMemTable;
    BackendEndpoint170: TBackendEndpoint;
    RESTResponse170: TRESTResponse;
    postform_clinical_instructionsMemTable170: TFDMemTable;
    postform_clinical_instructionsPostMemTable170: TFDMemTable;
    BackendEndpoint171: TBackendEndpoint;
    RESTResponse171: TRESTResponse;
    BackendEndpoint172: TBackendEndpoint;
    RESTResponse172: TRESTResponse;
    getform_dictationMemTable172: TFDMemTable;
    BackendEndpoint173: TBackendEndpoint;
    RESTResponse173: TRESTResponse;
    postform_dictationMemTable173: TFDMemTable;
    postform_dictationPostMemTable173: TFDMemTable;
    BackendEndpoint174: TBackendEndpoint;
    RESTResponse174: TRESTResponse;
    BackendEndpoint175: TBackendEndpoint;
    RESTResponse175: TRESTResponse;
    getform_encounterMemTable175: TFDMemTable;
    BackendEndpoint176: TBackendEndpoint;
    RESTResponse176: TRESTResponse;
    postform_encounterMemTable176: TFDMemTable;
    postform_encounterPostMemTable176: TFDMemTable;
    BackendEndpoint177: TBackendEndpoint;
    RESTResponse177: TRESTResponse;
    BackendEndpoint178: TBackendEndpoint;
    RESTResponse178: TRESTResponse;
    getform_eye_mag_dispenseMemTable178: TFDMemTable;
    BackendEndpoint179: TBackendEndpoint;
    RESTResponse179: TRESTResponse;
    postform_eye_mag_dispenseMemTable179: TFDMemTable;
    postform_eye_mag_dispensePostMemTable179: TFDMemTable;
    BackendEndpoint180: TBackendEndpoint;
    RESTResponse180: TRESTResponse;
    BackendEndpoint181: TBackendEndpoint;
    RESTResponse181: TRESTResponse;
    getform_eye_mag_prefsMemTable181: TFDMemTable;
    BackendEndpoint182: TBackendEndpoint;
    RESTResponse182: TRESTResponse;
    getform_functional_cognitive_statusMemTable182: TFDMemTable;
    BackendEndpoint183: TBackendEndpoint;
    RESTResponse183: TRESTResponse;
    getform_misc_billing_optionsMemTable183: TFDMemTable;
    BackendEndpoint184: TBackendEndpoint;
    RESTResponse184: TRESTResponse;
    postform_misc_billing_optionsMemTable184: TFDMemTable;
    postform_misc_billing_optionsPostMemTable184: TFDMemTable;
    BackendEndpoint185: TBackendEndpoint;
    RESTResponse185: TRESTResponse;
    BackendEndpoint186: TBackendEndpoint;
    RESTResponse186: TRESTResponse;
    getform_observationMemTable186: TFDMemTable;
    BackendEndpoint187: TBackendEndpoint;
    RESTResponse187: TRESTResponse;
    getform_reviewofsMemTable187: TFDMemTable;
    BackendEndpoint188: TBackendEndpoint;
    RESTResponse188: TRESTResponse;
    postform_reviewofsMemTable188: TFDMemTable;
    postform_reviewofsPostMemTable188: TFDMemTable;
    BackendEndpoint189: TBackendEndpoint;
    RESTResponse189: TRESTResponse;
    BackendEndpoint190: TBackendEndpoint;
    RESTResponse190: TRESTResponse;
    getform_rosMemTable190: TFDMemTable;
    BackendEndpoint191: TBackendEndpoint;
    RESTResponse191: TRESTResponse;
    postform_rosMemTable191: TFDMemTable;
    postform_rosPostMemTable191: TFDMemTable;
    BackendEndpoint192: TBackendEndpoint;
    RESTResponse192: TRESTResponse;
    BackendEndpoint193: TBackendEndpoint;
    RESTResponse193: TRESTResponse;
    getform_soapMemTable193: TFDMemTable;
    BackendEndpoint194: TBackendEndpoint;
    RESTResponse194: TRESTResponse;
    postform_soapMemTable194: TFDMemTable;
    postform_soapPostMemTable194: TFDMemTable;
    BackendEndpoint195: TBackendEndpoint;
    RESTResponse195: TRESTResponse;
    BackendEndpoint196: TBackendEndpoint;
    RESTResponse196: TRESTResponse;
    getform_vitalsMemTable196: TFDMemTable;
    BackendEndpoint197: TBackendEndpoint;
    RESTResponse197: TRESTResponse;
    postform_vitalsMemTable197: TFDMemTable;
    postform_vitalsPostMemTable197: TFDMemTable;
    BackendEndpoint198: TBackendEndpoint;
    RESTResponse198: TRESTResponse;
    BackendEndpoint199: TBackendEndpoint;
    RESTResponse199: TRESTResponse;
    getformsMemTable199: TFDMemTable;
    BackendEndpoint200: TBackendEndpoint;
    RESTResponse200: TRESTResponse;
    postformsMemTable200: TFDMemTable;
    postformsPostMemTable200: TFDMemTable;
    BackendEndpoint201: TBackendEndpoint;
    RESTResponse201: TRESTResponse;
    BackendEndpoint202: TBackendEndpoint;
    RESTResponse202: TRESTResponse;
    getgeo_country_referenceMemTable202: TFDMemTable;
    BackendEndpoint203: TBackendEndpoint;
    RESTResponse203: TRESTResponse;
    postgeo_country_referenceMemTable203: TFDMemTable;
    postgeo_country_referencePostMemTable203: TFDMemTable;
    BackendEndpoint204: TBackendEndpoint;
    RESTResponse204: TRESTResponse;
    BackendEndpoint205: TBackendEndpoint;
    RESTResponse205: TRESTResponse;
    getgeo_zone_referenceMemTable205: TFDMemTable;
    BackendEndpoint206: TBackendEndpoint;
    RESTResponse206: TRESTResponse;
    postgeo_zone_referenceMemTable206: TFDMemTable;
    postgeo_zone_referencePostMemTable206: TFDMemTable;
    BackendEndpoint207: TBackendEndpoint;
    RESTResponse207: TRESTResponse;
    BackendEndpoint208: TBackendEndpoint;
    RESTResponse208: TRESTResponse;
    getglobalsMemTable208: TFDMemTable;
    BackendEndpoint209: TBackendEndpoint;
    RESTResponse209: TRESTResponse;
    postglobalsMemTable209: TFDMemTable;
    postglobalsPostMemTable209: TFDMemTable;
    BackendEndpoint210: TBackendEndpoint;
    RESTResponse210: TRESTResponse;
    BackendEndpoint211: TBackendEndpoint;
    RESTResponse211: TRESTResponse;
    getgprelationsMemTable211: TFDMemTable;
    BackendEndpoint212: TBackendEndpoint;
    RESTResponse212: TRESTResponse;
    postgprelationsMemTable212: TFDMemTable;
    postgprelationsPostMemTable212: TFDMemTable;
    BackendEndpoint213: TBackendEndpoint;
    RESTResponse213: TRESTResponse;
    BackendEndpoint214: TBackendEndpoint;
    RESTResponse214: TRESTResponse;
    getgroupsMemTable214: TFDMemTable;
    BackendEndpoint215: TBackendEndpoint;
    RESTResponse215: TRESTResponse;
    postgroupsMemTable215: TFDMemTable;
    postgroupsPostMemTable215: TFDMemTable;
    BackendEndpoint216: TBackendEndpoint;
    RESTResponse216: TRESTResponse;
    BackendEndpoint217: TBackendEndpoint;
    RESTResponse217: TRESTResponse;
    gethistory_dataMemTable217: TFDMemTable;
    BackendEndpoint218: TBackendEndpoint;
    RESTResponse218: TRESTResponse;
    posthistory_dataMemTable218: TFDMemTable;
    posthistory_dataPostMemTable218: TFDMemTable;
    BackendEndpoint219: TBackendEndpoint;
    RESTResponse219: TRESTResponse;
    BackendEndpoint220: TBackendEndpoint;
    RESTResponse220: TRESTResponse;
    geticd10_dx_order_codeMemTable220: TFDMemTable;
    BackendEndpoint221: TBackendEndpoint;
    RESTResponse221: TRESTResponse;
    geticd10_gem_dx_10_9MemTable221: TFDMemTable;
    BackendEndpoint222: TBackendEndpoint;
    RESTResponse222: TRESTResponse;
    geticd10_gem_dx_9_10MemTable222: TFDMemTable;
    BackendEndpoint223: TBackendEndpoint;
    RESTResponse223: TRESTResponse;
    geticd10_gem_pcs_10_9MemTable223: TFDMemTable;
    BackendEndpoint224: TBackendEndpoint;
    RESTResponse224: TRESTResponse;
    geticd10_gem_pcs_9_10MemTable224: TFDMemTable;
    BackendEndpoint225: TBackendEndpoint;
    RESTResponse225: TRESTResponse;
    geticd10_pcs_order_codeMemTable225: TFDMemTable;
    BackendEndpoint226: TBackendEndpoint;
    RESTResponse226: TRESTResponse;
    geticd10_reimbr_dx_9_10MemTable226: TFDMemTable;
    BackendEndpoint227: TBackendEndpoint;
    RESTResponse227: TRESTResponse;
    geticd10_reimbr_pcs_9_10MemTable227: TFDMemTable;
    BackendEndpoint228: TBackendEndpoint;
    RESTResponse228: TRESTResponse;
    geticd9_dx_codeMemTable228: TFDMemTable;
    BackendEndpoint229: TBackendEndpoint;
    RESTResponse229: TRESTResponse;
    geticd9_dx_long_codeMemTable229: TFDMemTable;
    BackendEndpoint230: TBackendEndpoint;
    RESTResponse230: TRESTResponse;
    geticd9_sg_codeMemTable230: TFDMemTable;
    BackendEndpoint231: TBackendEndpoint;
    RESTResponse231: TRESTResponse;
    geticd9_sg_long_codeMemTable231: TFDMemTable;
    BackendEndpoint232: TBackendEndpoint;
    RESTResponse232: TRESTResponse;
    getimmunization_observationMemTable232: TFDMemTable;
    BackendEndpoint233: TBackendEndpoint;
    RESTResponse233: TRESTResponse;
    postimmunization_observationMemTable233: TFDMemTable;
    postimmunization_observationPostMemTable233: TFDMemTable;
    BackendEndpoint234: TBackendEndpoint;
    RESTResponse234: TRESTResponse;
    BackendEndpoint235: TBackendEndpoint;
    RESTResponse235: TRESTResponse;
    getimmunizationsMemTable235: TFDMemTable;
    BackendEndpoint236: TBackendEndpoint;
    RESTResponse236: TRESTResponse;
    postimmunizationsMemTable236: TFDMemTable;
    postimmunizationsPostMemTable236: TFDMemTable;
    BackendEndpoint237: TBackendEndpoint;
    RESTResponse237: TRESTResponse;
    BackendEndpoint238: TBackendEndpoint;
    RESTResponse238: TRESTResponse;
    getinsurance_companiesMemTable238: TFDMemTable;
    BackendEndpoint239: TBackendEndpoint;
    RESTResponse239: TRESTResponse;
    postinsurance_companiesMemTable239: TFDMemTable;
    postinsurance_companiesPostMemTable239: TFDMemTable;
    BackendEndpoint240: TBackendEndpoint;
    RESTResponse240: TRESTResponse;
    BackendEndpoint241: TBackendEndpoint;
    RESTResponse241: TRESTResponse;
    getinsurance_dataMemTable241: TFDMemTable;
    BackendEndpoint242: TBackendEndpoint;
    RESTResponse242: TRESTResponse;
    postinsurance_dataMemTable242: TFDMemTable;
    postinsurance_dataPostMemTable242: TFDMemTable;
    BackendEndpoint243: TBackendEndpoint;
    RESTResponse243: TRESTResponse;
    BackendEndpoint244: TBackendEndpoint;
    RESTResponse244: TRESTResponse;
    getinsurance_numbersMemTable244: TFDMemTable;
    BackendEndpoint245: TBackendEndpoint;
    RESTResponse245: TRESTResponse;
    postinsurance_numbersMemTable245: TFDMemTable;
    postinsurance_numbersPostMemTable245: TFDMemTable;
    BackendEndpoint246: TBackendEndpoint;
    RESTResponse246: TRESTResponse;
    BackendEndpoint247: TBackendEndpoint;
    RESTResponse247: TRESTResponse;
    getissue_encounterMemTable247: TFDMemTable;
    BackendEndpoint248: TBackendEndpoint;
    RESTResponse248: TRESTResponse;
    postissue_encounterMemTable248: TFDMemTable;
    postissue_encounterPostMemTable248: TFDMemTable;
    BackendEndpoint249: TBackendEndpoint;
    RESTResponse249: TRESTResponse;
    BackendEndpoint250: TBackendEndpoint;
    RESTResponse250: TRESTResponse;
    getissue_typesMemTable250: TFDMemTable;
    BackendEndpoint251: TBackendEndpoint;
    RESTResponse251: TRESTResponse;
    postissue_typesMemTable251: TFDMemTable;
    postissue_typesPostMemTable251: TFDMemTable;
    BackendEndpoint252: TBackendEndpoint;
    RESTResponse252: TRESTResponse;
    BackendEndpoint253: TBackendEndpoint;
    RESTResponse253: TRESTResponse;
    get_keys_MemTable253: TFDMemTable;
    BackendEndpoint254: TBackendEndpoint;
    RESTResponse254: TRESTResponse;
    post_keys_MemTable254: TFDMemTable;
    post_keys_PostMemTable254: TFDMemTable;
    BackendEndpoint255: TBackendEndpoint;
    RESTResponse255: TRESTResponse;
    BackendEndpoint256: TBackendEndpoint;
    RESTResponse256: TRESTResponse;
    getlang_constantsMemTable256: TFDMemTable;
    BackendEndpoint257: TBackendEndpoint;
    RESTResponse257: TRESTResponse;
    getlang_customMemTable257: TFDMemTable;
    BackendEndpoint258: TBackendEndpoint;
    RESTResponse258: TRESTResponse;
    getlang_definitionsMemTable258: TFDMemTable;
    BackendEndpoint259: TBackendEndpoint;
    RESTResponse259: TRESTResponse;
    getlang_languagesMemTable259: TFDMemTable;
    BackendEndpoint260: TBackendEndpoint;
    RESTResponse260: TRESTResponse;
    getlayout_group_propertiesMemTable260: TFDMemTable;
    BackendEndpoint261: TBackendEndpoint;
    RESTResponse261: TRESTResponse;
    postlayout_group_propertiesMemTable261: TFDMemTable;
    postlayout_group_propertiesPostMemTable261: TFDMemTable;
    BackendEndpoint262: TBackendEndpoint;
    RESTResponse262: TRESTResponse;
    BackendEndpoint263: TBackendEndpoint;
    RESTResponse263: TRESTResponse;
    getlayout_optionsMemTable263: TFDMemTable;
    BackendEndpoint264: TBackendEndpoint;
    RESTResponse264: TRESTResponse;
    postlayout_optionsMemTable264: TFDMemTable;
    postlayout_optionsPostMemTable264: TFDMemTable;
    BackendEndpoint265: TBackendEndpoint;
    RESTResponse265: TRESTResponse;
    BackendEndpoint266: TBackendEndpoint;
    RESTResponse266: TRESTResponse;
    getlbf_dataMemTable266: TFDMemTable;
    BackendEndpoint267: TBackendEndpoint;
    RESTResponse267: TRESTResponse;
    postlbf_dataMemTable267: TFDMemTable;
    postlbf_dataPostMemTable267: TFDMemTable;
    BackendEndpoint268: TBackendEndpoint;
    RESTResponse268: TRESTResponse;
    BackendEndpoint269: TBackendEndpoint;
    RESTResponse269: TRESTResponse;
    getlbt_dataMemTable269: TFDMemTable;
    BackendEndpoint270: TBackendEndpoint;
    RESTResponse270: TRESTResponse;
    postlbt_dataMemTable270: TFDMemTable;
    postlbt_dataPostMemTable270: TFDMemTable;
    BackendEndpoint271: TBackendEndpoint;
    RESTResponse271: TRESTResponse;
    BackendEndpoint272: TBackendEndpoint;
    RESTResponse272: TRESTResponse;
    getlist_optionsMemTable272: TFDMemTable;
    BackendEndpoint273: TBackendEndpoint;
    RESTResponse273: TRESTResponse;
    postlist_optionsMemTable273: TFDMemTable;
    postlist_optionsPostMemTable273: TFDMemTable;
    BackendEndpoint274: TBackendEndpoint;
    RESTResponse274: TRESTResponse;
    BackendEndpoint275: TBackendEndpoint;
    RESTResponse275: TRESTResponse;
    getlistsMemTable275: TFDMemTable;
    BackendEndpoint276: TBackendEndpoint;
    RESTResponse276: TRESTResponse;
    postlistsMemTable276: TFDMemTable;
    postlistsPostMemTable276: TFDMemTable;
    BackendEndpoint277: TBackendEndpoint;
    RESTResponse277: TRESTResponse;
    BackendEndpoint278: TBackendEndpoint;
    RESTResponse278: TRESTResponse;
    getlists_touchMemTable278: TFDMemTable;
    BackendEndpoint279: TBackendEndpoint;
    RESTResponse279: TRESTResponse;
    postlists_touchMemTable279: TFDMemTable;
    postlists_touchPostMemTable279: TFDMemTable;
    BackendEndpoint280: TBackendEndpoint;
    RESTResponse280: TRESTResponse;
    BackendEndpoint281: TBackendEndpoint;
    RESTResponse281: TRESTResponse;
    getlogMemTable281: TFDMemTable;
    BackendEndpoint282: TBackendEndpoint;
    RESTResponse282: TRESTResponse;
    postlogMemTable282: TFDMemTable;
    postlogPostMemTable282: TFDMemTable;
    BackendEndpoint283: TBackendEndpoint;
    RESTResponse283: TRESTResponse;
    BackendEndpoint284: TBackendEndpoint;
    RESTResponse284: TRESTResponse;
    getlog_comment_encryptMemTable284: TFDMemTable;
    BackendEndpoint285: TBackendEndpoint;
    RESTResponse285: TRESTResponse;
    postlog_comment_encryptMemTable285: TFDMemTable;
    postlog_comment_encryptPostMemTable285: TFDMemTable;
    BackendEndpoint286: TBackendEndpoint;
    RESTResponse286: TRESTResponse;
    BackendEndpoint287: TBackendEndpoint;
    RESTResponse287: TRESTResponse;
    getmisc_address_bookMemTable287: TFDMemTable;
    BackendEndpoint288: TBackendEndpoint;
    RESTResponse288: TRESTResponse;
    postmisc_address_bookMemTable288: TFDMemTable;
    postmisc_address_bookPostMemTable288: TFDMemTable;
    BackendEndpoint289: TBackendEndpoint;
    RESTResponse289: TRESTResponse;
    BackendEndpoint290: TBackendEndpoint;
    RESTResponse290: TRESTResponse;
    getmodule_acl_group_settingsMemTable290: TFDMemTable;
    BackendEndpoint291: TBackendEndpoint;
    RESTResponse291: TRESTResponse;
    postmodule_acl_group_settingsMemTable291: TFDMemTable;
    postmodule_acl_group_settingsPostMemTable291: TFDMemTable;
    BackendEndpoint292: TBackendEndpoint;
    RESTResponse292: TRESTResponse;
    BackendEndpoint293: TBackendEndpoint;
    RESTResponse293: TRESTResponse;
    getmodule_acl_sectionsMemTable293: TFDMemTable;
    BackendEndpoint294: TBackendEndpoint;
    RESTResponse294: TRESTResponse;
    getmodule_acl_user_settingsMemTable294: TFDMemTable;
    BackendEndpoint295: TBackendEndpoint;
    RESTResponse295: TRESTResponse;
    postmodule_acl_user_settingsMemTable295: TFDMemTable;
    postmodule_acl_user_settingsPostMemTable295: TFDMemTable;
    BackendEndpoint296: TBackendEndpoint;
    RESTResponse296: TRESTResponse;
    BackendEndpoint297: TBackendEndpoint;
    RESTResponse297: TRESTResponse;
    getmodule_configurationMemTable297: TFDMemTable;
    BackendEndpoint298: TBackendEndpoint;
    RESTResponse298: TRESTResponse;
    postmodule_configurationMemTable298: TFDMemTable;
    postmodule_configurationPostMemTable298: TFDMemTable;
    BackendEndpoint299: TBackendEndpoint;
    RESTResponse299: TRESTResponse;
    BackendEndpoint300: TBackendEndpoint;
    RESTResponse300: TRESTResponse;
    getmodulesMemTable300: TFDMemTable;
    BackendEndpoint301: TBackendEndpoint;
    RESTResponse301: TRESTResponse;
    postmodulesMemTable301: TFDMemTable;
    postmodulesPostMemTable301: TFDMemTable;
    BackendEndpoint302: TBackendEndpoint;
    RESTResponse302: TRESTResponse;
    BackendEndpoint303: TBackendEndpoint;
    RESTResponse303: TRESTResponse;
    getmodules_hooks_settingsMemTable303: TFDMemTable;
    BackendEndpoint304: TBackendEndpoint;
    RESTResponse304: TRESTResponse;
    postmodules_hooks_settingsMemTable304: TFDMemTable;
    postmodules_hooks_settingsPostMemTable304: TFDMemTable;
    BackendEndpoint305: TBackendEndpoint;
    RESTResponse305: TRESTResponse;
    BackendEndpoint306: TBackendEndpoint;
    RESTResponse306: TRESTResponse;
    getmodules_settingsMemTable306: TFDMemTable;
    BackendEndpoint307: TBackendEndpoint;
    RESTResponse307: TRESTResponse;
    getnotesMemTable307: TFDMemTable;
    BackendEndpoint308: TBackendEndpoint;
    RESTResponse308: TRESTResponse;
    postnotesMemTable308: TFDMemTable;
    postnotesPostMemTable308: TFDMemTable;
    BackendEndpoint309: TBackendEndpoint;
    RESTResponse309: TRESTResponse;
    BackendEndpoint310: TBackendEndpoint;
    RESTResponse310: TRESTResponse;
    getnotification_logMemTable310: TFDMemTable;
    BackendEndpoint311: TBackendEndpoint;
    RESTResponse311: TRESTResponse;
    postnotification_logMemTable311: TFDMemTable;
    postnotification_logPostMemTable311: TFDMemTable;
    BackendEndpoint312: TBackendEndpoint;
    RESTResponse312: TRESTResponse;
    BackendEndpoint313: TBackendEndpoint;
    RESTResponse313: TRESTResponse;
    getnotification_settingsMemTable313: TFDMemTable;
    BackendEndpoint314: TBackendEndpoint;
    RESTResponse314: TRESTResponse;
    postnotification_settingsMemTable314: TFDMemTable;
    postnotification_settingsPostMemTable314: TFDMemTable;
    BackendEndpoint315: TBackendEndpoint;
    RESTResponse315: TRESTResponse;
    BackendEndpoint316: TBackendEndpoint;
    RESTResponse316: TRESTResponse;
    getonotesMemTable316: TFDMemTable;
    BackendEndpoint317: TBackendEndpoint;
    RESTResponse317: TRESTResponse;
    postonotesMemTable317: TFDMemTable;
    postonotesPostMemTable317: TFDMemTable;
    BackendEndpoint318: TBackendEndpoint;
    RESTResponse318: TRESTResponse;
    BackendEndpoint319: TBackendEndpoint;
    RESTResponse319: TRESTResponse;
    getonsite_documentsMemTable319: TFDMemTable;
    BackendEndpoint320: TBackendEndpoint;
    RESTResponse320: TRESTResponse;
    postonsite_documentsMemTable320: TFDMemTable;
    postonsite_documentsPostMemTable320: TFDMemTable;
    BackendEndpoint321: TBackendEndpoint;
    RESTResponse321: TRESTResponse;
    BackendEndpoint322: TBackendEndpoint;
    RESTResponse322: TRESTResponse;
    getonsite_mailMemTable322: TFDMemTable;
    BackendEndpoint323: TBackendEndpoint;
    RESTResponse323: TRESTResponse;
    postonsite_mailMemTable323: TFDMemTable;
    postonsite_mailPostMemTable323: TFDMemTable;
    BackendEndpoint324: TBackendEndpoint;
    RESTResponse324: TRESTResponse;
    BackendEndpoint325: TBackendEndpoint;
    RESTResponse325: TRESTResponse;
    getonsite_messagesMemTable325: TFDMemTable;
    BackendEndpoint326: TBackendEndpoint;
    RESTResponse326: TRESTResponse;
    postonsite_messagesMemTable326: TFDMemTable;
    postonsite_messagesPostMemTable326: TFDMemTable;
    BackendEndpoint327: TBackendEndpoint;
    RESTResponse327: TRESTResponse;
    BackendEndpoint328: TBackendEndpoint;
    RESTResponse328: TRESTResponse;
    getonsite_onlineMemTable328: TFDMemTable;
    BackendEndpoint329: TBackendEndpoint;
    RESTResponse329: TRESTResponse;
    postonsite_onlineMemTable329: TFDMemTable;
    postonsite_onlinePostMemTable329: TFDMemTable;
    BackendEndpoint330: TBackendEndpoint;
    RESTResponse330: TRESTResponse;
    BackendEndpoint331: TBackendEndpoint;
    RESTResponse331: TRESTResponse;
    getonsite_portal_activityMemTable331: TFDMemTable;
    BackendEndpoint332: TBackendEndpoint;
    RESTResponse332: TRESTResponse;
    postonsite_portal_activityMemTable332: TFDMemTable;
    postonsite_portal_activityPostMemTable332: TFDMemTable;
    BackendEndpoint333: TBackendEndpoint;
    RESTResponse333: TRESTResponse;
    BackendEndpoint334: TBackendEndpoint;
    RESTResponse334: TRESTResponse;
    getonsite_signaturesMemTable334: TFDMemTable;
    BackendEndpoint335: TBackendEndpoint;
    RESTResponse335: TRESTResponse;
    postonsite_signaturesMemTable335: TFDMemTable;
    postonsite_signaturesPostMemTable335: TFDMemTable;
    BackendEndpoint336: TBackendEndpoint;
    RESTResponse336: TRESTResponse;
    BackendEndpoint337: TBackendEndpoint;
    RESTResponse337: TRESTResponse;
    getopenemr_module_varsMemTable337: TFDMemTable;
    BackendEndpoint338: TBackendEndpoint;
    RESTResponse338: TRESTResponse;
    postopenemr_module_varsMemTable338: TFDMemTable;
    postopenemr_module_varsPostMemTable338: TFDMemTable;
    BackendEndpoint339: TBackendEndpoint;
    RESTResponse339: TRESTResponse;
    BackendEndpoint340: TBackendEndpoint;
    RESTResponse340: TRESTResponse;
    getopenemr_modulesMemTable340: TFDMemTable;
    BackendEndpoint341: TBackendEndpoint;
    RESTResponse341: TRESTResponse;
    postopenemr_modulesMemTable341: TFDMemTable;
    postopenemr_modulesPostMemTable341: TFDMemTable;
    BackendEndpoint342: TBackendEndpoint;
    RESTResponse342: TRESTResponse;
    BackendEndpoint343: TBackendEndpoint;
    RESTResponse343: TRESTResponse;
    getopenemr_postcalendar_categoriesMemTable343: TFDMemTable;
    BackendEndpoint344: TBackendEndpoint;
    RESTResponse344: TRESTResponse;
    postopenemr_postcalendar_categoriesMemTable344: TFDMemTable;
    postopenemr_postcalendar_categoriesPostMemTable344: TFDMemTable;
    BackendEndpoint345: TBackendEndpoint;
    RESTResponse345: TRESTResponse;
    BackendEndpoint346: TBackendEndpoint;
    RESTResponse346: TRESTResponse;
    getopenemr_postcalendar_eventsMemTable346: TFDMemTable;
    BackendEndpoint347: TBackendEndpoint;
    RESTResponse347: TRESTResponse;
    postopenemr_postcalendar_eventsMemTable347: TFDMemTable;
    postopenemr_postcalendar_eventsPostMemTable347: TFDMemTable;
    BackendEndpoint348: TBackendEndpoint;
    RESTResponse348: TRESTResponse;
    BackendEndpoint349: TBackendEndpoint;
    RESTResponse349: TRESTResponse;
    getopenemr_postcalendar_limitsMemTable349: TFDMemTable;
    BackendEndpoint350: TBackendEndpoint;
    RESTResponse350: TRESTResponse;
    postopenemr_postcalendar_limitsMemTable350: TFDMemTable;
    postopenemr_postcalendar_limitsPostMemTable350: TFDMemTable;
    BackendEndpoint351: TBackendEndpoint;
    RESTResponse351: TRESTResponse;
    BackendEndpoint352: TBackendEndpoint;
    RESTResponse352: TRESTResponse;
    getopenemr_postcalendar_topicsMemTable352: TFDMemTable;
    BackendEndpoint353: TBackendEndpoint;
    RESTResponse353: TRESTResponse;
    postopenemr_postcalendar_topicsMemTable353: TFDMemTable;
    postopenemr_postcalendar_topicsPostMemTable353: TFDMemTable;
    BackendEndpoint354: TBackendEndpoint;
    RESTResponse354: TRESTResponse;
    BackendEndpoint355: TBackendEndpoint;
    RESTResponse355: TRESTResponse;
    getopenemr_session_infoMemTable355: TFDMemTable;
    BackendEndpoint356: TBackendEndpoint;
    RESTResponse356: TRESTResponse;
    postopenemr_session_infoMemTable356: TFDMemTable;
    postopenemr_session_infoPostMemTable356: TFDMemTable;
    BackendEndpoint357: TBackendEndpoint;
    RESTResponse357: TRESTResponse;
    BackendEndpoint358: TBackendEndpoint;
    RESTResponse358: TRESTResponse;
    getpatient_access_offsiteMemTable358: TFDMemTable;
    BackendEndpoint359: TBackendEndpoint;
    RESTResponse359: TRESTResponse;
    postpatient_access_offsiteMemTable359: TFDMemTable;
    postpatient_access_offsitePostMemTable359: TFDMemTable;
    BackendEndpoint360: TBackendEndpoint;
    RESTResponse360: TRESTResponse;
    BackendEndpoint361: TBackendEndpoint;
    RESTResponse361: TRESTResponse;
    getpatient_access_onsiteMemTable361: TFDMemTable;
    BackendEndpoint362: TBackendEndpoint;
    RESTResponse362: TRESTResponse;
    postpatient_access_onsiteMemTable362: TFDMemTable;
    postpatient_access_onsitePostMemTable362: TFDMemTable;
    BackendEndpoint363: TBackendEndpoint;
    RESTResponse363: TRESTResponse;
    BackendEndpoint364: TBackendEndpoint;
    RESTResponse364: TRESTResponse;
    getpatient_dataMemTable364: TFDMemTable;
    BackendEndpoint365: TBackendEndpoint;
    RESTResponse365: TRESTResponse;
    getpatient_portal_menuMemTable365: TFDMemTable;
    BackendEndpoint366: TBackendEndpoint;
    RESTResponse366: TRESTResponse;
    postpatient_portal_menuMemTable366: TFDMemTable;
    postpatient_portal_menuPostMemTable366: TFDMemTable;
    BackendEndpoint367: TBackendEndpoint;
    RESTResponse367: TRESTResponse;
    BackendEndpoint368: TBackendEndpoint;
    RESTResponse368: TRESTResponse;
    getpatient_remindersMemTable368: TFDMemTable;
    BackendEndpoint369: TBackendEndpoint;
    RESTResponse369: TRESTResponse;
    postpatient_remindersMemTable369: TFDMemTable;
    postpatient_remindersPostMemTable369: TFDMemTable;
    BackendEndpoint370: TBackendEndpoint;
    RESTResponse370: TRESTResponse;
    BackendEndpoint371: TBackendEndpoint;
    RESTResponse371: TRESTResponse;
    getpatient_trackerMemTable371: TFDMemTable;
    BackendEndpoint372: TBackendEndpoint;
    RESTResponse372: TRESTResponse;
    postpatient_trackerMemTable372: TFDMemTable;
    postpatient_trackerPostMemTable372: TFDMemTable;
    BackendEndpoint373: TBackendEndpoint;
    RESTResponse373: TRESTResponse;
    BackendEndpoint374: TBackendEndpoint;
    RESTResponse374: TRESTResponse;
    getpatient_tracker_elementMemTable374: TFDMemTable;
    BackendEndpoint375: TBackendEndpoint;
    RESTResponse375: TRESTResponse;
    getpayment_gateway_detailsMemTable375: TFDMemTable;
    BackendEndpoint376: TBackendEndpoint;
    RESTResponse376: TRESTResponse;
    postpayment_gateway_detailsMemTable376: TFDMemTable;
    postpayment_gateway_detailsPostMemTable376: TFDMemTable;
    BackendEndpoint377: TBackendEndpoint;
    RESTResponse377: TRESTResponse;
    BackendEndpoint378: TBackendEndpoint;
    RESTResponse378: TRESTResponse;
    getpaymentsMemTable378: TFDMemTable;
    BackendEndpoint379: TBackendEndpoint;
    RESTResponse379: TRESTResponse;
    postpaymentsMemTable379: TFDMemTable;
    postpaymentsPostMemTable379: TFDMemTable;
    BackendEndpoint380: TBackendEndpoint;
    RESTResponse380: TRESTResponse;
    BackendEndpoint381: TBackendEndpoint;
    RESTResponse381: TRESTResponse;
    getpharmaciesMemTable381: TFDMemTable;
    BackendEndpoint382: TBackendEndpoint;
    RESTResponse382: TRESTResponse;
    postpharmaciesMemTable382: TFDMemTable;
    postpharmaciesPostMemTable382: TFDMemTable;
    BackendEndpoint383: TBackendEndpoint;
    RESTResponse383: TRESTResponse;
    BackendEndpoint384: TBackendEndpoint;
    RESTResponse384: TRESTResponse;
    getphone_numbersMemTable384: TFDMemTable;
    BackendEndpoint385: TBackendEndpoint;
    RESTResponse385: TRESTResponse;
    postphone_numbersMemTable385: TFDMemTable;
    postphone_numbersPostMemTable385: TFDMemTable;
    BackendEndpoint386: TBackendEndpoint;
    RESTResponse386: TRESTResponse;
    BackendEndpoint387: TBackendEndpoint;
    RESTResponse387: TRESTResponse;
    getpnotesMemTable387: TFDMemTable;
    BackendEndpoint388: TBackendEndpoint;
    RESTResponse388: TRESTResponse;
    postpnotesMemTable388: TFDMemTable;
    postpnotesPostMemTable388: TFDMemTable;
    BackendEndpoint389: TBackendEndpoint;
    RESTResponse389: TRESTResponse;
    BackendEndpoint390: TBackendEndpoint;
    RESTResponse390: TRESTResponse;
    getprescriptionsMemTable390: TFDMemTable;
    BackendEndpoint391: TBackendEndpoint;
    RESTResponse391: TRESTResponse;
    postprescriptionsMemTable391: TFDMemTable;
    postprescriptionsPostMemTable391: TFDMemTable;
    BackendEndpoint392: TBackendEndpoint;
    RESTResponse392: TRESTResponse;
    BackendEndpoint393: TBackendEndpoint;
    RESTResponse393: TRESTResponse;
    getpricesMemTable393: TFDMemTable;
    BackendEndpoint394: TBackendEndpoint;
    RESTResponse394: TRESTResponse;
    postpricesMemTable394: TFDMemTable;
    postpricesPostMemTable394: TFDMemTable;
    BackendEndpoint395: TBackendEndpoint;
    RESTResponse395: TRESTResponse;
    BackendEndpoint396: TBackendEndpoint;
    RESTResponse396: TRESTResponse;
    getprocedure_answersMemTable396: TFDMemTable;
    BackendEndpoint397: TBackendEndpoint;
    RESTResponse397: TRESTResponse;
    postprocedure_answersMemTable397: TFDMemTable;
    postprocedure_answersPostMemTable397: TFDMemTable;
    BackendEndpoint398: TBackendEndpoint;
    RESTResponse398: TRESTResponse;
    BackendEndpoint399: TBackendEndpoint;
    RESTResponse399: TRESTResponse;
    getprocedure_orderMemTable399: TFDMemTable;
    BackendEndpoint400: TBackendEndpoint;
    RESTResponse400: TRESTResponse;
    postprocedure_orderMemTable400: TFDMemTable;
    postprocedure_orderPostMemTable400: TFDMemTable;
    BackendEndpoint401: TBackendEndpoint;
    RESTResponse401: TRESTResponse;
    BackendEndpoint402: TBackendEndpoint;
    RESTResponse402: TRESTResponse;
    getprocedure_order_codeMemTable402: TFDMemTable;
    BackendEndpoint403: TBackendEndpoint;
    RESTResponse403: TRESTResponse;
    postprocedure_order_codeMemTable403: TFDMemTable;
    postprocedure_order_codePostMemTable403: TFDMemTable;
    BackendEndpoint404: TBackendEndpoint;
    RESTResponse404: TRESTResponse;
    BackendEndpoint405: TBackendEndpoint;
    RESTResponse405: TRESTResponse;
    getprocedure_providersMemTable405: TFDMemTable;
    BackendEndpoint406: TBackendEndpoint;
    RESTResponse406: TRESTResponse;
    postprocedure_providersMemTable406: TFDMemTable;
    postprocedure_providersPostMemTable406: TFDMemTable;
    BackendEndpoint407: TBackendEndpoint;
    RESTResponse407: TRESTResponse;
    BackendEndpoint408: TBackendEndpoint;
    RESTResponse408: TRESTResponse;
    getprocedure_questionsMemTable408: TFDMemTable;
    BackendEndpoint409: TBackendEndpoint;
    RESTResponse409: TRESTResponse;
    postprocedure_questionsMemTable409: TFDMemTable;
    postprocedure_questionsPostMemTable409: TFDMemTable;
    BackendEndpoint410: TBackendEndpoint;
    RESTResponse410: TRESTResponse;
    BackendEndpoint411: TBackendEndpoint;
    RESTResponse411: TRESTResponse;
    getprocedure_reportMemTable411: TFDMemTable;
    BackendEndpoint412: TBackendEndpoint;
    RESTResponse412: TRESTResponse;
    postprocedure_reportMemTable412: TFDMemTable;
    postprocedure_reportPostMemTable412: TFDMemTable;
    BackendEndpoint413: TBackendEndpoint;
    RESTResponse413: TRESTResponse;
    BackendEndpoint414: TBackendEndpoint;
    RESTResponse414: TRESTResponse;
    getprocedure_resultMemTable414: TFDMemTable;
    BackendEndpoint415: TBackendEndpoint;
    RESTResponse415: TRESTResponse;
    postprocedure_resultMemTable415: TFDMemTable;
    postprocedure_resultPostMemTable415: TFDMemTable;
    BackendEndpoint416: TBackendEndpoint;
    RESTResponse416: TRESTResponse;
    BackendEndpoint417: TBackendEndpoint;
    RESTResponse417: TRESTResponse;
    getprocedure_typeMemTable417: TFDMemTable;
    BackendEndpoint418: TBackendEndpoint;
    RESTResponse418: TRESTResponse;
    postprocedure_typeMemTable418: TFDMemTable;
    postprocedure_typePostMemTable418: TFDMemTable;
    BackendEndpoint419: TBackendEndpoint;
    RESTResponse419: TRESTResponse;
    BackendEndpoint420: TBackendEndpoint;
    RESTResponse420: TRESTResponse;
    getproduct_warehouseMemTable420: TFDMemTable;
    BackendEndpoint421: TBackendEndpoint;
    RESTResponse421: TRESTResponse;
    postproduct_warehouseMemTable421: TFDMemTable;
    postproduct_warehousePostMemTable421: TFDMemTable;
    BackendEndpoint422: TBackendEndpoint;
    RESTResponse422: TRESTResponse;
    BackendEndpoint423: TBackendEndpoint;
    RESTResponse423: TRESTResponse;
    getregistryMemTable423: TFDMemTable;
    BackendEndpoint424: TBackendEndpoint;
    RESTResponse424: TRESTResponse;
    postregistryMemTable424: TFDMemTable;
    postregistryPostMemTable424: TFDMemTable;
    BackendEndpoint425: TBackendEndpoint;
    RESTResponse425: TRESTResponse;
    BackendEndpoint426: TBackendEndpoint;
    RESTResponse426: TRESTResponse;
    getreport_itemizedMemTable426: TFDMemTable;
    BackendEndpoint427: TBackendEndpoint;
    RESTResponse427: TRESTResponse;
    getreport_resultsMemTable427: TFDMemTable;
    BackendEndpoint428: TBackendEndpoint;
    RESTResponse428: TRESTResponse;
    postreport_resultsMemTable428: TFDMemTable;
    postreport_resultsPostMemTable428: TFDMemTable;
    BackendEndpoint429: TBackendEndpoint;
    RESTResponse429: TRESTResponse;
    BackendEndpoint430: TBackendEndpoint;
    RESTResponse430: TRESTResponse;
    getrule_actionMemTable430: TFDMemTable;
    BackendEndpoint431: TBackendEndpoint;
    RESTResponse431: TRESTResponse;
    getrule_action_itemMemTable431: TFDMemTable;
    BackendEndpoint432: TBackendEndpoint;
    RESTResponse432: TRESTResponse;
    postrule_action_itemMemTable432: TFDMemTable;
    postrule_action_itemPostMemTable432: TFDMemTable;
    BackendEndpoint433: TBackendEndpoint;
    RESTResponse433: TRESTResponse;
    BackendEndpoint434: TBackendEndpoint;
    RESTResponse434: TRESTResponse;
    getrule_filterMemTable434: TFDMemTable;
    BackendEndpoint435: TBackendEndpoint;
    RESTResponse435: TRESTResponse;
    getrule_patient_dataMemTable435: TFDMemTable;
    BackendEndpoint436: TBackendEndpoint;
    RESTResponse436: TRESTResponse;
    postrule_patient_dataMemTable436: TFDMemTable;
    postrule_patient_dataPostMemTable436: TFDMemTable;
    BackendEndpoint437: TBackendEndpoint;
    RESTResponse437: TRESTResponse;
    BackendEndpoint438: TBackendEndpoint;
    RESTResponse438: TRESTResponse;
    getrule_reminderMemTable438: TFDMemTable;
    BackendEndpoint439: TBackendEndpoint;
    RESTResponse439: TRESTResponse;
    getrule_targetMemTable439: TFDMemTable;
    BackendEndpoint440: TBackendEndpoint;
    RESTResponse440: TRESTResponse;
    getsequencesMemTable440: TFDMemTable;
    BackendEndpoint441: TBackendEndpoint;
    RESTResponse441: TRESTResponse;
    getshared_attributesMemTable441: TFDMemTable;
    BackendEndpoint442: TBackendEndpoint;
    RESTResponse442: TRESTResponse;
    postshared_attributesMemTable442: TFDMemTable;
    postshared_attributesPostMemTable442: TFDMemTable;
    BackendEndpoint443: TBackendEndpoint;
    RESTResponse443: TRESTResponse;
    BackendEndpoint444: TBackendEndpoint;
    RESTResponse444: TRESTResponse;
    getstandardized_tables_trackMemTable444: TFDMemTable;
    BackendEndpoint445: TBackendEndpoint;
    RESTResponse445: TRESTResponse;
    poststandardized_tables_trackMemTable445: TFDMemTable;
    poststandardized_tables_trackPostMemTable445: TFDMemTable;
    BackendEndpoint446: TBackendEndpoint;
    RESTResponse446: TRESTResponse;
    BackendEndpoint447: TBackendEndpoint;
    RESTResponse447: TRESTResponse;
    getsupported_external_dataloadsMemTable447: TFDMemTable;
    BackendEndpoint448: TBackendEndpoint;
    RESTResponse448: TRESTResponse;
    getsyndromic_surveillanceMemTable448: TFDMemTable;
    BackendEndpoint449: TBackendEndpoint;
    RESTResponse449: TRESTResponse;
    postsyndromic_surveillanceMemTable449: TFDMemTable;
    postsyndromic_surveillancePostMemTable449: TFDMemTable;
    BackendEndpoint450: TBackendEndpoint;
    RESTResponse450: TRESTResponse;
    BackendEndpoint451: TBackendEndpoint;
    RESTResponse451: TRESTResponse;
    gettemplate_usersMemTable451: TFDMemTable;
    BackendEndpoint452: TBackendEndpoint;
    RESTResponse452: TRESTResponse;
    posttemplate_usersMemTable452: TFDMemTable;
    posttemplate_usersPostMemTable452: TFDMemTable;
    BackendEndpoint453: TBackendEndpoint;
    RESTResponse453: TRESTResponse;
    BackendEndpoint454: TBackendEndpoint;
    RESTResponse454: TRESTResponse;
    gettransactionsMemTable454: TFDMemTable;
    BackendEndpoint455: TBackendEndpoint;
    RESTResponse455: TRESTResponse;
    posttransactionsMemTable455: TFDMemTable;
    posttransactionsPostMemTable455: TFDMemTable;
    BackendEndpoint456: TBackendEndpoint;
    RESTResponse456: TRESTResponse;
    BackendEndpoint457: TBackendEndpoint;
    RESTResponse457: TRESTResponse;
    getuser_settingsMemTable457: TFDMemTable;
    BackendEndpoint458: TBackendEndpoint;
    RESTResponse458: TRESTResponse;
    postuser_settingsMemTable458: TFDMemTable;
    postuser_settingsPostMemTable458: TFDMemTable;
    BackendEndpoint459: TBackendEndpoint;
    RESTResponse459: TRESTResponse;
    BackendEndpoint460: TBackendEndpoint;
    RESTResponse460: TRESTResponse;
    getusersMemTable460: TFDMemTable;
    BackendEndpoint461: TBackendEndpoint;
    RESTResponse461: TRESTResponse;
    postusersMemTable461: TFDMemTable;
    postusersPostMemTable461: TFDMemTable;
    BackendEndpoint462: TBackendEndpoint;
    RESTResponse462: TRESTResponse;
    BackendEndpoint463: TBackendEndpoint;
    RESTResponse463: TRESTResponse;
    getusers_facilityMemTable463: TFDMemTable;
    BackendEndpoint464: TBackendEndpoint;
    RESTResponse464: TRESTResponse;
    postusers_facilityMemTable464: TFDMemTable;
    postusers_facilityPostMemTable464: TFDMemTable;
    BackendEndpoint465: TBackendEndpoint;
    RESTResponse465: TRESTResponse;
    BackendEndpoint466: TBackendEndpoint;
    RESTResponse466: TRESTResponse;
    getusers_secureMemTable466: TFDMemTable;
    BackendEndpoint467: TBackendEndpoint;
    RESTResponse467: TRESTResponse;
    postusers_secureMemTable467: TFDMemTable;
    postusers_securePostMemTable467: TFDMemTable;
    BackendEndpoint468: TBackendEndpoint;
    RESTResponse468: TRESTResponse;
    BackendEndpoint469: TBackendEndpoint;
    RESTResponse469: TRESTResponse;
    getvaluesetMemTable469: TFDMemTable;
    BackendEndpoint470: TBackendEndpoint;
    RESTResponse470: TRESTResponse;
    postvaluesetMemTable470: TFDMemTable;
    postvaluesetPostMemTable470: TFDMemTable;
    BackendEndpoint471: TBackendEndpoint;
    RESTResponse471: TRESTResponse;
    BackendEndpoint472: TBackendEndpoint;
    RESTResponse472: TRESTResponse;
    getversionMemTable472: TFDMemTable;
    BackendEndpoint473: TBackendEndpoint;
    RESTResponse473: TRESTResponse;
    getvoidsMemTable473: TFDMemTable;
    BackendEndpoint474: TBackendEndpoint;
    RESTResponse474: TRESTResponse;
    postvoidsMemTable474: TFDMemTable;
    postvoidsPostMemTable474: TFDMemTable;
    BackendEndpoint475: TBackendEndpoint;
    RESTResponse475: TRESTResponse;
    BackendEndpoint476: TBackendEndpoint;
    RESTResponse476: TRESTResponse;
    getx12_partnersMemTable476: TFDMemTable;
    BackendEndpoint477: TBackendEndpoint;
    RESTResponse477: TRESTResponse;
    postx12_partnersMemTable477: TFDMemTable;
    postx12_partnersPostMemTable477: TFDMemTable;
    BackendEndpoint478: TBackendEndpoint;
    RESTResponse478: TRESTResponse;
    BackendAuth1: TBackendAuth;
    EMSProvider1: TEMSProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CallGet(MethodName: string);
    procedure CallPost(MethodName: string);
    procedure CallDelete(MethodName: string; const ID: String);
  published
    procedure getaddressesExecute;
    procedure postaddressesExecute;
    procedure deleteaddressesExecute(const ID: String);
    procedure getamc_misc_dataExecute;
    procedure getamendmentsExecute;
    procedure postamendmentsExecute;
    procedure deleteamendmentsExecute(const ID: String);
    procedure getamendments_historyExecute;
    procedure getar_activityExecute;
    procedure postar_activityExecute;
    procedure deletear_activityExecute(const ID: String);
    procedure getar_sessionExecute;
    procedure postar_sessionExecute;
    procedure deletear_sessionExecute(const ID: String);
    procedure getarrayExecute;
    procedure getaudit_detailsExecute;
    procedure postaudit_detailsExecute;
    procedure deleteaudit_detailsExecute(const ID: String);
    procedure getaudit_masterExecute;
    procedure postaudit_masterExecute;
    procedure deleteaudit_masterExecute(const ID: String);
    procedure getautomatic_notificationExecute;
    procedure postautomatic_notificationExecute;
    procedure deleteautomatic_notificationExecute(const ID: String);
    procedure getbackground_servicesExecute;
    procedure postbackground_servicesExecute;
    procedure deletebackground_servicesExecute(const ID: String);
    procedure getbatchcomExecute;
    procedure postbatchcomExecute;
    procedure deletebatchcomExecute(const ID: String);
    procedure getbillingExecute;
    procedure postbillingExecute;
    procedure deletebillingExecute(const ID: String);
    procedure getcalendar_externalExecute;
    procedure postcalendar_externalExecute;
    procedure deletecalendar_externalExecute(const ID: String);
    procedure getcategoriesExecute;
    procedure postcategoriesExecute;
    procedure deletecategoriesExecute(const ID: String);
    procedure getcategories_seqExecute;
    procedure postcategories_seqExecute;
    procedure deletecategories_seqExecute(const ID: String);
    procedure getcategories_to_documentsExecute;
    procedure postcategories_to_documentsExecute;
    procedure deletecategories_to_documentsExecute(const ID: String);
    procedure getccdaExecute;
    procedure postccdaExecute;
    procedure deleteccdaExecute(const ID: String);
    procedure getccda_componentsExecute;
    procedure postccda_componentsExecute;
    procedure deleteccda_componentsExecute(const ID: String);
    procedure getccda_field_mappingExecute;
    procedure postccda_field_mappingExecute;
    procedure deleteccda_field_mappingExecute(const ID: String);
    procedure getccda_sectionsExecute;
    procedure postccda_sectionsExecute;
    procedure deleteccda_sectionsExecute(const ID: String);
    procedure getccda_table_mappingExecute;
    procedure postccda_table_mappingExecute;
    procedure deleteccda_table_mappingExecute(const ID: String);
    procedure getchart_trackerExecute;
    procedure postchart_trackerExecute;
    procedure deletechart_trackerExecute(const ID: String);
    procedure getclaimsExecute;
    procedure postclaimsExecute;
    procedure deleteclaimsExecute(const ID: String);
    procedure getclinical_plansExecute;
    procedure postclinical_plansExecute;
    procedure deleteclinical_plansExecute(const ID: String);
    procedure getclinical_plans_rulesExecute;
    procedure postclinical_plans_rulesExecute;
    procedure deleteclinical_plans_rulesExecute(const ID: String);
    procedure getclinical_rulesExecute;
    procedure postclinical_rulesExecute;
    procedure deleteclinical_rulesExecute(const ID: String);
    procedure getclinical_rules_logExecute;
    procedure postclinical_rules_logExecute;
    procedure deleteclinical_rules_logExecute(const ID: String);
    procedure getcode_typesExecute;
    procedure postcode_typesExecute;
    procedure deletecode_typesExecute(const ID: String);
    procedure getcodesExecute;
    procedure postcodesExecute;
    procedure deletecodesExecute(const ID: String);
    procedure getconfigExecute;
    procedure postconfigExecute;
    procedure deleteconfigExecute(const ID: String);
    procedure getconfig_seqExecute;
    procedure postconfig_seqExecute;
    procedure deleteconfig_seqExecute(const ID: String);
    procedure getcustomlistsExecute;
    procedure postcustomlistsExecute;
    procedure deletecustomlistsExecute(const ID: String);
    procedure getdated_remindersExecute;
    procedure postdated_remindersExecute;
    procedure deletedated_remindersExecute(const ID: String);
    procedure getdated_reminders_linkExecute;
    procedure postdated_reminders_linkExecute;
    procedure deletedated_reminders_linkExecute(const ID: String);
    procedure getdirect_message_logExecute;
    procedure postdirect_message_logExecute;
    procedure deletedirect_message_logExecute(const ID: String);
    procedure getdocumentsExecute;
    procedure postdocumentsExecute;
    procedure deletedocumentsExecute(const ID: String);
    procedure getdocuments_legal_categoriesExecute;
    procedure postdocuments_legal_categoriesExecute;
    procedure deletedocuments_legal_categoriesExecute(const ID: String);
    procedure getdocuments_legal_detailExecute;
    procedure postdocuments_legal_detailExecute;
    procedure deletedocuments_legal_detailExecute(const ID: String);
    procedure getdocuments_legal_masterExecute;
    procedure postdocuments_legal_masterExecute;
    procedure deletedocuments_legal_masterExecute(const ID: String);
    procedure getdrug_inventoryExecute;
    procedure postdrug_inventoryExecute;
    procedure deletedrug_inventoryExecute(const ID: String);
    procedure getdrug_salesExecute;
    procedure postdrug_salesExecute;
    procedure deletedrug_salesExecute(const ID: String);
    procedure getdrug_templatesExecute;
    procedure postdrug_templatesExecute;
    procedure deletedrug_templatesExecute(const ID: String);
    procedure getdrugsExecute;
    procedure postdrugsExecute;
    procedure deletedrugsExecute(const ID: String);
    procedure geteligibility_responseExecute;
    procedure posteligibility_responseExecute;
    procedure deleteeligibility_responseExecute(const ID: String);
    procedure geteligibility_verificationExecute;
    procedure posteligibility_verificationExecute;
    procedure deleteeligibility_verificationExecute(const ID: String);
    procedure getemployer_dataExecute;
    procedure postemployer_dataExecute;
    procedure deleteemployer_dataExecute(const ID: String);
    procedure getenc_category_mapExecute;
    procedure geterx_drug_paidExecute;
    procedure posterx_drug_paidExecute;
    procedure deleteerx_drug_paidExecute(const ID: String);
    procedure geterx_narcoticsExecute;
    procedure posterx_narcoticsExecute;
    procedure deleteerx_narcoticsExecute(const ID: String);
    procedure geterx_rx_logExecute;
    procedure posterx_rx_logExecute;
    procedure deleteerx_rx_logExecute(const ID: String);
    procedure geterx_ttl_touchExecute;
    procedure posterx_ttl_touchExecute;
    procedure deleteerx_ttl_touchExecute(const ID: String);
    procedure getesign_signaturesExecute;
    procedure postesign_signaturesExecute;
    procedure deleteesign_signaturesExecute(const ID: String);
    procedure getextended_logExecute;
    procedure postextended_logExecute;
    procedure deleteextended_logExecute(const ID: String);
    procedure getexternal_encountersExecute;
    procedure postexternal_encountersExecute;
    procedure deleteexternal_encountersExecute(const ID: String);
    procedure getexternal_proceduresExecute;
    procedure postexternal_proceduresExecute;
    procedure deleteexternal_proceduresExecute(const ID: String);
    procedure getfacilityExecute;
    procedure postfacilityExecute;
    procedure deletefacilityExecute(const ID: String);
    procedure getfacility_user_idsExecute;
    procedure postfacility_user_idsExecute;
    procedure deletefacility_user_idsExecute(const ID: String);
    procedure getfee_sheet_optionsExecute;
    procedure getform_care_planExecute;
    procedure getform_clinical_instructionsExecute;
    procedure postform_clinical_instructionsExecute;
    procedure deleteform_clinical_instructionsExecute(const ID: String);
    procedure getform_dictationExecute;
    procedure postform_dictationExecute;
    procedure deleteform_dictationExecute(const ID: String);
    procedure getform_encounterExecute;
    procedure postform_encounterExecute;
    procedure deleteform_encounterExecute(const ID: String);
    procedure getform_eye_mag_dispenseExecute;
    procedure postform_eye_mag_dispenseExecute;
    procedure deleteform_eye_mag_dispenseExecute(const ID: String);
    procedure getform_eye_mag_prefsExecute;
    procedure getform_functional_cognitive_statusExecute;
    procedure getform_misc_billing_optionsExecute;
    procedure postform_misc_billing_optionsExecute;
    procedure deleteform_misc_billing_optionsExecute(const ID: String);
    procedure getform_observationExecute;
    procedure getform_reviewofsExecute;
    procedure postform_reviewofsExecute;
    procedure deleteform_reviewofsExecute(const ID: String);
    procedure getform_rosExecute;
    procedure postform_rosExecute;
    procedure deleteform_rosExecute(const ID: String);
    procedure getform_soapExecute;
    procedure postform_soapExecute;
    procedure deleteform_soapExecute(const ID: String);
    procedure getform_vitalsExecute;
    procedure postform_vitalsExecute;
    procedure deleteform_vitalsExecute(const ID: String);
    procedure getformsExecute;
    procedure postformsExecute;
    procedure deleteformsExecute(const ID: String);
    procedure getgeo_country_referenceExecute;
    procedure postgeo_country_referenceExecute;
    procedure deletegeo_country_referenceExecute(const ID: String);
    procedure getgeo_zone_referenceExecute;
    procedure postgeo_zone_referenceExecute;
    procedure deletegeo_zone_referenceExecute(const ID: String);
    procedure getglobalsExecute;
    procedure postglobalsExecute;
    procedure deleteglobalsExecute(const ID: String);
    procedure getgprelationsExecute;
    procedure postgprelationsExecute;
    procedure deletegprelationsExecute(const ID: String);
    procedure getgroupsExecute;
    procedure postgroupsExecute;
    procedure deletegroupsExecute(const ID: String);
    procedure gethistory_dataExecute;
    procedure posthistory_dataExecute;
    procedure deletehistory_dataExecute(const ID: String);
    procedure geticd10_dx_order_codeExecute;
    procedure geticd10_gem_dx_10_9Execute;
    procedure geticd10_gem_dx_9_10Execute;
    procedure geticd10_gem_pcs_10_9Execute;
    procedure geticd10_gem_pcs_9_10Execute;
    procedure geticd10_pcs_order_codeExecute;
    procedure geticd10_reimbr_dx_9_10Execute;
    procedure geticd10_reimbr_pcs_9_10Execute;
    procedure geticd9_dx_codeExecute;
    procedure geticd9_dx_long_codeExecute;
    procedure geticd9_sg_codeExecute;
    procedure geticd9_sg_long_codeExecute;
    procedure getimmunization_observationExecute;
    procedure postimmunization_observationExecute;
    procedure deleteimmunization_observationExecute(const ID: String);
    procedure getimmunizationsExecute;
    procedure postimmunizationsExecute;
    procedure deleteimmunizationsExecute(const ID: String);
    procedure getinsurance_companiesExecute;
    procedure postinsurance_companiesExecute;
    procedure deleteinsurance_companiesExecute(const ID: String);
    procedure getinsurance_dataExecute;
    procedure postinsurance_dataExecute;
    procedure deleteinsurance_dataExecute(const ID: String);
    procedure getinsurance_numbersExecute;
    procedure postinsurance_numbersExecute;
    procedure deleteinsurance_numbersExecute(const ID: String);
    procedure getissue_encounterExecute;
    procedure postissue_encounterExecute;
    procedure deleteissue_encounterExecute(const ID: String);
    procedure getissue_typesExecute;
    procedure postissue_typesExecute;
    procedure deleteissue_typesExecute(const ID: String);
    procedure get_keys_Execute;
    procedure post_keys_Execute;
    procedure delete_keys_Execute(const ID: String);
    procedure getlang_constantsExecute;
    procedure getlang_customExecute;
    procedure getlang_definitionsExecute;
    procedure getlang_languagesExecute;
    procedure getlayout_group_propertiesExecute;
    procedure postlayout_group_propertiesExecute;
    procedure deletelayout_group_propertiesExecute(const ID: String);
    procedure getlayout_optionsExecute;
    procedure postlayout_optionsExecute;
    procedure deletelayout_optionsExecute(const ID: String);
    procedure getlbf_dataExecute;
    procedure postlbf_dataExecute;
    procedure deletelbf_dataExecute(const ID: String);
    procedure getlbt_dataExecute;
    procedure postlbt_dataExecute;
    procedure deletelbt_dataExecute(const ID: String);
    procedure getlist_optionsExecute;
    procedure postlist_optionsExecute;
    procedure deletelist_optionsExecute(const ID: String);
    procedure getlistsExecute;
    procedure postlistsExecute;
    procedure deletelistsExecute(const ID: String);
    procedure getlists_touchExecute;
    procedure postlists_touchExecute;
    procedure deletelists_touchExecute(const ID: String);
    procedure getlogExecute;
    procedure postlogExecute;
    procedure deletelogExecute(const ID: String);
    procedure getlog_comment_encryptExecute;
    procedure postlog_comment_encryptExecute;
    procedure deletelog_comment_encryptExecute(const ID: String);
    procedure getmisc_address_bookExecute;
    procedure postmisc_address_bookExecute;
    procedure deletemisc_address_bookExecute(const ID: String);
    procedure getmodule_acl_group_settingsExecute;
    procedure postmodule_acl_group_settingsExecute;
    procedure deletemodule_acl_group_settingsExecute(const ID: String);
    procedure getmodule_acl_sectionsExecute;
    procedure getmodule_acl_user_settingsExecute;
    procedure postmodule_acl_user_settingsExecute;
    procedure deletemodule_acl_user_settingsExecute(const ID: String);
    procedure getmodule_configurationExecute;
    procedure postmodule_configurationExecute;
    procedure deletemodule_configurationExecute(const ID: String);
    procedure getmodulesExecute;
    procedure postmodulesExecute;
    procedure deletemodulesExecute(const ID: String);
    procedure getmodules_hooks_settingsExecute;
    procedure postmodules_hooks_settingsExecute;
    procedure deletemodules_hooks_settingsExecute(const ID: String);
    procedure getmodules_settingsExecute;
    procedure getnotesExecute;
    procedure postnotesExecute;
    procedure deletenotesExecute(const ID: String);
    procedure getnotification_logExecute;
    procedure postnotification_logExecute;
    procedure deletenotification_logExecute(const ID: String);
    procedure getnotification_settingsExecute;
    procedure postnotification_settingsExecute;
    procedure deletenotification_settingsExecute(const ID: String);
    procedure getonotesExecute;
    procedure postonotesExecute;
    procedure deleteonotesExecute(const ID: String);
    procedure getonsite_documentsExecute;
    procedure postonsite_documentsExecute;
    procedure deleteonsite_documentsExecute(const ID: String);
    procedure getonsite_mailExecute;
    procedure postonsite_mailExecute;
    procedure deleteonsite_mailExecute(const ID: String);
    procedure getonsite_messagesExecute;
    procedure postonsite_messagesExecute;
    procedure deleteonsite_messagesExecute(const ID: String);
    procedure getonsite_onlineExecute;
    procedure postonsite_onlineExecute;
    procedure deleteonsite_onlineExecute(const ID: String);
    procedure getonsite_portal_activityExecute;
    procedure postonsite_portal_activityExecute;
    procedure deleteonsite_portal_activityExecute(const ID: String);
    procedure getonsite_signaturesExecute;
    procedure postonsite_signaturesExecute;
    procedure deleteonsite_signaturesExecute(const ID: String);
    procedure getopenemr_module_varsExecute;
    procedure postopenemr_module_varsExecute;
    procedure deleteopenemr_module_varsExecute(const ID: String);
    procedure getopenemr_modulesExecute;
    procedure postopenemr_modulesExecute;
    procedure deleteopenemr_modulesExecute(const ID: String);
    procedure getopenemr_postcalendar_categoriesExecute;
    procedure postopenemr_postcalendar_categoriesExecute;
    procedure deleteopenemr_postcalendar_categoriesExecute(const ID: String);
    procedure getopenemr_postcalendar_eventsExecute;
    procedure postopenemr_postcalendar_eventsExecute;
    procedure deleteopenemr_postcalendar_eventsExecute(const ID: String);
    procedure getopenemr_postcalendar_limitsExecute;
    procedure postopenemr_postcalendar_limitsExecute;
    procedure deleteopenemr_postcalendar_limitsExecute(const ID: String);
    procedure getopenemr_postcalendar_topicsExecute;
    procedure postopenemr_postcalendar_topicsExecute;
    procedure deleteopenemr_postcalendar_topicsExecute(const ID: String);
    procedure getopenemr_session_infoExecute;
    procedure postopenemr_session_infoExecute;
    procedure deleteopenemr_session_infoExecute(const ID: String);
    procedure getpatient_access_offsiteExecute;
    procedure postpatient_access_offsiteExecute;
    procedure deletepatient_access_offsiteExecute(const ID: String);
    procedure getpatient_access_onsiteExecute;
    procedure postpatient_access_onsiteExecute;
    procedure deletepatient_access_onsiteExecute(const ID: String);
    procedure getpatient_dataExecute;
    procedure getpatient_portal_menuExecute;
    procedure postpatient_portal_menuExecute;
    procedure deletepatient_portal_menuExecute(const ID: String);
    procedure getpatient_remindersExecute;
    procedure postpatient_remindersExecute;
    procedure deletepatient_remindersExecute(const ID: String);
    procedure getpatient_trackerExecute;
    procedure postpatient_trackerExecute;
    procedure deletepatient_trackerExecute(const ID: String);
    procedure getpatient_tracker_elementExecute;
    procedure getpayment_gateway_detailsExecute;
    procedure postpayment_gateway_detailsExecute;
    procedure deletepayment_gateway_detailsExecute(const ID: String);
    procedure getpaymentsExecute;
    procedure postpaymentsExecute;
    procedure deletepaymentsExecute(const ID: String);
    procedure getpharmaciesExecute;
    procedure postpharmaciesExecute;
    procedure deletepharmaciesExecute(const ID: String);
    procedure getphone_numbersExecute;
    procedure postphone_numbersExecute;
    procedure deletephone_numbersExecute(const ID: String);
    procedure getpnotesExecute;
    procedure postpnotesExecute;
    procedure deletepnotesExecute(const ID: String);
    procedure getprescriptionsExecute;
    procedure postprescriptionsExecute;
    procedure deleteprescriptionsExecute(const ID: String);
    procedure getpricesExecute;
    procedure postpricesExecute;
    procedure deletepricesExecute(const ID: String);
    procedure getprocedure_answersExecute;
    procedure postprocedure_answersExecute;
    procedure deleteprocedure_answersExecute(const ID: String);
    procedure getprocedure_orderExecute;
    procedure postprocedure_orderExecute;
    procedure deleteprocedure_orderExecute(const ID: String);
    procedure getprocedure_order_codeExecute;
    procedure postprocedure_order_codeExecute;
    procedure deleteprocedure_order_codeExecute(const ID: String);
    procedure getprocedure_providersExecute;
    procedure postprocedure_providersExecute;
    procedure deleteprocedure_providersExecute(const ID: String);
    procedure getprocedure_questionsExecute;
    procedure postprocedure_questionsExecute;
    procedure deleteprocedure_questionsExecute(const ID: String);
    procedure getprocedure_reportExecute;
    procedure postprocedure_reportExecute;
    procedure deleteprocedure_reportExecute(const ID: String);
    procedure getprocedure_resultExecute;
    procedure postprocedure_resultExecute;
    procedure deleteprocedure_resultExecute(const ID: String);
    procedure getprocedure_typeExecute;
    procedure postprocedure_typeExecute;
    procedure deleteprocedure_typeExecute(const ID: String);
    procedure getproduct_warehouseExecute;
    procedure postproduct_warehouseExecute;
    procedure deleteproduct_warehouseExecute(const ID: String);
    procedure getregistryExecute;
    procedure postregistryExecute;
    procedure deleteregistryExecute(const ID: String);
    procedure getreport_itemizedExecute;
    procedure getreport_resultsExecute;
    procedure postreport_resultsExecute;
    procedure deletereport_resultsExecute(const ID: String);
    procedure getrule_actionExecute;
    procedure getrule_action_itemExecute;
    procedure postrule_action_itemExecute;
    procedure deleterule_action_itemExecute(const ID: String);
    procedure getrule_filterExecute;
    procedure getrule_patient_dataExecute;
    procedure postrule_patient_dataExecute;
    procedure deleterule_patient_dataExecute(const ID: String);
    procedure getrule_reminderExecute;
    procedure getrule_targetExecute;
    procedure getsequencesExecute;
    procedure getshared_attributesExecute;
    procedure postshared_attributesExecute;
    procedure deleteshared_attributesExecute(const ID: String);
    procedure getstandardized_tables_trackExecute;
    procedure poststandardized_tables_trackExecute;
    procedure deletestandardized_tables_trackExecute(const ID: String);
    procedure getsupported_external_dataloadsExecute;
    procedure getsyndromic_surveillanceExecute;
    procedure postsyndromic_surveillanceExecute;
    procedure deletesyndromic_surveillanceExecute(const ID: String);
    procedure gettemplate_usersExecute;
    procedure posttemplate_usersExecute;
    procedure deletetemplate_usersExecute(const ID: String);
    procedure gettransactionsExecute;
    procedure posttransactionsExecute;
    procedure deletetransactionsExecute(const ID: String);
    procedure getuser_settingsExecute;
    procedure postuser_settingsExecute;
    procedure deleteuser_settingsExecute(const ID: String);
    procedure getusersExecute;
    procedure postusersExecute;
    procedure deleteusersExecute(const ID: String);
    procedure getusers_facilityExecute;
    procedure postusers_facilityExecute;
    procedure deleteusers_facilityExecute(const ID: String);
    procedure getusers_secureExecute;
    procedure postusers_secureExecute;
    procedure deleteusers_secureExecute(const ID: String);
    procedure getvaluesetExecute;
    procedure postvaluesetExecute;
    procedure deletevaluesetExecute(const ID: String);
    procedure getversionExecute;
    procedure getvoidsExecute;
    procedure postvoidsExecute;
    procedure deletevoidsExecute(const ID: String);
    procedure getx12_partnersExecute;
    procedure postx12_partnersExecute;
    procedure deletex12_partnersExecute(const ID: String);
  end;

var
  AutoTablesClientDM: TAutoTablesClientDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

// https://stackoverflow.com/questions/4186458/delphi-call-a-function-whose-name-is-stored-in-a-string
procedure TAutoTablesClientDM.CallGet(MethodName: string);
var M: System.TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  TGetFuncType(m)();
end;

procedure TAutoTablesClientDM.CallPost(MethodName: string);
var M: System.TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  TPostFuncType(m)();
end;

procedure TAutoTablesClientDM.CallDelete(MethodName: string; const ID: String);
var M: System.TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  TDeleteFuncType(m)(ID);
end;


procedure TAutoTablesClientDM.getaddressesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint1.Execute;
  if RESTResponse1.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse1.RawBytes);
      getaddressesMemTable1.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postaddressesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postaddressesPostMemTable2.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint2.ClearBody;
  BackendEndpoint2.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint2.Execute;
  if RESTResponse2.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse2.RawBytes);
      postaddressesMemTable2.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteaddressesExecute(const ID: String);
begin
  BackendEndpoint3.Params.ParameterByName('id').Value := ID;
  BackendEndpoint3.Execute;
end;

procedure TAutoTablesClientDM.getamc_misc_dataExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint4.Execute;
  if RESTResponse4.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse4.RawBytes);
      getamc_misc_dataMemTable4.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getamendmentsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint5.Execute;
  if RESTResponse5.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse5.RawBytes);
      getamendmentsMemTable5.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postamendmentsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postamendmentsPostMemTable6.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint6.ClearBody;
  BackendEndpoint6.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint6.Execute;
  if RESTResponse6.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse6.RawBytes);
      postamendmentsMemTable6.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteamendmentsExecute(const ID: String);
begin
  BackendEndpoint7.Params.ParameterByName('amendment_id').Value := ID;
  BackendEndpoint7.Execute;
end;

procedure TAutoTablesClientDM.getamendments_historyExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint8.Execute;
  if RESTResponse8.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse8.RawBytes);
      getamendments_historyMemTable8.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getar_activityExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint9.Execute;
  if RESTResponse9.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse9.RawBytes);
      getar_activityMemTable9.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postar_activityExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postar_activityPostMemTable10.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint10.ClearBody;
  BackendEndpoint10.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint10.Execute;
  if RESTResponse10.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse10.RawBytes);
      postar_activityMemTable10.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletear_activityExecute(const ID: String);
begin
  BackendEndpoint11.Params.ParameterByName('pid').Value := ID;
  BackendEndpoint11.Execute;
end;

procedure TAutoTablesClientDM.getar_sessionExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint12.Execute;
  if RESTResponse12.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse12.RawBytes);
      getar_sessionMemTable12.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postar_sessionExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postar_sessionPostMemTable13.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint13.ClearBody;
  BackendEndpoint13.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint13.Execute;
  if RESTResponse13.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse13.RawBytes);
      postar_sessionMemTable13.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletear_sessionExecute(const ID: String);
begin
  BackendEndpoint14.Params.ParameterByName('session_id').Value := ID;
  BackendEndpoint14.Execute;
end;

procedure TAutoTablesClientDM.getarrayExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint15.Execute;
  if RESTResponse15.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse15.RawBytes);
      getarrayMemTable15.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getaudit_detailsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint16.Execute;
  if RESTResponse16.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse16.RawBytes);
      getaudit_detailsMemTable16.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postaudit_detailsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postaudit_detailsPostMemTable17.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint17.ClearBody;
  BackendEndpoint17.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint17.Execute;
  if RESTResponse17.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse17.RawBytes);
      postaudit_detailsMemTable17.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteaudit_detailsExecute(const ID: String);
begin
  BackendEndpoint18.Params.ParameterByName('id').Value := ID;
  BackendEndpoint18.Execute;
end;

procedure TAutoTablesClientDM.getaudit_masterExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint19.Execute;
  if RESTResponse19.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse19.RawBytes);
      getaudit_masterMemTable19.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postaudit_masterExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postaudit_masterPostMemTable20.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint20.ClearBody;
  BackendEndpoint20.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint20.Execute;
  if RESTResponse20.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse20.RawBytes);
      postaudit_masterMemTable20.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteaudit_masterExecute(const ID: String);
begin
  BackendEndpoint21.Params.ParameterByName('id').Value := ID;
  BackendEndpoint21.Execute;
end;

procedure TAutoTablesClientDM.getautomatic_notificationExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint22.Execute;
  if RESTResponse22.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse22.RawBytes);
      getautomatic_notificationMemTable22.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postautomatic_notificationExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postautomatic_notificationPostMemTable23.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint23.ClearBody;
  BackendEndpoint23.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint23.Execute;
  if RESTResponse23.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse23.RawBytes);
      postautomatic_notificationMemTable23.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteautomatic_notificationExecute(const ID: String);
begin
  BackendEndpoint24.Params.ParameterByName('notification_id').Value := ID;
  BackendEndpoint24.Execute;
end;

procedure TAutoTablesClientDM.getbackground_servicesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint25.Execute;
  if RESTResponse25.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse25.RawBytes);
      getbackground_servicesMemTable25.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postbackground_servicesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postbackground_servicesPostMemTable26.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint26.ClearBody;
  BackendEndpoint26.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint26.Execute;
  if RESTResponse26.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse26.RawBytes);
      postbackground_servicesMemTable26.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletebackground_servicesExecute(const ID: String);
begin
  BackendEndpoint27.Params.ParameterByName('name').Value := ID;
  BackendEndpoint27.Execute;
end;

procedure TAutoTablesClientDM.getbatchcomExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint28.Execute;
  if RESTResponse28.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse28.RawBytes);
      getbatchcomMemTable28.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postbatchcomExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postbatchcomPostMemTable29.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint29.ClearBody;
  BackendEndpoint29.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint29.Execute;
  if RESTResponse29.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse29.RawBytes);
      postbatchcomMemTable29.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletebatchcomExecute(const ID: String);
begin
  BackendEndpoint30.Params.ParameterByName('id').Value := ID;
  BackendEndpoint30.Execute;
end;

procedure TAutoTablesClientDM.getbillingExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint31.Execute;
  if RESTResponse31.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse31.RawBytes);
      getbillingMemTable31.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postbillingExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postbillingPostMemTable32.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint32.ClearBody;
  BackendEndpoint32.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint32.Execute;
  if RESTResponse32.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse32.RawBytes);
      postbillingMemTable32.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletebillingExecute(const ID: String);
begin
  BackendEndpoint33.Params.ParameterByName('id').Value := ID;
  BackendEndpoint33.Execute;
end;

procedure TAutoTablesClientDM.getcalendar_externalExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint34.Execute;
  if RESTResponse34.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse34.RawBytes);
      getcalendar_externalMemTable34.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postcalendar_externalExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postcalendar_externalPostMemTable35.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint35.ClearBody;
  BackendEndpoint35.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint35.Execute;
  if RESTResponse35.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse35.RawBytes);
      postcalendar_externalMemTable35.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletecalendar_externalExecute(const ID: String);
begin
  BackendEndpoint36.Params.ParameterByName('id').Value := ID;
  BackendEndpoint36.Execute;
end;

procedure TAutoTablesClientDM.getcategoriesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint37.Execute;
  if RESTResponse37.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse37.RawBytes);
      getcategoriesMemTable37.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postcategoriesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postcategoriesPostMemTable38.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint38.ClearBody;
  BackendEndpoint38.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint38.Execute;
  if RESTResponse38.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse38.RawBytes);
      postcategoriesMemTable38.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletecategoriesExecute(const ID: String);
begin
  BackendEndpoint39.Params.ParameterByName('id').Value := ID;
  BackendEndpoint39.Execute;
end;

procedure TAutoTablesClientDM.getcategories_seqExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint40.Execute;
  if RESTResponse40.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse40.RawBytes);
      getcategories_seqMemTable40.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postcategories_seqExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postcategories_seqPostMemTable41.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint41.ClearBody;
  BackendEndpoint41.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint41.Execute;
  if RESTResponse41.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse41.RawBytes);
      postcategories_seqMemTable41.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletecategories_seqExecute(const ID: String);
begin
  BackendEndpoint42.Params.ParameterByName('id').Value := ID;
  BackendEndpoint42.Execute;
end;

procedure TAutoTablesClientDM.getcategories_to_documentsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint43.Execute;
  if RESTResponse43.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse43.RawBytes);
      getcategories_to_documentsMemTable43.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postcategories_to_documentsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postcategories_to_documentsPostMemTable44.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint44.ClearBody;
  BackendEndpoint44.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint44.Execute;
  if RESTResponse44.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse44.RawBytes);
      postcategories_to_documentsMemTable44.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletecategories_to_documentsExecute(const ID: String);
begin
  BackendEndpoint45.Params.ParameterByName('category_id').Value := ID;
  BackendEndpoint45.Execute;
end;

procedure TAutoTablesClientDM.getccdaExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint46.Execute;
  if RESTResponse46.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse46.RawBytes);
      getccdaMemTable46.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postccdaExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postccdaPostMemTable47.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint47.ClearBody;
  BackendEndpoint47.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint47.Execute;
  if RESTResponse47.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse47.RawBytes);
      postccdaMemTable47.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteccdaExecute(const ID: String);
begin
  BackendEndpoint48.Params.ParameterByName('id').Value := ID;
  BackendEndpoint48.Execute;
end;

procedure TAutoTablesClientDM.getccda_componentsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint49.Execute;
  if RESTResponse49.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse49.RawBytes);
      getccda_componentsMemTable49.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postccda_componentsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postccda_componentsPostMemTable50.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint50.ClearBody;
  BackendEndpoint50.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint50.Execute;
  if RESTResponse50.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse50.RawBytes);
      postccda_componentsMemTable50.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteccda_componentsExecute(const ID: String);
begin
  BackendEndpoint51.Params.ParameterByName('ccda_components_id').Value := ID;
  BackendEndpoint51.Execute;
end;

procedure TAutoTablesClientDM.getccda_field_mappingExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint52.Execute;
  if RESTResponse52.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse52.RawBytes);
      getccda_field_mappingMemTable52.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postccda_field_mappingExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postccda_field_mappingPostMemTable53.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint53.ClearBody;
  BackendEndpoint53.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint53.Execute;
  if RESTResponse53.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse53.RawBytes);
      postccda_field_mappingMemTable53.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteccda_field_mappingExecute(const ID: String);
begin
  BackendEndpoint54.Params.ParameterByName('id').Value := ID;
  BackendEndpoint54.Execute;
end;

procedure TAutoTablesClientDM.getccda_sectionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint55.Execute;
  if RESTResponse55.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse55.RawBytes);
      getccda_sectionsMemTable55.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postccda_sectionsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postccda_sectionsPostMemTable56.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint56.ClearBody;
  BackendEndpoint56.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint56.Execute;
  if RESTResponse56.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse56.RawBytes);
      postccda_sectionsMemTable56.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteccda_sectionsExecute(const ID: String);
begin
  BackendEndpoint57.Params.ParameterByName('ccda_sections_id').Value := ID;
  BackendEndpoint57.Execute;
end;

procedure TAutoTablesClientDM.getccda_table_mappingExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint58.Execute;
  if RESTResponse58.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse58.RawBytes);
      getccda_table_mappingMemTable58.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postccda_table_mappingExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postccda_table_mappingPostMemTable59.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint59.ClearBody;
  BackendEndpoint59.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint59.Execute;
  if RESTResponse59.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse59.RawBytes);
      postccda_table_mappingMemTable59.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteccda_table_mappingExecute(const ID: String);
begin
  BackendEndpoint60.Params.ParameterByName('id').Value := ID;
  BackendEndpoint60.Execute;
end;

procedure TAutoTablesClientDM.getchart_trackerExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint61.Execute;
  if RESTResponse61.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse61.RawBytes);
      getchart_trackerMemTable61.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postchart_trackerExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postchart_trackerPostMemTable62.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint62.ClearBody;
  BackendEndpoint62.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint62.Execute;
  if RESTResponse62.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse62.RawBytes);
      postchart_trackerMemTable62.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletechart_trackerExecute(const ID: String);
begin
  BackendEndpoint63.Params.ParameterByName('ct_pid').Value := ID;
  BackendEndpoint63.Execute;
end;

procedure TAutoTablesClientDM.getclaimsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint64.Execute;
  if RESTResponse64.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse64.RawBytes);
      getclaimsMemTable64.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postclaimsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postclaimsPostMemTable65.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint65.ClearBody;
  BackendEndpoint65.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint65.Execute;
  if RESTResponse65.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse65.RawBytes);
      postclaimsMemTable65.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteclaimsExecute(const ID: String);
begin
  BackendEndpoint66.Params.ParameterByName('patient_id').Value := ID;
  BackendEndpoint66.Execute;
end;

procedure TAutoTablesClientDM.getclinical_plansExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint67.Execute;
  if RESTResponse67.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse67.RawBytes);
      getclinical_plansMemTable67.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postclinical_plansExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postclinical_plansPostMemTable68.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint68.ClearBody;
  BackendEndpoint68.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint68.Execute;
  if RESTResponse68.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse68.RawBytes);
      postclinical_plansMemTable68.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteclinical_plansExecute(const ID: String);
begin
  BackendEndpoint69.Params.ParameterByName('id').Value := ID;
  BackendEndpoint69.Execute;
end;

procedure TAutoTablesClientDM.getclinical_plans_rulesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint70.Execute;
  if RESTResponse70.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse70.RawBytes);
      getclinical_plans_rulesMemTable70.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postclinical_plans_rulesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postclinical_plans_rulesPostMemTable71.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint71.ClearBody;
  BackendEndpoint71.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint71.Execute;
  if RESTResponse71.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse71.RawBytes);
      postclinical_plans_rulesMemTable71.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteclinical_plans_rulesExecute(const ID: String);
begin
  BackendEndpoint72.Params.ParameterByName('plan_id').Value := ID;
  BackendEndpoint72.Execute;
end;

procedure TAutoTablesClientDM.getclinical_rulesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint73.Execute;
  if RESTResponse73.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse73.RawBytes);
      getclinical_rulesMemTable73.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postclinical_rulesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postclinical_rulesPostMemTable74.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint74.ClearBody;
  BackendEndpoint74.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint74.Execute;
  if RESTResponse74.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse74.RawBytes);
      postclinical_rulesMemTable74.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteclinical_rulesExecute(const ID: String);
begin
  BackendEndpoint75.Params.ParameterByName('id').Value := ID;
  BackendEndpoint75.Execute;
end;

procedure TAutoTablesClientDM.getclinical_rules_logExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint76.Execute;
  if RESTResponse76.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse76.RawBytes);
      getclinical_rules_logMemTable76.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postclinical_rules_logExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postclinical_rules_logPostMemTable77.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint77.ClearBody;
  BackendEndpoint77.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint77.Execute;
  if RESTResponse77.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse77.RawBytes);
      postclinical_rules_logMemTable77.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteclinical_rules_logExecute(const ID: String);
begin
  BackendEndpoint78.Params.ParameterByName('id').Value := ID;
  BackendEndpoint78.Execute;
end;

procedure TAutoTablesClientDM.getcode_typesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint79.Execute;
  if RESTResponse79.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse79.RawBytes);
      getcode_typesMemTable79.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postcode_typesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postcode_typesPostMemTable80.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint80.ClearBody;
  BackendEndpoint80.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint80.Execute;
  if RESTResponse80.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse80.RawBytes);
      postcode_typesMemTable80.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletecode_typesExecute(const ID: String);
begin
  BackendEndpoint81.Params.ParameterByName('ct_key').Value := ID;
  BackendEndpoint81.Execute;
end;

procedure TAutoTablesClientDM.getcodesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint82.Execute;
  if RESTResponse82.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse82.RawBytes);
      getcodesMemTable82.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postcodesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postcodesPostMemTable83.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint83.ClearBody;
  BackendEndpoint83.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint83.Execute;
  if RESTResponse83.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse83.RawBytes);
      postcodesMemTable83.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletecodesExecute(const ID: String);
begin
  BackendEndpoint84.Params.ParameterByName('id').Value := ID;
  BackendEndpoint84.Execute;
end;

procedure TAutoTablesClientDM.getconfigExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint85.Execute;
  if RESTResponse85.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse85.RawBytes);
      getconfigMemTable85.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postconfigExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postconfigPostMemTable86.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint86.ClearBody;
  BackendEndpoint86.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint86.Execute;
  if RESTResponse86.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse86.RawBytes);
      postconfigMemTable86.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteconfigExecute(const ID: String);
begin
  BackendEndpoint87.Params.ParameterByName('id').Value := ID;
  BackendEndpoint87.Execute;
end;

procedure TAutoTablesClientDM.getconfig_seqExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint88.Execute;
  if RESTResponse88.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse88.RawBytes);
      getconfig_seqMemTable88.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postconfig_seqExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postconfig_seqPostMemTable89.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint89.ClearBody;
  BackendEndpoint89.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint89.Execute;
  if RESTResponse89.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse89.RawBytes);
      postconfig_seqMemTable89.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteconfig_seqExecute(const ID: String);
begin
  BackendEndpoint90.Params.ParameterByName('id').Value := ID;
  BackendEndpoint90.Execute;
end;

procedure TAutoTablesClientDM.getcustomlistsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint91.Execute;
  if RESTResponse91.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse91.RawBytes);
      getcustomlistsMemTable91.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postcustomlistsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postcustomlistsPostMemTable92.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint92.ClearBody;
  BackendEndpoint92.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint92.Execute;
  if RESTResponse92.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse92.RawBytes);
      postcustomlistsMemTable92.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletecustomlistsExecute(const ID: String);
begin
  BackendEndpoint93.Params.ParameterByName('cl_list_slno').Value := ID;
  BackendEndpoint93.Execute;
end;

procedure TAutoTablesClientDM.getdated_remindersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint94.Execute;
  if RESTResponse94.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse94.RawBytes);
      getdated_remindersMemTable94.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdated_remindersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdated_remindersPostMemTable95.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint95.ClearBody;
  BackendEndpoint95.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint95.Execute;
  if RESTResponse95.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse95.RawBytes);
      postdated_remindersMemTable95.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedated_remindersExecute(const ID: String);
begin
  BackendEndpoint96.Params.ParameterByName('dr_id').Value := ID;
  BackendEndpoint96.Execute;
end;

procedure TAutoTablesClientDM.getdated_reminders_linkExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint97.Execute;
  if RESTResponse97.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse97.RawBytes);
      getdated_reminders_linkMemTable97.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdated_reminders_linkExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdated_reminders_linkPostMemTable98.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint98.ClearBody;
  BackendEndpoint98.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint98.Execute;
  if RESTResponse98.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse98.RawBytes);
      postdated_reminders_linkMemTable98.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedated_reminders_linkExecute(const ID: String);
begin
  BackendEndpoint99.Params.ParameterByName('dr_link_id').Value := ID;
  BackendEndpoint99.Execute;
end;

procedure TAutoTablesClientDM.getdirect_message_logExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint100.Execute;
  if RESTResponse100.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse100.RawBytes);
      getdirect_message_logMemTable100.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdirect_message_logExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdirect_message_logPostMemTable101.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint101.ClearBody;
  BackendEndpoint101.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint101.Execute;
  if RESTResponse101.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse101.RawBytes);
      postdirect_message_logMemTable101.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedirect_message_logExecute(const ID: String);
begin
  BackendEndpoint102.Params.ParameterByName('id').Value := ID;
  BackendEndpoint102.Execute;
end;

procedure TAutoTablesClientDM.getdocumentsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint103.Execute;
  if RESTResponse103.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse103.RawBytes);
      getdocumentsMemTable103.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdocumentsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdocumentsPostMemTable104.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint104.ClearBody;
  BackendEndpoint104.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint104.Execute;
  if RESTResponse104.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse104.RawBytes);
      postdocumentsMemTable104.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedocumentsExecute(const ID: String);
begin
  BackendEndpoint105.Params.ParameterByName('id').Value := ID;
  BackendEndpoint105.Execute;
end;

procedure TAutoTablesClientDM.getdocuments_legal_categoriesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint106.Execute;
  if RESTResponse106.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse106.RawBytes);
      getdocuments_legal_categoriesMemTable106.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdocuments_legal_categoriesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdocuments_legal_categoriesPostMemTable107.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint107.ClearBody;
  BackendEndpoint107.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint107.Execute;
  if RESTResponse107.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse107.RawBytes);
      postdocuments_legal_categoriesMemTable107.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedocuments_legal_categoriesExecute(const ID: String);
begin
  BackendEndpoint108.Params.ParameterByName('dlc_id').Value := ID;
  BackendEndpoint108.Execute;
end;

procedure TAutoTablesClientDM.getdocuments_legal_detailExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint109.Execute;
  if RESTResponse109.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse109.RawBytes);
      getdocuments_legal_detailMemTable109.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdocuments_legal_detailExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdocuments_legal_detailPostMemTable110.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint110.ClearBody;
  BackendEndpoint110.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint110.Execute;
  if RESTResponse110.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse110.RawBytes);
      postdocuments_legal_detailMemTable110.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedocuments_legal_detailExecute(const ID: String);
begin
  BackendEndpoint111.Params.ParameterByName('dld_id').Value := ID;
  BackendEndpoint111.Execute;
end;

procedure TAutoTablesClientDM.getdocuments_legal_masterExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint112.Execute;
  if RESTResponse112.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse112.RawBytes);
      getdocuments_legal_masterMemTable112.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdocuments_legal_masterExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdocuments_legal_masterPostMemTable113.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint113.ClearBody;
  BackendEndpoint113.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint113.Execute;
  if RESTResponse113.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse113.RawBytes);
      postdocuments_legal_masterMemTable113.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedocuments_legal_masterExecute(const ID: String);
begin
  BackendEndpoint114.Params.ParameterByName('dlm_document_id').Value := ID;
  BackendEndpoint114.Execute;
end;

procedure TAutoTablesClientDM.getdrug_inventoryExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint115.Execute;
  if RESTResponse115.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse115.RawBytes);
      getdrug_inventoryMemTable115.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdrug_inventoryExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdrug_inventoryPostMemTable116.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint116.ClearBody;
  BackendEndpoint116.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint116.Execute;
  if RESTResponse116.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse116.RawBytes);
      postdrug_inventoryMemTable116.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedrug_inventoryExecute(const ID: String);
begin
  BackendEndpoint117.Params.ParameterByName('inventory_id').Value := ID;
  BackendEndpoint117.Execute;
end;

procedure TAutoTablesClientDM.getdrug_salesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint118.Execute;
  if RESTResponse118.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse118.RawBytes);
      getdrug_salesMemTable118.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdrug_salesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdrug_salesPostMemTable119.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint119.ClearBody;
  BackendEndpoint119.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint119.Execute;
  if RESTResponse119.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse119.RawBytes);
      postdrug_salesMemTable119.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedrug_salesExecute(const ID: String);
begin
  BackendEndpoint120.Params.ParameterByName('sale_id').Value := ID;
  BackendEndpoint120.Execute;
end;

procedure TAutoTablesClientDM.getdrug_templatesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint121.Execute;
  if RESTResponse121.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse121.RawBytes);
      getdrug_templatesMemTable121.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdrug_templatesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdrug_templatesPostMemTable122.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint122.ClearBody;
  BackendEndpoint122.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint122.Execute;
  if RESTResponse122.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse122.RawBytes);
      postdrug_templatesMemTable122.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedrug_templatesExecute(const ID: String);
begin
  BackendEndpoint123.Params.ParameterByName('drug_id').Value := ID;
  BackendEndpoint123.Execute;
end;

procedure TAutoTablesClientDM.getdrugsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint124.Execute;
  if RESTResponse124.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse124.RawBytes);
      getdrugsMemTable124.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postdrugsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postdrugsPostMemTable125.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint125.ClearBody;
  BackendEndpoint125.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint125.Execute;
  if RESTResponse125.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse125.RawBytes);
      postdrugsMemTable125.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletedrugsExecute(const ID: String);
begin
  BackendEndpoint126.Params.ParameterByName('drug_id').Value := ID;
  BackendEndpoint126.Execute;
end;

procedure TAutoTablesClientDM.geteligibility_responseExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint127.Execute;
  if RESTResponse127.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse127.RawBytes);
      geteligibility_responseMemTable127.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.posteligibility_responseExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  posteligibility_responsePostMemTable128.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint128.ClearBody;
  BackendEndpoint128.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint128.Execute;
  if RESTResponse128.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse128.RawBytes);
      posteligibility_responseMemTable128.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteeligibility_responseExecute(const ID: String);
begin
  BackendEndpoint129.Params.ParameterByName('response_id').Value := ID;
  BackendEndpoint129.Execute;
end;

procedure TAutoTablesClientDM.geteligibility_verificationExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint130.Execute;
  if RESTResponse130.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse130.RawBytes);
      geteligibility_verificationMemTable130.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.posteligibility_verificationExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  posteligibility_verificationPostMemTable131.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint131.ClearBody;
  BackendEndpoint131.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint131.Execute;
  if RESTResponse131.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse131.RawBytes);
      posteligibility_verificationMemTable131.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteeligibility_verificationExecute(const ID: String);
begin
  BackendEndpoint132.Params.ParameterByName('verification_id').Value := ID;
  BackendEndpoint132.Execute;
end;

procedure TAutoTablesClientDM.getemployer_dataExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint133.Execute;
  if RESTResponse133.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse133.RawBytes);
      getemployer_dataMemTable133.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postemployer_dataExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postemployer_dataPostMemTable134.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint134.ClearBody;
  BackendEndpoint134.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint134.Execute;
  if RESTResponse134.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse134.RawBytes);
      postemployer_dataMemTable134.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteemployer_dataExecute(const ID: String);
begin
  BackendEndpoint135.Params.ParameterByName('id').Value := ID;
  BackendEndpoint135.Execute;
end;

procedure TAutoTablesClientDM.getenc_category_mapExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint136.Execute;
  if RESTResponse136.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse136.RawBytes);
      getenc_category_mapMemTable136.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geterx_drug_paidExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint137.Execute;
  if RESTResponse137.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse137.RawBytes);
      geterx_drug_paidMemTable137.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.posterx_drug_paidExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  posterx_drug_paidPostMemTable138.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint138.ClearBody;
  BackendEndpoint138.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint138.Execute;
  if RESTResponse138.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse138.RawBytes);
      posterx_drug_paidMemTable138.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteerx_drug_paidExecute(const ID: String);
begin
  BackendEndpoint139.Params.ParameterByName('drugid').Value := ID;
  BackendEndpoint139.Execute;
end;

procedure TAutoTablesClientDM.geterx_narcoticsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint140.Execute;
  if RESTResponse140.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse140.RawBytes);
      geterx_narcoticsMemTable140.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.posterx_narcoticsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  posterx_narcoticsPostMemTable141.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint141.ClearBody;
  BackendEndpoint141.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint141.Execute;
  if RESTResponse141.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse141.RawBytes);
      posterx_narcoticsMemTable141.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteerx_narcoticsExecute(const ID: String);
begin
  BackendEndpoint142.Params.ParameterByName('id').Value := ID;
  BackendEndpoint142.Execute;
end;

procedure TAutoTablesClientDM.geterx_rx_logExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint143.Execute;
  if RESTResponse143.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse143.RawBytes);
      geterx_rx_logMemTable143.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.posterx_rx_logExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  posterx_rx_logPostMemTable144.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint144.ClearBody;
  BackendEndpoint144.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint144.Execute;
  if RESTResponse144.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse144.RawBytes);
      posterx_rx_logMemTable144.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteerx_rx_logExecute(const ID: String);
begin
  BackendEndpoint145.Params.ParameterByName('id').Value := ID;
  BackendEndpoint145.Execute;
end;

procedure TAutoTablesClientDM.geterx_ttl_touchExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint146.Execute;
  if RESTResponse146.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse146.RawBytes);
      geterx_ttl_touchMemTable146.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.posterx_ttl_touchExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  posterx_ttl_touchPostMemTable147.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint147.ClearBody;
  BackendEndpoint147.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint147.Execute;
  if RESTResponse147.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse147.RawBytes);
      posterx_ttl_touchMemTable147.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteerx_ttl_touchExecute(const ID: String);
begin
  BackendEndpoint148.Params.ParameterByName('patient_id').Value := ID;
  BackendEndpoint148.Execute;
end;

procedure TAutoTablesClientDM.getesign_signaturesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint149.Execute;
  if RESTResponse149.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse149.RawBytes);
      getesign_signaturesMemTable149.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postesign_signaturesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postesign_signaturesPostMemTable150.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint150.ClearBody;
  BackendEndpoint150.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint150.Execute;
  if RESTResponse150.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse150.RawBytes);
      postesign_signaturesMemTable150.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteesign_signaturesExecute(const ID: String);
begin
  BackendEndpoint151.Params.ParameterByName('id').Value := ID;
  BackendEndpoint151.Execute;
end;

procedure TAutoTablesClientDM.getextended_logExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint152.Execute;
  if RESTResponse152.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse152.RawBytes);
      getextended_logMemTable152.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postextended_logExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postextended_logPostMemTable153.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint153.ClearBody;
  BackendEndpoint153.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint153.Execute;
  if RESTResponse153.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse153.RawBytes);
      postextended_logMemTable153.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteextended_logExecute(const ID: String);
begin
  BackendEndpoint154.Params.ParameterByName('id').Value := ID;
  BackendEndpoint154.Execute;
end;

procedure TAutoTablesClientDM.getexternal_encountersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint155.Execute;
  if RESTResponse155.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse155.RawBytes);
      getexternal_encountersMemTable155.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postexternal_encountersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postexternal_encountersPostMemTable156.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint156.ClearBody;
  BackendEndpoint156.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint156.Execute;
  if RESTResponse156.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse156.RawBytes);
      postexternal_encountersMemTable156.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteexternal_encountersExecute(const ID: String);
begin
  BackendEndpoint157.Params.ParameterByName('ee_id').Value := ID;
  BackendEndpoint157.Execute;
end;

procedure TAutoTablesClientDM.getexternal_proceduresExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint158.Execute;
  if RESTResponse158.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse158.RawBytes);
      getexternal_proceduresMemTable158.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postexternal_proceduresExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postexternal_proceduresPostMemTable159.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint159.ClearBody;
  BackendEndpoint159.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint159.Execute;
  if RESTResponse159.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse159.RawBytes);
      postexternal_proceduresMemTable159.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteexternal_proceduresExecute(const ID: String);
begin
  BackendEndpoint160.Params.ParameterByName('ep_id').Value := ID;
  BackendEndpoint160.Execute;
end;

procedure TAutoTablesClientDM.getfacilityExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint161.Execute;
  if RESTResponse161.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse161.RawBytes);
      getfacilityMemTable161.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postfacilityExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postfacilityPostMemTable162.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint162.ClearBody;
  BackendEndpoint162.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint162.Execute;
  if RESTResponse162.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse162.RawBytes);
      postfacilityMemTable162.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletefacilityExecute(const ID: String);
begin
  BackendEndpoint163.Params.ParameterByName('id').Value := ID;
  BackendEndpoint163.Execute;
end;

procedure TAutoTablesClientDM.getfacility_user_idsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint164.Execute;
  if RESTResponse164.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse164.RawBytes);
      getfacility_user_idsMemTable164.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postfacility_user_idsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postfacility_user_idsPostMemTable165.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint165.ClearBody;
  BackendEndpoint165.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint165.Execute;
  if RESTResponse165.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse165.RawBytes);
      postfacility_user_idsMemTable165.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletefacility_user_idsExecute(const ID: String);
begin
  BackendEndpoint166.Params.ParameterByName('id').Value := ID;
  BackendEndpoint166.Execute;
end;

procedure TAutoTablesClientDM.getfee_sheet_optionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint167.Execute;
  if RESTResponse167.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse167.RawBytes);
      getfee_sheet_optionsMemTable167.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getform_care_planExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint168.Execute;
  if RESTResponse168.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse168.RawBytes);
      getform_care_planMemTable168.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getform_clinical_instructionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint169.Execute;
  if RESTResponse169.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse169.RawBytes);
      getform_clinical_instructionsMemTable169.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postform_clinical_instructionsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postform_clinical_instructionsPostMemTable170.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint170.ClearBody;
  BackendEndpoint170.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint170.Execute;
  if RESTResponse170.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse170.RawBytes);
      postform_clinical_instructionsMemTable170.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteform_clinical_instructionsExecute(const ID: String);
begin
  BackendEndpoint171.Params.ParameterByName('id').Value := ID;
  BackendEndpoint171.Execute;
end;

procedure TAutoTablesClientDM.getform_dictationExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint172.Execute;
  if RESTResponse172.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse172.RawBytes);
      getform_dictationMemTable172.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postform_dictationExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postform_dictationPostMemTable173.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint173.ClearBody;
  BackendEndpoint173.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint173.Execute;
  if RESTResponse173.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse173.RawBytes);
      postform_dictationMemTable173.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteform_dictationExecute(const ID: String);
begin
  BackendEndpoint174.Params.ParameterByName('id').Value := ID;
  BackendEndpoint174.Execute;
end;

procedure TAutoTablesClientDM.getform_encounterExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint175.Execute;
  if RESTResponse175.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse175.RawBytes);
      getform_encounterMemTable175.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postform_encounterExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postform_encounterPostMemTable176.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint176.ClearBody;
  BackendEndpoint176.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint176.Execute;
  if RESTResponse176.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse176.RawBytes);
      postform_encounterMemTable176.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteform_encounterExecute(const ID: String);
begin
  BackendEndpoint177.Params.ParameterByName('id').Value := ID;
  BackendEndpoint177.Execute;
end;

procedure TAutoTablesClientDM.getform_eye_mag_dispenseExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint178.Execute;
  if RESTResponse178.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse178.RawBytes);
      getform_eye_mag_dispenseMemTable178.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postform_eye_mag_dispenseExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postform_eye_mag_dispensePostMemTable179.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint179.ClearBody;
  BackendEndpoint179.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint179.Execute;
  if RESTResponse179.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse179.RawBytes);
      postform_eye_mag_dispenseMemTable179.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteform_eye_mag_dispenseExecute(const ID: String);
begin
  BackendEndpoint180.Params.ParameterByName('id').Value := ID;
  BackendEndpoint180.Execute;
end;

procedure TAutoTablesClientDM.getform_eye_mag_prefsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint181.Execute;
  if RESTResponse181.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse181.RawBytes);
      getform_eye_mag_prefsMemTable181.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getform_functional_cognitive_statusExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint182.Execute;
  if RESTResponse182.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse182.RawBytes);
      getform_functional_cognitive_statusMemTable182.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getform_misc_billing_optionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint183.Execute;
  if RESTResponse183.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse183.RawBytes);
      getform_misc_billing_optionsMemTable183.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postform_misc_billing_optionsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postform_misc_billing_optionsPostMemTable184.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint184.ClearBody;
  BackendEndpoint184.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint184.Execute;
  if RESTResponse184.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse184.RawBytes);
      postform_misc_billing_optionsMemTable184.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteform_misc_billing_optionsExecute(const ID: String);
begin
  BackendEndpoint185.Params.ParameterByName('id').Value := ID;
  BackendEndpoint185.Execute;
end;

procedure TAutoTablesClientDM.getform_observationExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint186.Execute;
  if RESTResponse186.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse186.RawBytes);
      getform_observationMemTable186.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getform_reviewofsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint187.Execute;
  if RESTResponse187.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse187.RawBytes);
      getform_reviewofsMemTable187.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postform_reviewofsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postform_reviewofsPostMemTable188.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint188.ClearBody;
  BackendEndpoint188.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint188.Execute;
  if RESTResponse188.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse188.RawBytes);
      postform_reviewofsMemTable188.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteform_reviewofsExecute(const ID: String);
begin
  BackendEndpoint189.Params.ParameterByName('id').Value := ID;
  BackendEndpoint189.Execute;
end;

procedure TAutoTablesClientDM.getform_rosExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint190.Execute;
  if RESTResponse190.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse190.RawBytes);
      getform_rosMemTable190.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postform_rosExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postform_rosPostMemTable191.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint191.ClearBody;
  BackendEndpoint191.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint191.Execute;
  if RESTResponse191.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse191.RawBytes);
      postform_rosMemTable191.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteform_rosExecute(const ID: String);
begin
  BackendEndpoint192.Params.ParameterByName('id').Value := ID;
  BackendEndpoint192.Execute;
end;

procedure TAutoTablesClientDM.getform_soapExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint193.Execute;
  if RESTResponse193.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse193.RawBytes);
      getform_soapMemTable193.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postform_soapExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postform_soapPostMemTable194.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint194.ClearBody;
  BackendEndpoint194.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint194.Execute;
  if RESTResponse194.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse194.RawBytes);
      postform_soapMemTable194.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteform_soapExecute(const ID: String);
begin
  BackendEndpoint195.Params.ParameterByName('id').Value := ID;
  BackendEndpoint195.Execute;
end;

procedure TAutoTablesClientDM.getform_vitalsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint196.Execute;
  if RESTResponse196.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse196.RawBytes);
      getform_vitalsMemTable196.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postform_vitalsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postform_vitalsPostMemTable197.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint197.ClearBody;
  BackendEndpoint197.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint197.Execute;
  if RESTResponse197.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse197.RawBytes);
      postform_vitalsMemTable197.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteform_vitalsExecute(const ID: String);
begin
  BackendEndpoint198.Params.ParameterByName('id').Value := ID;
  BackendEndpoint198.Execute;
end;

procedure TAutoTablesClientDM.getformsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint199.Execute;
  if RESTResponse199.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse199.RawBytes);
      getformsMemTable199.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postformsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postformsPostMemTable200.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint200.ClearBody;
  BackendEndpoint200.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint200.Execute;
  if RESTResponse200.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse200.RawBytes);
      postformsMemTable200.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteformsExecute(const ID: String);
begin
  BackendEndpoint201.Params.ParameterByName('id').Value := ID;
  BackendEndpoint201.Execute;
end;

procedure TAutoTablesClientDM.getgeo_country_referenceExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint202.Execute;
  if RESTResponse202.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse202.RawBytes);
      getgeo_country_referenceMemTable202.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postgeo_country_referenceExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postgeo_country_referencePostMemTable203.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint203.ClearBody;
  BackendEndpoint203.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint203.Execute;
  if RESTResponse203.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse203.RawBytes);
      postgeo_country_referenceMemTable203.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletegeo_country_referenceExecute(const ID: String);
begin
  BackendEndpoint204.Params.ParameterByName('countries_id').Value := ID;
  BackendEndpoint204.Execute;
end;

procedure TAutoTablesClientDM.getgeo_zone_referenceExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint205.Execute;
  if RESTResponse205.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse205.RawBytes);
      getgeo_zone_referenceMemTable205.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postgeo_zone_referenceExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postgeo_zone_referencePostMemTable206.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint206.ClearBody;
  BackendEndpoint206.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint206.Execute;
  if RESTResponse206.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse206.RawBytes);
      postgeo_zone_referenceMemTable206.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletegeo_zone_referenceExecute(const ID: String);
begin
  BackendEndpoint207.Params.ParameterByName('zone_id').Value := ID;
  BackendEndpoint207.Execute;
end;

procedure TAutoTablesClientDM.getglobalsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint208.Execute;
  if RESTResponse208.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse208.RawBytes);
      getglobalsMemTable208.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postglobalsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postglobalsPostMemTable209.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint209.ClearBody;
  BackendEndpoint209.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint209.Execute;
  if RESTResponse209.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse209.RawBytes);
      postglobalsMemTable209.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteglobalsExecute(const ID: String);
begin
  BackendEndpoint210.Params.ParameterByName('gl_name').Value := ID;
  BackendEndpoint210.Execute;
end;

procedure TAutoTablesClientDM.getgprelationsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint211.Execute;
  if RESTResponse211.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse211.RawBytes);
      getgprelationsMemTable211.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postgprelationsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postgprelationsPostMemTable212.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint212.ClearBody;
  BackendEndpoint212.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint212.Execute;
  if RESTResponse212.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse212.RawBytes);
      postgprelationsMemTable212.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletegprelationsExecute(const ID: String);
begin
  BackendEndpoint213.Params.ParameterByName('type1').Value := ID;
  BackendEndpoint213.Execute;
end;

procedure TAutoTablesClientDM.getgroupsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint214.Execute;
  if RESTResponse214.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse214.RawBytes);
      getgroupsMemTable214.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postgroupsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postgroupsPostMemTable215.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint215.ClearBody;
  BackendEndpoint215.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint215.Execute;
  if RESTResponse215.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse215.RawBytes);
      postgroupsMemTable215.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletegroupsExecute(const ID: String);
begin
  BackendEndpoint216.Params.ParameterByName('id').Value := ID;
  BackendEndpoint216.Execute;
end;

procedure TAutoTablesClientDM.gethistory_dataExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint217.Execute;
  if RESTResponse217.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse217.RawBytes);
      gethistory_dataMemTable217.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.posthistory_dataExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  posthistory_dataPostMemTable218.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint218.ClearBody;
  BackendEndpoint218.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint218.Execute;
  if RESTResponse218.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse218.RawBytes);
      posthistory_dataMemTable218.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletehistory_dataExecute(const ID: String);
begin
  BackendEndpoint219.Params.ParameterByName('id').Value := ID;
  BackendEndpoint219.Execute;
end;

procedure TAutoTablesClientDM.geticd10_dx_order_codeExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint220.Execute;
  if RESTResponse220.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse220.RawBytes);
      geticd10_dx_order_codeMemTable220.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd10_gem_dx_10_9Execute;
var
  BS: TBytesStream;
begin
  BackendEndpoint221.Execute;
  if RESTResponse221.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse221.RawBytes);
      geticd10_gem_dx_10_9MemTable221.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd10_gem_dx_9_10Execute;
var
  BS: TBytesStream;
begin
  BackendEndpoint222.Execute;
  if RESTResponse222.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse222.RawBytes);
      geticd10_gem_dx_9_10MemTable222.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd10_gem_pcs_10_9Execute;
var
  BS: TBytesStream;
begin
  BackendEndpoint223.Execute;
  if RESTResponse223.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse223.RawBytes);
      geticd10_gem_pcs_10_9MemTable223.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd10_gem_pcs_9_10Execute;
var
  BS: TBytesStream;
begin
  BackendEndpoint224.Execute;
  if RESTResponse224.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse224.RawBytes);
      geticd10_gem_pcs_9_10MemTable224.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd10_pcs_order_codeExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint225.Execute;
  if RESTResponse225.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse225.RawBytes);
      geticd10_pcs_order_codeMemTable225.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd10_reimbr_dx_9_10Execute;
var
  BS: TBytesStream;
begin
  BackendEndpoint226.Execute;
  if RESTResponse226.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse226.RawBytes);
      geticd10_reimbr_dx_9_10MemTable226.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd10_reimbr_pcs_9_10Execute;
var
  BS: TBytesStream;
begin
  BackendEndpoint227.Execute;
  if RESTResponse227.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse227.RawBytes);
      geticd10_reimbr_pcs_9_10MemTable227.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd9_dx_codeExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint228.Execute;
  if RESTResponse228.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse228.RawBytes);
      geticd9_dx_codeMemTable228.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd9_dx_long_codeExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint229.Execute;
  if RESTResponse229.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse229.RawBytes);
      geticd9_dx_long_codeMemTable229.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd9_sg_codeExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint230.Execute;
  if RESTResponse230.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse230.RawBytes);
      geticd9_sg_codeMemTable230.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.geticd9_sg_long_codeExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint231.Execute;
  if RESTResponse231.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse231.RawBytes);
      geticd9_sg_long_codeMemTable231.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getimmunization_observationExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint232.Execute;
  if RESTResponse232.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse232.RawBytes);
      getimmunization_observationMemTable232.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postimmunization_observationExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postimmunization_observationPostMemTable233.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint233.ClearBody;
  BackendEndpoint233.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint233.Execute;
  if RESTResponse233.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse233.RawBytes);
      postimmunization_observationMemTable233.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteimmunization_observationExecute(const ID: String);
begin
  BackendEndpoint234.Params.ParameterByName('imo_id').Value := ID;
  BackendEndpoint234.Execute;
end;

procedure TAutoTablesClientDM.getimmunizationsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint235.Execute;
  if RESTResponse235.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse235.RawBytes);
      getimmunizationsMemTable235.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postimmunizationsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postimmunizationsPostMemTable236.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint236.ClearBody;
  BackendEndpoint236.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint236.Execute;
  if RESTResponse236.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse236.RawBytes);
      postimmunizationsMemTable236.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteimmunizationsExecute(const ID: String);
begin
  BackendEndpoint237.Params.ParameterByName('id').Value := ID;
  BackendEndpoint237.Execute;
end;

procedure TAutoTablesClientDM.getinsurance_companiesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint238.Execute;
  if RESTResponse238.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse238.RawBytes);
      getinsurance_companiesMemTable238.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postinsurance_companiesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postinsurance_companiesPostMemTable239.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint239.ClearBody;
  BackendEndpoint239.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint239.Execute;
  if RESTResponse239.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse239.RawBytes);
      postinsurance_companiesMemTable239.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteinsurance_companiesExecute(const ID: String);
begin
  BackendEndpoint240.Params.ParameterByName('id').Value := ID;
  BackendEndpoint240.Execute;
end;

procedure TAutoTablesClientDM.getinsurance_dataExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint241.Execute;
  if RESTResponse241.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse241.RawBytes);
      getinsurance_dataMemTable241.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postinsurance_dataExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postinsurance_dataPostMemTable242.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint242.ClearBody;
  BackendEndpoint242.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint242.Execute;
  if RESTResponse242.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse242.RawBytes);
      postinsurance_dataMemTable242.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteinsurance_dataExecute(const ID: String);
begin
  BackendEndpoint243.Params.ParameterByName('id').Value := ID;
  BackendEndpoint243.Execute;
end;

procedure TAutoTablesClientDM.getinsurance_numbersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint244.Execute;
  if RESTResponse244.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse244.RawBytes);
      getinsurance_numbersMemTable244.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postinsurance_numbersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postinsurance_numbersPostMemTable245.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint245.ClearBody;
  BackendEndpoint245.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint245.Execute;
  if RESTResponse245.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse245.RawBytes);
      postinsurance_numbersMemTable245.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteinsurance_numbersExecute(const ID: String);
begin
  BackendEndpoint246.Params.ParameterByName('id').Value := ID;
  BackendEndpoint246.Execute;
end;

procedure TAutoTablesClientDM.getissue_encounterExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint247.Execute;
  if RESTResponse247.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse247.RawBytes);
      getissue_encounterMemTable247.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postissue_encounterExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postissue_encounterPostMemTable248.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint248.ClearBody;
  BackendEndpoint248.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint248.Execute;
  if RESTResponse248.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse248.RawBytes);
      postissue_encounterMemTable248.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteissue_encounterExecute(const ID: String);
begin
  BackendEndpoint249.Params.ParameterByName('pid').Value := ID;
  BackendEndpoint249.Execute;
end;

procedure TAutoTablesClientDM.getissue_typesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint250.Execute;
  if RESTResponse250.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse250.RawBytes);
      getissue_typesMemTable250.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postissue_typesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postissue_typesPostMemTable251.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint251.ClearBody;
  BackendEndpoint251.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint251.Execute;
  if RESTResponse251.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse251.RawBytes);
      postissue_typesMemTable251.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteissue_typesExecute(const ID: String);
begin
  BackendEndpoint252.Params.ParameterByName('category').Value := ID;
  BackendEndpoint252.Execute;
end;

procedure TAutoTablesClientDM.get_keys_Execute;
var
  BS: TBytesStream;
begin
  BackendEndpoint253.Execute;
  if RESTResponse253.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse253.RawBytes);
      get_keys_MemTable253.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.post_keys_Execute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  post_keys_PostMemTable254.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint254.ClearBody;
  BackendEndpoint254.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint254.Execute;
  if RESTResponse254.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse254.RawBytes);
      post_keys_MemTable254.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.delete_keys_Execute(const ID: String);
begin
  BackendEndpoint255.Params.ParameterByName('id').Value := ID;
  BackendEndpoint255.Execute;
end;

procedure TAutoTablesClientDM.getlang_constantsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint256.Execute;
  if RESTResponse256.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse256.RawBytes);
      getlang_constantsMemTable256.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getlang_customExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint257.Execute;
  if RESTResponse257.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse257.RawBytes);
      getlang_customMemTable257.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getlang_definitionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint258.Execute;
  if RESTResponse258.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse258.RawBytes);
      getlang_definitionsMemTable258.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getlang_languagesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint259.Execute;
  if RESTResponse259.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse259.RawBytes);
      getlang_languagesMemTable259.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getlayout_group_propertiesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint260.Execute;
  if RESTResponse260.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse260.RawBytes);
      getlayout_group_propertiesMemTable260.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postlayout_group_propertiesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postlayout_group_propertiesPostMemTable261.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint261.ClearBody;
  BackendEndpoint261.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint261.Execute;
  if RESTResponse261.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse261.RawBytes);
      postlayout_group_propertiesMemTable261.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletelayout_group_propertiesExecute(const ID: String);
begin
  BackendEndpoint262.Params.ParameterByName('grp_form_id').Value := ID;
  BackendEndpoint262.Execute;
end;

procedure TAutoTablesClientDM.getlayout_optionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint263.Execute;
  if RESTResponse263.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse263.RawBytes);
      getlayout_optionsMemTable263.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postlayout_optionsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postlayout_optionsPostMemTable264.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint264.ClearBody;
  BackendEndpoint264.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint264.Execute;
  if RESTResponse264.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse264.RawBytes);
      postlayout_optionsMemTable264.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletelayout_optionsExecute(const ID: String);
begin
  BackendEndpoint265.Params.ParameterByName('form_id').Value := ID;
  BackendEndpoint265.Execute;
end;

procedure TAutoTablesClientDM.getlbf_dataExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint266.Execute;
  if RESTResponse266.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse266.RawBytes);
      getlbf_dataMemTable266.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postlbf_dataExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postlbf_dataPostMemTable267.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint267.ClearBody;
  BackendEndpoint267.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint267.Execute;
  if RESTResponse267.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse267.RawBytes);
      postlbf_dataMemTable267.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletelbf_dataExecute(const ID: String);
begin
  BackendEndpoint268.Params.ParameterByName('form_id').Value := ID;
  BackendEndpoint268.Execute;
end;

procedure TAutoTablesClientDM.getlbt_dataExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint269.Execute;
  if RESTResponse269.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse269.RawBytes);
      getlbt_dataMemTable269.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postlbt_dataExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postlbt_dataPostMemTable270.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint270.ClearBody;
  BackendEndpoint270.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint270.Execute;
  if RESTResponse270.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse270.RawBytes);
      postlbt_dataMemTable270.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletelbt_dataExecute(const ID: String);
begin
  BackendEndpoint271.Params.ParameterByName('form_id').Value := ID;
  BackendEndpoint271.Execute;
end;

procedure TAutoTablesClientDM.getlist_optionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint272.Execute;
  if RESTResponse272.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse272.RawBytes);
      getlist_optionsMemTable272.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postlist_optionsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postlist_optionsPostMemTable273.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint273.ClearBody;
  BackendEndpoint273.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint273.Execute;
  if RESTResponse273.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse273.RawBytes);
      postlist_optionsMemTable273.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletelist_optionsExecute(const ID: String);
begin
  BackendEndpoint274.Params.ParameterByName('list_id').Value := ID;
  BackendEndpoint274.Execute;
end;

procedure TAutoTablesClientDM.getlistsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint275.Execute;
  if RESTResponse275.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse275.RawBytes);
      getlistsMemTable275.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postlistsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postlistsPostMemTable276.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint276.ClearBody;
  BackendEndpoint276.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint276.Execute;
  if RESTResponse276.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse276.RawBytes);
      postlistsMemTable276.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletelistsExecute(const ID: String);
begin
  BackendEndpoint277.Params.ParameterByName('id').Value := ID;
  BackendEndpoint277.Execute;
end;

procedure TAutoTablesClientDM.getlists_touchExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint278.Execute;
  if RESTResponse278.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse278.RawBytes);
      getlists_touchMemTable278.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postlists_touchExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postlists_touchPostMemTable279.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint279.ClearBody;
  BackendEndpoint279.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint279.Execute;
  if RESTResponse279.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse279.RawBytes);
      postlists_touchMemTable279.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletelists_touchExecute(const ID: String);
begin
  BackendEndpoint280.Params.ParameterByName('pid').Value := ID;
  BackendEndpoint280.Execute;
end;

procedure TAutoTablesClientDM.getlogExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint281.Execute;
  if RESTResponse281.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse281.RawBytes);
      getlogMemTable281.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postlogExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postlogPostMemTable282.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint282.ClearBody;
  BackendEndpoint282.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint282.Execute;
  if RESTResponse282.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse282.RawBytes);
      postlogMemTable282.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletelogExecute(const ID: String);
begin
  BackendEndpoint283.Params.ParameterByName('id').Value := ID;
  BackendEndpoint283.Execute;
end;

procedure TAutoTablesClientDM.getlog_comment_encryptExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint284.Execute;
  if RESTResponse284.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse284.RawBytes);
      getlog_comment_encryptMemTable284.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postlog_comment_encryptExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postlog_comment_encryptPostMemTable285.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint285.ClearBody;
  BackendEndpoint285.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint285.Execute;
  if RESTResponse285.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse285.RawBytes);
      postlog_comment_encryptMemTable285.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletelog_comment_encryptExecute(const ID: String);
begin
  BackendEndpoint286.Params.ParameterByName('id').Value := ID;
  BackendEndpoint286.Execute;
end;

procedure TAutoTablesClientDM.getmisc_address_bookExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint287.Execute;
  if RESTResponse287.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse287.RawBytes);
      getmisc_address_bookMemTable287.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postmisc_address_bookExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postmisc_address_bookPostMemTable288.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint288.ClearBody;
  BackendEndpoint288.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint288.Execute;
  if RESTResponse288.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse288.RawBytes);
      postmisc_address_bookMemTable288.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletemisc_address_bookExecute(const ID: String);
begin
  BackendEndpoint289.Params.ParameterByName('id').Value := ID;
  BackendEndpoint289.Execute;
end;

procedure TAutoTablesClientDM.getmodule_acl_group_settingsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint290.Execute;
  if RESTResponse290.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse290.RawBytes);
      getmodule_acl_group_settingsMemTable290.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postmodule_acl_group_settingsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postmodule_acl_group_settingsPostMemTable291.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint291.ClearBody;
  BackendEndpoint291.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint291.Execute;
  if RESTResponse291.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse291.RawBytes);
      postmodule_acl_group_settingsMemTable291.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletemodule_acl_group_settingsExecute(const ID: String);
begin
  BackendEndpoint292.Params.ParameterByName('module_id').Value := ID;
  BackendEndpoint292.Execute;
end;

procedure TAutoTablesClientDM.getmodule_acl_sectionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint293.Execute;
  if RESTResponse293.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse293.RawBytes);
      getmodule_acl_sectionsMemTable293.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getmodule_acl_user_settingsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint294.Execute;
  if RESTResponse294.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse294.RawBytes);
      getmodule_acl_user_settingsMemTable294.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postmodule_acl_user_settingsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postmodule_acl_user_settingsPostMemTable295.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint295.ClearBody;
  BackendEndpoint295.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint295.Execute;
  if RESTResponse295.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse295.RawBytes);
      postmodule_acl_user_settingsMemTable295.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletemodule_acl_user_settingsExecute(const ID: String);
begin
  BackendEndpoint296.Params.ParameterByName('module_id').Value := ID;
  BackendEndpoint296.Execute;
end;

procedure TAutoTablesClientDM.getmodule_configurationExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint297.Execute;
  if RESTResponse297.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse297.RawBytes);
      getmodule_configurationMemTable297.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postmodule_configurationExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postmodule_configurationPostMemTable298.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint298.ClearBody;
  BackendEndpoint298.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint298.Execute;
  if RESTResponse298.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse298.RawBytes);
      postmodule_configurationMemTable298.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletemodule_configurationExecute(const ID: String);
begin
  BackendEndpoint299.Params.ParameterByName('module_config_id').Value := ID;
  BackendEndpoint299.Execute;
end;

procedure TAutoTablesClientDM.getmodulesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint300.Execute;
  if RESTResponse300.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse300.RawBytes);
      getmodulesMemTable300.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postmodulesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postmodulesPostMemTable301.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint301.ClearBody;
  BackendEndpoint301.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint301.Execute;
  if RESTResponse301.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse301.RawBytes);
      postmodulesMemTable301.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletemodulesExecute(const ID: String);
begin
  BackendEndpoint302.Params.ParameterByName('mod_id').Value := ID;
  BackendEndpoint302.Execute;
end;

procedure TAutoTablesClientDM.getmodules_hooks_settingsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint303.Execute;
  if RESTResponse303.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse303.RawBytes);
      getmodules_hooks_settingsMemTable303.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postmodules_hooks_settingsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postmodules_hooks_settingsPostMemTable304.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint304.ClearBody;
  BackendEndpoint304.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint304.Execute;
  if RESTResponse304.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse304.RawBytes);
      postmodules_hooks_settingsMemTable304.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletemodules_hooks_settingsExecute(const ID: String);
begin
  BackendEndpoint305.Params.ParameterByName('id').Value := ID;
  BackendEndpoint305.Execute;
end;

procedure TAutoTablesClientDM.getmodules_settingsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint306.Execute;
  if RESTResponse306.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse306.RawBytes);
      getmodules_settingsMemTable306.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getnotesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint307.Execute;
  if RESTResponse307.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse307.RawBytes);
      getnotesMemTable307.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postnotesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postnotesPostMemTable308.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint308.ClearBody;
  BackendEndpoint308.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint308.Execute;
  if RESTResponse308.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse308.RawBytes);
      postnotesMemTable308.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletenotesExecute(const ID: String);
begin
  BackendEndpoint309.Params.ParameterByName('id').Value := ID;
  BackendEndpoint309.Execute;
end;

procedure TAutoTablesClientDM.getnotification_logExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint310.Execute;
  if RESTResponse310.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse310.RawBytes);
      getnotification_logMemTable310.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postnotification_logExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postnotification_logPostMemTable311.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint311.ClearBody;
  BackendEndpoint311.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint311.Execute;
  if RESTResponse311.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse311.RawBytes);
      postnotification_logMemTable311.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletenotification_logExecute(const ID: String);
begin
  BackendEndpoint312.Params.ParameterByName('iLogId').Value := ID;
  BackendEndpoint312.Execute;
end;

procedure TAutoTablesClientDM.getnotification_settingsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint313.Execute;
  if RESTResponse313.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse313.RawBytes);
      getnotification_settingsMemTable313.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postnotification_settingsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postnotification_settingsPostMemTable314.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint314.ClearBody;
  BackendEndpoint314.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint314.Execute;
  if RESTResponse314.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse314.RawBytes);
      postnotification_settingsMemTable314.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletenotification_settingsExecute(const ID: String);
begin
  BackendEndpoint315.Params.ParameterByName('SettingsId').Value := ID;
  BackendEndpoint315.Execute;
end;

procedure TAutoTablesClientDM.getonotesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint316.Execute;
  if RESTResponse316.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse316.RawBytes);
      getonotesMemTable316.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postonotesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postonotesPostMemTable317.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint317.ClearBody;
  BackendEndpoint317.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint317.Execute;
  if RESTResponse317.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse317.RawBytes);
      postonotesMemTable317.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteonotesExecute(const ID: String);
begin
  BackendEndpoint318.Params.ParameterByName('id').Value := ID;
  BackendEndpoint318.Execute;
end;

procedure TAutoTablesClientDM.getonsite_documentsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint319.Execute;
  if RESTResponse319.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse319.RawBytes);
      getonsite_documentsMemTable319.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postonsite_documentsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postonsite_documentsPostMemTable320.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint320.ClearBody;
  BackendEndpoint320.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint320.Execute;
  if RESTResponse320.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse320.RawBytes);
      postonsite_documentsMemTable320.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteonsite_documentsExecute(const ID: String);
begin
  BackendEndpoint321.Params.ParameterByName('id').Value := ID;
  BackendEndpoint321.Execute;
end;

procedure TAutoTablesClientDM.getonsite_mailExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint322.Execute;
  if RESTResponse322.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse322.RawBytes);
      getonsite_mailMemTable322.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postonsite_mailExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postonsite_mailPostMemTable323.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint323.ClearBody;
  BackendEndpoint323.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint323.Execute;
  if RESTResponse323.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse323.RawBytes);
      postonsite_mailMemTable323.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteonsite_mailExecute(const ID: String);
begin
  BackendEndpoint324.Params.ParameterByName('id').Value := ID;
  BackendEndpoint324.Execute;
end;

procedure TAutoTablesClientDM.getonsite_messagesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint325.Execute;
  if RESTResponse325.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse325.RawBytes);
      getonsite_messagesMemTable325.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postonsite_messagesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postonsite_messagesPostMemTable326.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint326.ClearBody;
  BackendEndpoint326.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint326.Execute;
  if RESTResponse326.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse326.RawBytes);
      postonsite_messagesMemTable326.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteonsite_messagesExecute(const ID: String);
begin
  BackendEndpoint327.Params.ParameterByName('id').Value := ID;
  BackendEndpoint327.Execute;
end;

procedure TAutoTablesClientDM.getonsite_onlineExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint328.Execute;
  if RESTResponse328.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse328.RawBytes);
      getonsite_onlineMemTable328.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postonsite_onlineExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postonsite_onlinePostMemTable329.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint329.ClearBody;
  BackendEndpoint329.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint329.Execute;
  if RESTResponse329.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse329.RawBytes);
      postonsite_onlineMemTable329.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteonsite_onlineExecute(const ID: String);
begin
  BackendEndpoint330.Params.ParameterByName('hash').Value := ID;
  BackendEndpoint330.Execute;
end;

procedure TAutoTablesClientDM.getonsite_portal_activityExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint331.Execute;
  if RESTResponse331.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse331.RawBytes);
      getonsite_portal_activityMemTable331.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postonsite_portal_activityExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postonsite_portal_activityPostMemTable332.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint332.ClearBody;
  BackendEndpoint332.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint332.Execute;
  if RESTResponse332.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse332.RawBytes);
      postonsite_portal_activityMemTable332.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteonsite_portal_activityExecute(const ID: String);
begin
  BackendEndpoint333.Params.ParameterByName('id').Value := ID;
  BackendEndpoint333.Execute;
end;

procedure TAutoTablesClientDM.getonsite_signaturesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint334.Execute;
  if RESTResponse334.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse334.RawBytes);
      getonsite_signaturesMemTable334.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postonsite_signaturesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postonsite_signaturesPostMemTable335.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint335.ClearBody;
  BackendEndpoint335.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint335.Execute;
  if RESTResponse335.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse335.RawBytes);
      postonsite_signaturesMemTable335.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteonsite_signaturesExecute(const ID: String);
begin
  BackendEndpoint336.Params.ParameterByName('id').Value := ID;
  BackendEndpoint336.Execute;
end;

procedure TAutoTablesClientDM.getopenemr_module_varsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint337.Execute;
  if RESTResponse337.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse337.RawBytes);
      getopenemr_module_varsMemTable337.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postopenemr_module_varsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postopenemr_module_varsPostMemTable338.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint338.ClearBody;
  BackendEndpoint338.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint338.Execute;
  if RESTResponse338.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse338.RawBytes);
      postopenemr_module_varsMemTable338.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteopenemr_module_varsExecute(const ID: String);
begin
  BackendEndpoint339.Params.ParameterByName('pn_id').Value := ID;
  BackendEndpoint339.Execute;
end;

procedure TAutoTablesClientDM.getopenemr_modulesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint340.Execute;
  if RESTResponse340.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse340.RawBytes);
      getopenemr_modulesMemTable340.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postopenemr_modulesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postopenemr_modulesPostMemTable341.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint341.ClearBody;
  BackendEndpoint341.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint341.Execute;
  if RESTResponse341.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse341.RawBytes);
      postopenemr_modulesMemTable341.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteopenemr_modulesExecute(const ID: String);
begin
  BackendEndpoint342.Params.ParameterByName('pn_id').Value := ID;
  BackendEndpoint342.Execute;
end;

procedure TAutoTablesClientDM.getopenemr_postcalendar_categoriesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint343.Execute;
  if RESTResponse343.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse343.RawBytes);
      getopenemr_postcalendar_categoriesMemTable343.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postopenemr_postcalendar_categoriesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postopenemr_postcalendar_categoriesPostMemTable344.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint344.ClearBody;
  BackendEndpoint344.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint344.Execute;
  if RESTResponse344.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse344.RawBytes);
      postopenemr_postcalendar_categoriesMemTable344.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteopenemr_postcalendar_categoriesExecute(const ID: String);
begin
  BackendEndpoint345.Params.ParameterByName('pc_catid').Value := ID;
  BackendEndpoint345.Execute;
end;

procedure TAutoTablesClientDM.getopenemr_postcalendar_eventsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint346.Execute;
  if RESTResponse346.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse346.RawBytes);
      getopenemr_postcalendar_eventsMemTable346.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postopenemr_postcalendar_eventsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postopenemr_postcalendar_eventsPostMemTable347.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint347.ClearBody;
  BackendEndpoint347.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint347.Execute;
  if RESTResponse347.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse347.RawBytes);
      postopenemr_postcalendar_eventsMemTable347.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteopenemr_postcalendar_eventsExecute(const ID: String);
begin
  BackendEndpoint348.Params.ParameterByName('pc_eid').Value := ID;
  BackendEndpoint348.Execute;
end;

procedure TAutoTablesClientDM.getopenemr_postcalendar_limitsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint349.Execute;
  if RESTResponse349.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse349.RawBytes);
      getopenemr_postcalendar_limitsMemTable349.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postopenemr_postcalendar_limitsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postopenemr_postcalendar_limitsPostMemTable350.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint350.ClearBody;
  BackendEndpoint350.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint350.Execute;
  if RESTResponse350.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse350.RawBytes);
      postopenemr_postcalendar_limitsMemTable350.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteopenemr_postcalendar_limitsExecute(const ID: String);
begin
  BackendEndpoint351.Params.ParameterByName('pc_limitid').Value := ID;
  BackendEndpoint351.Execute;
end;

procedure TAutoTablesClientDM.getopenemr_postcalendar_topicsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint352.Execute;
  if RESTResponse352.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse352.RawBytes);
      getopenemr_postcalendar_topicsMemTable352.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postopenemr_postcalendar_topicsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postopenemr_postcalendar_topicsPostMemTable353.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint353.ClearBody;
  BackendEndpoint353.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint353.Execute;
  if RESTResponse353.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse353.RawBytes);
      postopenemr_postcalendar_topicsMemTable353.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteopenemr_postcalendar_topicsExecute(const ID: String);
begin
  BackendEndpoint354.Params.ParameterByName('pc_catid').Value := ID;
  BackendEndpoint354.Execute;
end;

procedure TAutoTablesClientDM.getopenemr_session_infoExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint355.Execute;
  if RESTResponse355.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse355.RawBytes);
      getopenemr_session_infoMemTable355.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postopenemr_session_infoExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postopenemr_session_infoPostMemTable356.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint356.ClearBody;
  BackendEndpoint356.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint356.Execute;
  if RESTResponse356.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse356.RawBytes);
      postopenemr_session_infoMemTable356.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteopenemr_session_infoExecute(const ID: String);
begin
  BackendEndpoint357.Params.ParameterByName('pn_sessid').Value := ID;
  BackendEndpoint357.Execute;
end;

procedure TAutoTablesClientDM.getpatient_access_offsiteExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint358.Execute;
  if RESTResponse358.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse358.RawBytes);
      getpatient_access_offsiteMemTable358.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpatient_access_offsiteExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpatient_access_offsitePostMemTable359.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint359.ClearBody;
  BackendEndpoint359.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint359.Execute;
  if RESTResponse359.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse359.RawBytes);
      postpatient_access_offsiteMemTable359.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepatient_access_offsiteExecute(const ID: String);
begin
  BackendEndpoint360.Params.ParameterByName('id').Value := ID;
  BackendEndpoint360.Execute;
end;

procedure TAutoTablesClientDM.getpatient_access_onsiteExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint361.Execute;
  if RESTResponse361.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse361.RawBytes);
      getpatient_access_onsiteMemTable361.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpatient_access_onsiteExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpatient_access_onsitePostMemTable362.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint362.ClearBody;
  BackendEndpoint362.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint362.Execute;
  if RESTResponse362.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse362.RawBytes);
      postpatient_access_onsiteMemTable362.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepatient_access_onsiteExecute(const ID: String);
begin
  BackendEndpoint363.Params.ParameterByName('id').Value := ID;
  BackendEndpoint363.Execute;
end;

procedure TAutoTablesClientDM.getpatient_dataExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint364.Execute;
  if RESTResponse364.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse364.RawBytes);
      getpatient_dataMemTable364.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getpatient_portal_menuExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint365.Execute;
  if RESTResponse365.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse365.RawBytes);
      getpatient_portal_menuMemTable365.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpatient_portal_menuExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpatient_portal_menuPostMemTable366.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint366.ClearBody;
  BackendEndpoint366.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint366.Execute;
  if RESTResponse366.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse366.RawBytes);
      postpatient_portal_menuMemTable366.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepatient_portal_menuExecute(const ID: String);
begin
  BackendEndpoint367.Params.ParameterByName('patient_portal_menu_id').Value := ID;
  BackendEndpoint367.Execute;
end;

procedure TAutoTablesClientDM.getpatient_remindersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint368.Execute;
  if RESTResponse368.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse368.RawBytes);
      getpatient_remindersMemTable368.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpatient_remindersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpatient_remindersPostMemTable369.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint369.ClearBody;
  BackendEndpoint369.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint369.Execute;
  if RESTResponse369.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse369.RawBytes);
      postpatient_remindersMemTable369.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepatient_remindersExecute(const ID: String);
begin
  BackendEndpoint370.Params.ParameterByName('id').Value := ID;
  BackendEndpoint370.Execute;
end;

procedure TAutoTablesClientDM.getpatient_trackerExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint371.Execute;
  if RESTResponse371.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse371.RawBytes);
      getpatient_trackerMemTable371.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpatient_trackerExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpatient_trackerPostMemTable372.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint372.ClearBody;
  BackendEndpoint372.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint372.Execute;
  if RESTResponse372.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse372.RawBytes);
      postpatient_trackerMemTable372.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepatient_trackerExecute(const ID: String);
begin
  BackendEndpoint373.Params.ParameterByName('id').Value := ID;
  BackendEndpoint373.Execute;
end;

procedure TAutoTablesClientDM.getpatient_tracker_elementExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint374.Execute;
  if RESTResponse374.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse374.RawBytes);
      getpatient_tracker_elementMemTable374.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getpayment_gateway_detailsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint375.Execute;
  if RESTResponse375.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse375.RawBytes);
      getpayment_gateway_detailsMemTable375.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpayment_gateway_detailsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpayment_gateway_detailsPostMemTable376.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint376.ClearBody;
  BackendEndpoint376.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint376.Execute;
  if RESTResponse376.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse376.RawBytes);
      postpayment_gateway_detailsMemTable376.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepayment_gateway_detailsExecute(const ID: String);
begin
  BackendEndpoint377.Params.ParameterByName('id').Value := ID;
  BackendEndpoint377.Execute;
end;

procedure TAutoTablesClientDM.getpaymentsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint378.Execute;
  if RESTResponse378.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse378.RawBytes);
      getpaymentsMemTable378.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpaymentsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpaymentsPostMemTable379.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint379.ClearBody;
  BackendEndpoint379.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint379.Execute;
  if RESTResponse379.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse379.RawBytes);
      postpaymentsMemTable379.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepaymentsExecute(const ID: String);
begin
  BackendEndpoint380.Params.ParameterByName('id').Value := ID;
  BackendEndpoint380.Execute;
end;

procedure TAutoTablesClientDM.getpharmaciesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint381.Execute;
  if RESTResponse381.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse381.RawBytes);
      getpharmaciesMemTable381.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpharmaciesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpharmaciesPostMemTable382.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint382.ClearBody;
  BackendEndpoint382.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint382.Execute;
  if RESTResponse382.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse382.RawBytes);
      postpharmaciesMemTable382.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepharmaciesExecute(const ID: String);
begin
  BackendEndpoint383.Params.ParameterByName('id').Value := ID;
  BackendEndpoint383.Execute;
end;

procedure TAutoTablesClientDM.getphone_numbersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint384.Execute;
  if RESTResponse384.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse384.RawBytes);
      getphone_numbersMemTable384.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postphone_numbersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postphone_numbersPostMemTable385.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint385.ClearBody;
  BackendEndpoint385.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint385.Execute;
  if RESTResponse385.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse385.RawBytes);
      postphone_numbersMemTable385.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletephone_numbersExecute(const ID: String);
begin
  BackendEndpoint386.Params.ParameterByName('id').Value := ID;
  BackendEndpoint386.Execute;
end;

procedure TAutoTablesClientDM.getpnotesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint387.Execute;
  if RESTResponse387.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse387.RawBytes);
      getpnotesMemTable387.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpnotesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpnotesPostMemTable388.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint388.ClearBody;
  BackendEndpoint388.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint388.Execute;
  if RESTResponse388.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse388.RawBytes);
      postpnotesMemTable388.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepnotesExecute(const ID: String);
begin
  BackendEndpoint389.Params.ParameterByName('id').Value := ID;
  BackendEndpoint389.Execute;
end;

procedure TAutoTablesClientDM.getprescriptionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint390.Execute;
  if RESTResponse390.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse390.RawBytes);
      getprescriptionsMemTable390.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postprescriptionsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postprescriptionsPostMemTable391.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint391.ClearBody;
  BackendEndpoint391.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint391.Execute;
  if RESTResponse391.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse391.RawBytes);
      postprescriptionsMemTable391.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteprescriptionsExecute(const ID: String);
begin
  BackendEndpoint392.Params.ParameterByName('id').Value := ID;
  BackendEndpoint392.Execute;
end;

procedure TAutoTablesClientDM.getpricesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint393.Execute;
  if RESTResponse393.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse393.RawBytes);
      getpricesMemTable393.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postpricesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postpricesPostMemTable394.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint394.ClearBody;
  BackendEndpoint394.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint394.Execute;
  if RESTResponse394.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse394.RawBytes);
      postpricesMemTable394.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletepricesExecute(const ID: String);
begin
  BackendEndpoint395.Params.ParameterByName('pr_id').Value := ID;
  BackendEndpoint395.Execute;
end;

procedure TAutoTablesClientDM.getprocedure_answersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint396.Execute;
  if RESTResponse396.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse396.RawBytes);
      getprocedure_answersMemTable396.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postprocedure_answersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postprocedure_answersPostMemTable397.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint397.ClearBody;
  BackendEndpoint397.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint397.Execute;
  if RESTResponse397.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse397.RawBytes);
      postprocedure_answersMemTable397.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteprocedure_answersExecute(const ID: String);
begin
  BackendEndpoint398.Params.ParameterByName('procedure_order_id').Value := ID;
  BackendEndpoint398.Execute;
end;

procedure TAutoTablesClientDM.getprocedure_orderExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint399.Execute;
  if RESTResponse399.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse399.RawBytes);
      getprocedure_orderMemTable399.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postprocedure_orderExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postprocedure_orderPostMemTable400.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint400.ClearBody;
  BackendEndpoint400.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint400.Execute;
  if RESTResponse400.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse400.RawBytes);
      postprocedure_orderMemTable400.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteprocedure_orderExecute(const ID: String);
begin
  BackendEndpoint401.Params.ParameterByName('procedure_order_id').Value := ID;
  BackendEndpoint401.Execute;
end;

procedure TAutoTablesClientDM.getprocedure_order_codeExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint402.Execute;
  if RESTResponse402.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse402.RawBytes);
      getprocedure_order_codeMemTable402.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postprocedure_order_codeExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postprocedure_order_codePostMemTable403.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint403.ClearBody;
  BackendEndpoint403.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint403.Execute;
  if RESTResponse403.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse403.RawBytes);
      postprocedure_order_codeMemTable403.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteprocedure_order_codeExecute(const ID: String);
begin
  BackendEndpoint404.Params.ParameterByName('procedure_order_id').Value := ID;
  BackendEndpoint404.Execute;
end;

procedure TAutoTablesClientDM.getprocedure_providersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint405.Execute;
  if RESTResponse405.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse405.RawBytes);
      getprocedure_providersMemTable405.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postprocedure_providersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postprocedure_providersPostMemTable406.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint406.ClearBody;
  BackendEndpoint406.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint406.Execute;
  if RESTResponse406.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse406.RawBytes);
      postprocedure_providersMemTable406.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteprocedure_providersExecute(const ID: String);
begin
  BackendEndpoint407.Params.ParameterByName('ppid').Value := ID;
  BackendEndpoint407.Execute;
end;

procedure TAutoTablesClientDM.getprocedure_questionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint408.Execute;
  if RESTResponse408.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse408.RawBytes);
      getprocedure_questionsMemTable408.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postprocedure_questionsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postprocedure_questionsPostMemTable409.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint409.ClearBody;
  BackendEndpoint409.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint409.Execute;
  if RESTResponse409.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse409.RawBytes);
      postprocedure_questionsMemTable409.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteprocedure_questionsExecute(const ID: String);
begin
  BackendEndpoint410.Params.ParameterByName('lab_id').Value := ID;
  BackendEndpoint410.Execute;
end;

procedure TAutoTablesClientDM.getprocedure_reportExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint411.Execute;
  if RESTResponse411.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse411.RawBytes);
      getprocedure_reportMemTable411.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postprocedure_reportExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postprocedure_reportPostMemTable412.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint412.ClearBody;
  BackendEndpoint412.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint412.Execute;
  if RESTResponse412.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse412.RawBytes);
      postprocedure_reportMemTable412.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteprocedure_reportExecute(const ID: String);
begin
  BackendEndpoint413.Params.ParameterByName('procedure_report_id').Value := ID;
  BackendEndpoint413.Execute;
end;

procedure TAutoTablesClientDM.getprocedure_resultExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint414.Execute;
  if RESTResponse414.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse414.RawBytes);
      getprocedure_resultMemTable414.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postprocedure_resultExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postprocedure_resultPostMemTable415.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint415.ClearBody;
  BackendEndpoint415.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint415.Execute;
  if RESTResponse415.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse415.RawBytes);
      postprocedure_resultMemTable415.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteprocedure_resultExecute(const ID: String);
begin
  BackendEndpoint416.Params.ParameterByName('procedure_result_id').Value := ID;
  BackendEndpoint416.Execute;
end;

procedure TAutoTablesClientDM.getprocedure_typeExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint417.Execute;
  if RESTResponse417.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse417.RawBytes);
      getprocedure_typeMemTable417.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postprocedure_typeExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postprocedure_typePostMemTable418.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint418.ClearBody;
  BackendEndpoint418.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint418.Execute;
  if RESTResponse418.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse418.RawBytes);
      postprocedure_typeMemTable418.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteprocedure_typeExecute(const ID: String);
begin
  BackendEndpoint419.Params.ParameterByName('procedure_type_id').Value := ID;
  BackendEndpoint419.Execute;
end;

procedure TAutoTablesClientDM.getproduct_warehouseExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint420.Execute;
  if RESTResponse420.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse420.RawBytes);
      getproduct_warehouseMemTable420.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postproduct_warehouseExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postproduct_warehousePostMemTable421.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint421.ClearBody;
  BackendEndpoint421.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint421.Execute;
  if RESTResponse421.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse421.RawBytes);
      postproduct_warehouseMemTable421.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteproduct_warehouseExecute(const ID: String);
begin
  BackendEndpoint422.Params.ParameterByName('pw_drug_id').Value := ID;
  BackendEndpoint422.Execute;
end;

procedure TAutoTablesClientDM.getregistryExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint423.Execute;
  if RESTResponse423.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse423.RawBytes);
      getregistryMemTable423.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postregistryExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postregistryPostMemTable424.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint424.ClearBody;
  BackendEndpoint424.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint424.Execute;
  if RESTResponse424.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse424.RawBytes);
      postregistryMemTable424.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteregistryExecute(const ID: String);
begin
  BackendEndpoint425.Params.ParameterByName('id').Value := ID;
  BackendEndpoint425.Execute;
end;

procedure TAutoTablesClientDM.getreport_itemizedExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint426.Execute;
  if RESTResponse426.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse426.RawBytes);
      getreport_itemizedMemTable426.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getreport_resultsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint427.Execute;
  if RESTResponse427.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse427.RawBytes);
      getreport_resultsMemTable427.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postreport_resultsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postreport_resultsPostMemTable428.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint428.ClearBody;
  BackendEndpoint428.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint428.Execute;
  if RESTResponse428.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse428.RawBytes);
      postreport_resultsMemTable428.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletereport_resultsExecute(const ID: String);
begin
  BackendEndpoint429.Params.ParameterByName('report_id').Value := ID;
  BackendEndpoint429.Execute;
end;

procedure TAutoTablesClientDM.getrule_actionExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint430.Execute;
  if RESTResponse430.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse430.RawBytes);
      getrule_actionMemTable430.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getrule_action_itemExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint431.Execute;
  if RESTResponse431.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse431.RawBytes);
      getrule_action_itemMemTable431.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postrule_action_itemExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postrule_action_itemPostMemTable432.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint432.ClearBody;
  BackendEndpoint432.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint432.Execute;
  if RESTResponse432.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse432.RawBytes);
      postrule_action_itemMemTable432.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleterule_action_itemExecute(const ID: String);
begin
  BackendEndpoint433.Params.ParameterByName('category').Value := ID;
  BackendEndpoint433.Execute;
end;

procedure TAutoTablesClientDM.getrule_filterExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint434.Execute;
  if RESTResponse434.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse434.RawBytes);
      getrule_filterMemTable434.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getrule_patient_dataExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint435.Execute;
  if RESTResponse435.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse435.RawBytes);
      getrule_patient_dataMemTable435.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postrule_patient_dataExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postrule_patient_dataPostMemTable436.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint436.ClearBody;
  BackendEndpoint436.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint436.Execute;
  if RESTResponse436.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse436.RawBytes);
      postrule_patient_dataMemTable436.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleterule_patient_dataExecute(const ID: String);
begin
  BackendEndpoint437.Params.ParameterByName('id').Value := ID;
  BackendEndpoint437.Execute;
end;

procedure TAutoTablesClientDM.getrule_reminderExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint438.Execute;
  if RESTResponse438.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse438.RawBytes);
      getrule_reminderMemTable438.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getrule_targetExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint439.Execute;
  if RESTResponse439.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse439.RawBytes);
      getrule_targetMemTable439.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getsequencesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint440.Execute;
  if RESTResponse440.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse440.RawBytes);
      getsequencesMemTable440.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getshared_attributesExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint441.Execute;
  if RESTResponse441.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse441.RawBytes);
      getshared_attributesMemTable441.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postshared_attributesExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postshared_attributesPostMemTable442.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint442.ClearBody;
  BackendEndpoint442.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint442.Execute;
  if RESTResponse442.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse442.RawBytes);
      postshared_attributesMemTable442.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteshared_attributesExecute(const ID: String);
begin
  BackendEndpoint443.Params.ParameterByName('pid').Value := ID;
  BackendEndpoint443.Execute;
end;

procedure TAutoTablesClientDM.getstandardized_tables_trackExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint444.Execute;
  if RESTResponse444.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse444.RawBytes);
      getstandardized_tables_trackMemTable444.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.poststandardized_tables_trackExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  poststandardized_tables_trackPostMemTable445.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint445.ClearBody;
  BackendEndpoint445.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint445.Execute;
  if RESTResponse445.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse445.RawBytes);
      poststandardized_tables_trackMemTable445.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletestandardized_tables_trackExecute(const ID: String);
begin
  BackendEndpoint446.Params.ParameterByName('id').Value := ID;
  BackendEndpoint446.Execute;
end;

procedure TAutoTablesClientDM.getsupported_external_dataloadsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint447.Execute;
  if RESTResponse447.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse447.RawBytes);
      getsupported_external_dataloadsMemTable447.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getsyndromic_surveillanceExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint448.Execute;
  if RESTResponse448.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse448.RawBytes);
      getsyndromic_surveillanceMemTable448.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postsyndromic_surveillanceExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postsyndromic_surveillancePostMemTable449.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint449.ClearBody;
  BackendEndpoint449.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint449.Execute;
  if RESTResponse449.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse449.RawBytes);
      postsyndromic_surveillanceMemTable449.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletesyndromic_surveillanceExecute(const ID: String);
begin
  BackendEndpoint450.Params.ParameterByName('id').Value := ID;
  BackendEndpoint450.Execute;
end;

procedure TAutoTablesClientDM.gettemplate_usersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint451.Execute;
  if RESTResponse451.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse451.RawBytes);
      gettemplate_usersMemTable451.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.posttemplate_usersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  posttemplate_usersPostMemTable452.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint452.ClearBody;
  BackendEndpoint452.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint452.Execute;
  if RESTResponse452.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse452.RawBytes);
      posttemplate_usersMemTable452.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletetemplate_usersExecute(const ID: String);
begin
  BackendEndpoint453.Params.ParameterByName('tu_id').Value := ID;
  BackendEndpoint453.Execute;
end;

procedure TAutoTablesClientDM.gettransactionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint454.Execute;
  if RESTResponse454.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse454.RawBytes);
      gettransactionsMemTable454.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.posttransactionsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  posttransactionsPostMemTable455.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint455.ClearBody;
  BackendEndpoint455.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint455.Execute;
  if RESTResponse455.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse455.RawBytes);
      posttransactionsMemTable455.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletetransactionsExecute(const ID: String);
begin
  BackendEndpoint456.Params.ParameterByName('id').Value := ID;
  BackendEndpoint456.Execute;
end;

procedure TAutoTablesClientDM.getuser_settingsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint457.Execute;
  if RESTResponse457.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse457.RawBytes);
      getuser_settingsMemTable457.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postuser_settingsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postuser_settingsPostMemTable458.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint458.ClearBody;
  BackendEndpoint458.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint458.Execute;
  if RESTResponse458.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse458.RawBytes);
      postuser_settingsMemTable458.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteuser_settingsExecute(const ID: String);
begin
  BackendEndpoint459.Params.ParameterByName('setting_user').Value := ID;
  BackendEndpoint459.Execute;
end;

procedure TAutoTablesClientDM.getusersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint460.Execute;
  if RESTResponse460.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse460.RawBytes);
      getusersMemTable460.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postusersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postusersPostMemTable461.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint461.ClearBody;
  BackendEndpoint461.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint461.Execute;
  if RESTResponse461.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse461.RawBytes);
      postusersMemTable461.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteusersExecute(const ID: String);
begin
  BackendEndpoint462.Params.ParameterByName('id').Value := ID;
  BackendEndpoint462.Execute;
end;

procedure TAutoTablesClientDM.getusers_facilityExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint463.Execute;
  if RESTResponse463.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse463.RawBytes);
      getusers_facilityMemTable463.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postusers_facilityExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postusers_facilityPostMemTable464.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint464.ClearBody;
  BackendEndpoint464.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint464.Execute;
  if RESTResponse464.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse464.RawBytes);
      postusers_facilityMemTable464.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteusers_facilityExecute(const ID: String);
begin
  BackendEndpoint465.Params.ParameterByName('tablename').Value := ID;
  BackendEndpoint465.Execute;
end;

procedure TAutoTablesClientDM.getusers_secureExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint466.Execute;
  if RESTResponse466.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse466.RawBytes);
      getusers_secureMemTable466.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postusers_secureExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postusers_securePostMemTable467.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint467.ClearBody;
  BackendEndpoint467.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint467.Execute;
  if RESTResponse467.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse467.RawBytes);
      postusers_secureMemTable467.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteusers_secureExecute(const ID: String);
begin
  BackendEndpoint468.Params.ParameterByName('id').Value := ID;
  BackendEndpoint468.Execute;
end;

procedure TAutoTablesClientDM.getvaluesetExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint469.Execute;
  if RESTResponse469.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse469.RawBytes);
      getvaluesetMemTable469.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postvaluesetExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postvaluesetPostMemTable470.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint470.ClearBody;
  BackendEndpoint470.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint470.Execute;
  if RESTResponse470.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse470.RawBytes);
      postvaluesetMemTable470.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletevaluesetExecute(const ID: String);
begin
  BackendEndpoint471.Params.ParameterByName('nqf_code').Value := ID;
  BackendEndpoint471.Execute;
end;

procedure TAutoTablesClientDM.getversionExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint472.Execute;
  if RESTResponse472.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse472.RawBytes);
      getversionMemTable472.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.getvoidsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint473.Execute;
  if RESTResponse473.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse473.RawBytes);
      getvoidsMemTable473.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postvoidsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postvoidsPostMemTable474.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint474.ClearBody;
  BackendEndpoint474.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint474.Execute;
  if RESTResponse474.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse474.RawBytes);
      postvoidsMemTable474.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletevoidsExecute(const ID: String);
begin
  BackendEndpoint475.Params.ParameterByName('void_id').Value := ID;
  BackendEndpoint475.Execute;
end;

procedure TAutoTablesClientDM.getx12_partnersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint476.Execute;
  if RESTResponse476.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse476.RawBytes);
      getx12_partnersMemTable476.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postx12_partnersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postx12_partnersPostMemTable477.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint477.ClearBody;
  BackendEndpoint477.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint477.Execute;
  if RESTResponse477.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse477.RawBytes);
      postx12_partnersMemTable477.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletex12_partnersExecute(const ID: String);
begin
  BackendEndpoint478.Params.ParameterByName('id').Value := ID;
  BackendEndpoint478.Execute;
end;

end.

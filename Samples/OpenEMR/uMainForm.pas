unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.ScrollBox, FMX.Grid, FMX.Controls.Presentation,
  FMX.MultiView, FMX.ListView, FireDAC.Stan.StorageBin, FMX.StdCtrls,
  FMX.TabControl, FMX.Objects, FMX.Layouts, FMX.Platform, FMX.DialogService.Async,
  FireDAC.Stan.StorageJSON, FMX.Ani, System.Threading, System.Math;

type
  TMainForm = class(TForm)
    ListView1: TListView;
    MultiView1: TMultiView;
    TableStringGrid: TStringGrid;
    MenuMT: TFDMemTable;
    ListMT: TFDMemTable;
    BindSourceDBList: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindSourceDBListView: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    ToolBar1: TToolBar;
    HeaderRect: TRectangle;
    LogoImage: TImage;
    TabControl: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    DetailMT: TFDMemTable;
    BindSourceDBDetails: TBindSourceDB;
    SaveBTN: TButton;
    DeleteBTN: TButton;
    MenuBTN: TButton;
    ToolBar2: TToolBar;
    EditBTN: TButton;
    AddBTN: TButton;
    BackBTN: TButton;
    MaterialOxfordBlueSB: TStyleBook;
    WedgewoodLightSB: TStyleBook;
    RefreshBTN: TButton;
    DetailsStringGrid: TStringGrid;
    LinkGridToDataSourceBindSourceDBDetails: TLinkGridToDataSource;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    ActivityLayout: TLayout;
    BackgroundRect: TRectangle;
    ActivityCircle: TCircle;
    ActivityArc: TArc;
    ActivityFloatAni: TFloatAnimation;
    ClipCircle: TCircle;
    ActivityTimer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure DetailsStringGridResized(Sender: TObject);
    procedure TableStringGridResized(Sender: TObject);
    procedure EditBTNClick(Sender: TObject);
    procedure BackBTNClick(Sender: TObject);
    procedure SaveBTNClick(Sender: TObject);
    procedure DeleteBTNClick(Sender: TObject);
    procedure AddBTNClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RefreshBTNClick(Sender: TObject);
    procedure DetailsStringGridCellClick(const Column: TColumn;
      const Row: Integer);
    procedure ActivityTimerTimer(Sender: TObject);
    procedure ListView1Change(Sender: TObject);
  private
    { Private declarations }
    CurrentItem: Integer;
    Closing: Boolean;
    RunOnce: Boolean;
    procedure Log(const S: String);
    procedure LoadTable;
    procedure RefreshTable;
    procedure DeleteRecord(Sender: TObject);
    procedure ApplicationIdle(Sender: TObject; var Done: Boolean);
  public
    { Public declarations }
    procedure ShowActivity;
    procedure HideActivity;
    procedure AsyncTask(Worker: TComponent; TaskFunc,FinishFunc,ErrorFunc: TProc);
  end;
  const
    NOT_BUSY = 0;
    BUSY = 0;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses
  uAutoTablesClientDM;

procedure TMainForm.Log(const S: string);
begin
  TDialogServiceAsync.ShowMessage(S);
end;

procedure TMainForm.LoadTable;
var
Obj: TObject;
begin
   if ListView1.Tag=NOT_BUSY then
    if ListView1.Selected<>nil then
      begin
        if MenuMT.FieldByName('get').AsString<>'' then
          begin
            AsyncTask(ListView1,procedure begin

              AutoTablesClientDM.CallGet(MenuMT.FieldByName('get').AsString);

            end,
            procedure begin

              if MenuMT.FieldByName('getmemtable').AsString<>'' then
                begin
                  BindSourceDBList.DataSet.DisableControls;
                  Obj := AutoTablesClientDM.FindComponent(MenuMT.FieldByName('getmemtable').AsString);
                  if Obj<>nil then
                   if Obj is TDataSet then
                     begin
                      BindSourceDBList.DataSet := TDataSet(Obj);
                     end;

                 // LinkGridToDataSourceBindSourceDB1.UpdateColumns;
                  BindSourceDBList.DataSet.EnableControls;
                  RefreshTable;
                end;

            end,
            procedure begin
              Log('CallGet Error');
            end);
          end;
      end;
end;

procedure TMainForm.RefreshTable;
var
I: Integer;
ColumnCount: Integer;
ColumnWidth: Integer;
begin
  if Closing then Exit;

  ColumnCount := TableStringGrid.ColumnCount;
  ColumnWidth := Max(Trunc((TableStringGrid.Width-10)/ColumnCount),200);

  if ColumnCount>0 then
    begin
      for I := ColumnCount-1 downto 0 do
        begin
          try
            if ColumnCount>I then
              begin
                if TableStringGrid.Columns[I]<>nil then
                  TableStringGrid.Columns[I].Width := ColumnWidth;
              end;
          except
          end;
        end;
    end;
end;

procedure TMainForm.DeleteRecord(Sender: TObject);
begin
  if MenuMT.FieldByName('delete').AsString='' then Exit;

  AsyncTask(BackBTN,procedure begin
    AutoTablesClientDM.CallDelete(MenuMT.FieldByName('delete').AsString,BindSourceDBList.DataSet.FieldByName(MenuMT.FieldByName('uniqueid').AsString).AsString);
  end,
  procedure begin
    BindSourceDBList.DataSet.Delete;
    BackBTNClick(Sender);
  end,
  procedure begin
    Log('CallDelete Error');
  end);
end;

procedure TMainForm.EditBTNClick(Sender: TObject);
var
I: Integer;
SL: TStringList;
begin
  if MenuMT.FieldByName('post').AsString='' then
    begin
      TDialogServiceAsync.ShowMessage('Operation not supported.');
      Exit;
    end;

  if ListView1.Selected<>nil then
    begin
      if BindSourceDBList.DataSet.RecordCount>0 then
        begin
          DeleteBTN.Visible := True;

          SL := TStringList.Create;
          BindSourceDBList.DataSet.GetFieldNames(SL);

          LinkGridToDataSourceBindSourceDBDetails.Active := False;
          BindSourceDBDetails.DataSet.DisableControls;
          DetailMT.BeginBatch;
          DetailMT.EmptyDataSet;

          for I := 0 to SL.Count-1 do
            begin
             BindSourceDBDetails.DataSet.AppendRecord([SL[I],BindSourceDBList.DataSet.FieldByName(SL[I]).AsString]);
            end;

          SL.Free;

          DetailMT.EndBatch;
          BindSourceDBDetails.DataSet.EnableControls;
          LinkGridToDataSourceBindSourceDBDetails.Active := True;

          DetailsStringGridResized(Sender);
          TabControl.ActiveTab := TabItem2;
        end
      else
        begin
          TDialogServiceAsync.ShowMessage('No records to edit.');
        end;
    end
  else
    begin
      TDialogServiceAsync.ShowMessage('No table selected.');
    end;
end;

procedure TMainForm.ActivityTimerTimer(Sender: TObject);
begin
  ActivityTimer.Enabled := False;
  if ActivityLayout.Tag>0 then
    begin
      ActivityLayout.Visible := True;
      ActivityLayout.BringToFront;
      ActivityFloatAni.Start;
    end;
end;

procedure TMainForm.AddBTNClick(Sender: TObject);
var
I: Integer;
SL: TStringList;
begin
  if MenuMT.FieldByName('post').AsString='' then
    begin
      TDialogServiceAsync.ShowMessage('Operation not supported.');
      Exit;
    end;

  if ListView1.Selected<>nil then
    begin
      DeleteBTN.Visible := False;

      SL := TStringList.Create;
      BindSourceDBList.DataSet.GetFieldNames(SL);

      LinkGridToDataSourceBindSourceDBDetails.Active := False;
      BindSourceDBDetails.DataSet.DisableControls;
      DetailMT.EmptyDataSet;

      for I := 0 to SL.Count-1 do
        begin
         if MenuMT.FieldByName('uniqueid').AsString<>SL[I] then
           DetailMT.AppendRecord([SL[I],'']);
        end;
      BindSourceDBDetails.DataSet.EnableControls;
      SL.Free;
      LinkGridToDataSourceBindSourceDBDetails.Active := True;

      DetailsStringGridResized(Sender);
      TabControl.ActiveTab := TabItem2;
    end
  else
    begin
      TDialogServiceAsync.ShowMessage('No table selected.');
    end;
end;

procedure TMainForm.BackBTNClick(Sender: TObject);
begin
  TabControl.ActiveTab := TabItem1;
end;

procedure TMainForm.DeleteBTNClick(Sender: TObject);
var
  ASyncService: IFMXDialogServiceASync;
  AMessage: String;
begin
  AMessage := 'Are you sure you want to delete this record?';

  if TPlatformServices.Current.SupportsPlatformService (IFMXDialogServiceAsync, IInterface(ASyncService)) then
  begin
    ASyncService.MessageDialogAsync( AMessage, TMsgDlgType.mtConfirmation,
                                                   [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbNo, 0,
     procedure(const AResult: TModalResult)
     begin
       case AResult of
         mrYES: begin
            try
              DeleteRecord(Sender);
            except on E: Exception do
             begin
                TThread.Synchronize(nil,procedure begin
                  Log(E.Message);
                end);
             end;
            end;
         end;
       end;
     end);

  end
 else
  DeleteRecord(Sender);
end;

procedure TMainForm.DetailsStringGridCellClick(const Column: TColumn;
  const Row: Integer);
begin
  if Column.Index=0 then
    begin
     Column.ReadOnly := True;
    end
  else
    begin
      if DetailsStringGrid.Cells[0,Row]=MenuMT.FieldByName('uniqueid').AsString then
        begin
          Column.ReadOnly := True;
        end
      else
       Column.ReadOnly := False;
    end;
end;

procedure TMainForm.DetailsStringGridResized(Sender: TObject);
begin
  if Closing then Exit;

  if DetailsStringGrid.ColumnCount=2 then
    begin
      try
        DetailsStringGrid.Columns[0].Width := (DetailsStringGrid.Width-5)/2;
        DetailsStringGrid.Columns[1].Width := (DetailsStringGrid.Width-5)/2;
      except
      end;
    end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Closing := True;
end;

procedure TMainForm.ApplicationIdle(Sender: TObject; var Done: Boolean);
begin
  if RunOnce then Exit;

  RunOnce := True;

  MenuMT.DisableControls;
  MenuMT.AppendRecord(['openemr.addresses','getaddressesExecute','postaddressesExecute','deleteaddressesExecute','getaddressesMemTable1','postaddressesPostMemTable2','id']);
  MenuMT.AppendRecord(['openemr.amc_misc_data','getamc_misc_dataExecute','','','getamc_misc_dataMemTable4','','']);
  MenuMT.AppendRecord(['openemr.amendments','getamendmentsExecute','postamendmentsExecute','deleteamendmentsExecute','getamendmentsMemTable5','postamendmentsPostMemTable6','amendment_id']);
  MenuMT.AppendRecord(['openemr.amendments_history','getamendments_historyExecute','','','getamendments_historyMemTable8','','']);
  MenuMT.AppendRecord(['openemr.ar_activity','getar_activityExecute','postar_activityExecute','deletear_activityExecute','getar_activityMemTable9','postar_activityPostMemTable10','pid']);
  MenuMT.AppendRecord(['openemr.ar_session','getar_sessionExecute','postar_sessionExecute','deletear_sessionExecute','getar_sessionMemTable12','postar_sessionPostMemTable13','session_id']);
  MenuMT.AppendRecord(['openemr.array','getarrayExecute','','','getarrayMemTable15','','']);
  MenuMT.AppendRecord(['openemr.audit_details','getaudit_detailsExecute','postaudit_detailsExecute','deleteaudit_detailsExecute','getaudit_detailsMemTable16','postaudit_detailsPostMemTable17','id']);
  MenuMT.AppendRecord(['openemr.audit_master','getaudit_masterExecute','postaudit_masterExecute','deleteaudit_masterExecute','getaudit_masterMemTable19','postaudit_masterPostMemTable20','id']);
  MenuMT.AppendRecord(['openemr.automatic_notification','getautomatic_notificationExecute','postautomatic_notificationExecute','deleteautomatic_notificationExecute','getautomatic_notificationMemTable22','postautomatic_notificationPostMemTable23','notification_id']);
  MenuMT.AppendRecord(['openemr.background_services','getbackground_servicesExecute','postbackground_servicesExecute','deletebackground_servicesExecute','getbackground_servicesMemTable25','postbackground_servicesPostMemTable26','name']);
  MenuMT.AppendRecord(['openemr.batchcom','getbatchcomExecute','postbatchcomExecute','deletebatchcomExecute','getbatchcomMemTable28','postbatchcomPostMemTable29','id']);
  MenuMT.AppendRecord(['openemr.billing','getbillingExecute','postbillingExecute','deletebillingExecute','getbillingMemTable31','postbillingPostMemTable32','id']);
  MenuMT.AppendRecord(['openemr.calendar_external','getcalendar_externalExecute','postcalendar_externalExecute','deletecalendar_externalExecute','getcalendar_externalMemTable34','postcalendar_externalPostMemTable35','id']);
  MenuMT.AppendRecord(['openemr.categories','getcategoriesExecute','postcategoriesExecute','deletecategoriesExecute','getcategoriesMemTable37','postcategoriesPostMemTable38','id']);
  MenuMT.AppendRecord(['openemr.categories_seq','getcategories_seqExecute','postcategories_seqExecute','deletecategories_seqExecute','getcategories_seqMemTable40','postcategories_seqPostMemTable41','id']);
  MenuMT.AppendRecord(['openemr.categories_to_documents','getcategories_to_documentsExecute','postcategories_to_documentsExecute','deletecategories_to_documentsExecute','getcategories_to_documentsMemTable43','postcategories_to_documentsPostMemTable44','category_id']);
  MenuMT.AppendRecord(['openemr.ccda','getccdaExecute','postccdaExecute','deleteccdaExecute','getccdaMemTable46','postccdaPostMemTable47','id']);
  MenuMT.AppendRecord(['openemr.ccda_components','getccda_componentsExecute','postccda_componentsExecute','deleteccda_componentsExecute','getccda_componentsMemTable49','postccda_componentsPostMemTable50','ccda_components_id']);
  MenuMT.AppendRecord(['openemr.ccda_field_mapping','getccda_field_mappingExecute','postccda_field_mappingExecute','deleteccda_field_mappingExecute','getccda_field_mappingMemTable52','postccda_field_mappingPostMemTable53','id']);
  MenuMT.AppendRecord(['openemr.ccda_sections','getccda_sectionsExecute','postccda_sectionsExecute','deleteccda_sectionsExecute','getccda_sectionsMemTable55','postccda_sectionsPostMemTable56','ccda_sections_id']);
  MenuMT.AppendRecord(['openemr.ccda_table_mapping','getccda_table_mappingExecute','postccda_table_mappingExecute','deleteccda_table_mappingExecute','getccda_table_mappingMemTable58','postccda_table_mappingPostMemTable59','id']);
  MenuMT.AppendRecord(['openemr.chart_tracker','getchart_trackerExecute','postchart_trackerExecute','deletechart_trackerExecute','getchart_trackerMemTable61','postchart_trackerPostMemTable62','ct_pid']);
  MenuMT.AppendRecord(['openemr.claims','getclaimsExecute','postclaimsExecute','deleteclaimsExecute','getclaimsMemTable64','postclaimsPostMemTable65','patient_id']);
  MenuMT.AppendRecord(['openemr.clinical_plans','getclinical_plansExecute','postclinical_plansExecute','deleteclinical_plansExecute','getclinical_plansMemTable67','postclinical_plansPostMemTable68','id']);
  MenuMT.AppendRecord(['openemr.clinical_plans_rules','getclinical_plans_rulesExecute','postclinical_plans_rulesExecute','deleteclinical_plans_rulesExecute','getclinical_plans_rulesMemTable70','postclinical_plans_rulesPostMemTable71','plan_id']);
  MenuMT.AppendRecord(['openemr.clinical_rules','getclinical_rulesExecute','postclinical_rulesExecute','deleteclinical_rulesExecute','getclinical_rulesMemTable73','postclinical_rulesPostMemTable74','id']);
  MenuMT.AppendRecord(['openemr.clinical_rules_log','getclinical_rules_logExecute','postclinical_rules_logExecute','deleteclinical_rules_logExecute','getclinical_rules_logMemTable76','postclinical_rules_logPostMemTable77','id']);
  MenuMT.AppendRecord(['openemr.code_types','getcode_typesExecute','postcode_typesExecute','deletecode_typesExecute','getcode_typesMemTable79','postcode_typesPostMemTable80','ct_key']);
  MenuMT.AppendRecord(['openemr.codes','getcodesExecute','postcodesExecute','deletecodesExecute','getcodesMemTable82','postcodesPostMemTable83','id']);
  MenuMT.AppendRecord(['openemr.config','getconfigExecute','postconfigExecute','deleteconfigExecute','getconfigMemTable85','postconfigPostMemTable86','id']);
  MenuMT.AppendRecord(['openemr.config_seq','getconfig_seqExecute','postconfig_seqExecute','deleteconfig_seqExecute','getconfig_seqMemTable88','postconfig_seqPostMemTable89','id']);
  MenuMT.AppendRecord(['openemr.customlists','getcustomlistsExecute','postcustomlistsExecute','deletecustomlistsExecute','getcustomlistsMemTable91','postcustomlistsPostMemTable92','cl_list_slno']);
  MenuMT.AppendRecord(['openemr.dated_reminders','getdated_remindersExecute','postdated_remindersExecute','deletedated_remindersExecute','getdated_remindersMemTable94','postdated_remindersPostMemTable95','dr_id']);
  MenuMT.AppendRecord(['openemr.dated_reminders_link','getdated_reminders_linkExecute','postdated_reminders_linkExecute','deletedated_reminders_linkExecute','getdated_reminders_linkMemTable97','postdated_reminders_linkPostMemTable98','dr_link_id']);
  MenuMT.AppendRecord(['openemr.direct_message_log','getdirect_message_logExecute','postdirect_message_logExecute','deletedirect_message_logExecute','getdirect_message_logMemTable100','postdirect_message_logPostMemTable101','id']);
  MenuMT.AppendRecord(['openemr.documents','getdocumentsExecute','postdocumentsExecute','deletedocumentsExecute','getdocumentsMemTable103','postdocumentsPostMemTable104','id']);
  MenuMT.AppendRecord(['openemr.documents_legal_categories','getdocuments_legal_categoriesExecute','postdocuments_legal_categoriesExecute','deletedocuments_legal_categoriesExecute','getdocuments_legal_categoriesMemTable106','postdocuments_legal_categoriesPostMemTable107','dlc_id']);
  MenuMT.AppendRecord(['openemr.documents_legal_detail','getdocuments_legal_detailExecute','postdocuments_legal_detailExecute','deletedocuments_legal_detailExecute','getdocuments_legal_detailMemTable109','postdocuments_legal_detailPostMemTable110','dld_id']);
  MenuMT.AppendRecord(['openemr.documents_legal_master','getdocuments_legal_masterExecute','postdocuments_legal_masterExecute','deletedocuments_legal_masterExecute','getdocuments_legal_masterMemTable112','postdocuments_legal_masterPostMemTable113','dlm_document_id']);
  MenuMT.AppendRecord(['openemr.drug_inventory','getdrug_inventoryExecute','postdrug_inventoryExecute','deletedrug_inventoryExecute','getdrug_inventoryMemTable115','postdrug_inventoryPostMemTable116','inventory_id']);
  MenuMT.AppendRecord(['openemr.drug_sales','getdrug_salesExecute','postdrug_salesExecute','deletedrug_salesExecute','getdrug_salesMemTable118','postdrug_salesPostMemTable119','sale_id']);
  MenuMT.AppendRecord(['openemr.drug_templates','getdrug_templatesExecute','postdrug_templatesExecute','deletedrug_templatesExecute','getdrug_templatesMemTable121','postdrug_templatesPostMemTable122','drug_id']);
  MenuMT.AppendRecord(['openemr.drugs','getdrugsExecute','postdrugsExecute','deletedrugsExecute','getdrugsMemTable124','postdrugsPostMemTable125','drug_id']);
  MenuMT.AppendRecord(['openemr.eligibility_response','geteligibility_responseExecute','posteligibility_responseExecute','deleteeligibility_responseExecute','geteligibility_responseMemTable127','posteligibility_responsePostMemTable128','response_id']);
  MenuMT.AppendRecord(['openemr.eligibility_verification','geteligibility_verificationExecute','posteligibility_verificationExecute','deleteeligibility_verificationExecute','geteligibility_verificationMemTable130','posteligibility_verificationPostMemTable131','verification_id']);
  MenuMT.AppendRecord(['openemr.employer_data','getemployer_dataExecute','postemployer_dataExecute','deleteemployer_dataExecute','getemployer_dataMemTable133','postemployer_dataPostMemTable134','id']);
  MenuMT.AppendRecord(['openemr.enc_category_map','getenc_category_mapExecute','','','getenc_category_mapMemTable136','','']);
  MenuMT.AppendRecord(['openemr.erx_drug_paid','geterx_drug_paidExecute','posterx_drug_paidExecute','deleteerx_drug_paidExecute','geterx_drug_paidMemTable137','posterx_drug_paidPostMemTable138','drugid']);
  MenuMT.AppendRecord(['openemr.erx_narcotics','geterx_narcoticsExecute','posterx_narcoticsExecute','deleteerx_narcoticsExecute','geterx_narcoticsMemTable140','posterx_narcoticsPostMemTable141','id']);
  MenuMT.AppendRecord(['openemr.erx_rx_log','geterx_rx_logExecute','posterx_rx_logExecute','deleteerx_rx_logExecute','geterx_rx_logMemTable143','posterx_rx_logPostMemTable144','id']);
  MenuMT.AppendRecord(['openemr.erx_ttl_touch','geterx_ttl_touchExecute','posterx_ttl_touchExecute','deleteerx_ttl_touchExecute','geterx_ttl_touchMemTable146','posterx_ttl_touchPostMemTable147','patient_id']);
  MenuMT.AppendRecord(['openemr.esign_signatures','getesign_signaturesExecute','postesign_signaturesExecute','deleteesign_signaturesExecute','getesign_signaturesMemTable149','postesign_signaturesPostMemTable150','id']);
  MenuMT.AppendRecord(['openemr.extended_log','getextended_logExecute','postextended_logExecute','deleteextended_logExecute','getextended_logMemTable152','postextended_logPostMemTable153','id']);
  MenuMT.AppendRecord(['openemr.external_encounters','getexternal_encountersExecute','postexternal_encountersExecute','deleteexternal_encountersExecute','getexternal_encountersMemTable155','postexternal_encountersPostMemTable156','ee_id']);
  MenuMT.AppendRecord(['openemr.external_procedures','getexternal_proceduresExecute','postexternal_proceduresExecute','deleteexternal_proceduresExecute','getexternal_proceduresMemTable158','postexternal_proceduresPostMemTable159','ep_id']);
  MenuMT.AppendRecord(['openemr.facility','getfacilityExecute','postfacilityExecute','deletefacilityExecute','getfacilityMemTable161','postfacilityPostMemTable162','id']);
  MenuMT.AppendRecord(['openemr.facility_user_ids','getfacility_user_idsExecute','postfacility_user_idsExecute','deletefacility_user_idsExecute','getfacility_user_idsMemTable164','postfacility_user_idsPostMemTable165','id']);
  MenuMT.AppendRecord(['openemr.fee_sheet_options','getfee_sheet_optionsExecute','','','getfee_sheet_optionsMemTable167','','']);
  MenuMT.AppendRecord(['openemr.form_care_plan','getform_care_planExecute','','','getform_care_planMemTable168','','']);
  MenuMT.AppendRecord(['openemr.form_clinical_instructions','getform_clinical_instructionsExecute','postform_clinical_instructionsExecute','deleteform_clinical_instructionsExecute','getform_clinical_instructionsMemTable169','postform_clinical_instructionsPostMemTable170','id']);
  MenuMT.AppendRecord(['openemr.form_dictation','getform_dictationExecute','postform_dictationExecute','deleteform_dictationExecute','getform_dictationMemTable172','postform_dictationPostMemTable173','id']);
  MenuMT.AppendRecord(['openemr.form_encounter','getform_encounterExecute','postform_encounterExecute','deleteform_encounterExecute','getform_encounterMemTable175','postform_encounterPostMemTable176','id']);
  MenuMT.AppendRecord(['openemr.form_eye_mag_dispense','getform_eye_mag_dispenseExecute','postform_eye_mag_dispenseExecute','deleteform_eye_mag_dispenseExecute','getform_eye_mag_dispenseMemTable178','postform_eye_mag_dispensePostMemTable179','id']);
  MenuMT.AppendRecord(['openemr.form_eye_mag_prefs','getform_eye_mag_prefsExecute','','','getform_eye_mag_prefsMemTable181','','']);
  MenuMT.AppendRecord(['openemr.form_functional_cognitive_status','getform_functional_cognitive_statusExecute','','','getform_functional_cognitive_statusMemTable182','','']);
  MenuMT.AppendRecord(['openemr.form_misc_billing_options','getform_misc_billing_optionsExecute','postform_misc_billing_optionsExecute','deleteform_misc_billing_optionsExecute','getform_misc_billing_optionsMemTable183','postform_misc_billing_optionsPostMemTable184','id']);
  MenuMT.AppendRecord(['openemr.form_observation','getform_observationExecute','','','getform_observationMemTable186','','']);
  MenuMT.AppendRecord(['openemr.form_reviewofs','getform_reviewofsExecute','postform_reviewofsExecute','deleteform_reviewofsExecute','getform_reviewofsMemTable187','postform_reviewofsPostMemTable188','id']);
  MenuMT.AppendRecord(['openemr.form_ros','getform_rosExecute','postform_rosExecute','deleteform_rosExecute','getform_rosMemTable190','postform_rosPostMemTable191','id']);
  MenuMT.AppendRecord(['openemr.form_soap','getform_soapExecute','postform_soapExecute','deleteform_soapExecute','getform_soapMemTable193','postform_soapPostMemTable194','id']);
  MenuMT.AppendRecord(['openemr.form_vitals','getform_vitalsExecute','postform_vitalsExecute','deleteform_vitalsExecute','getform_vitalsMemTable196','postform_vitalsPostMemTable197','id']);
  MenuMT.AppendRecord(['openemr.forms','getformsExecute','postformsExecute','deleteformsExecute','getformsMemTable199','postformsPostMemTable200','id']);
  MenuMT.AppendRecord(['openemr.geo_country_reference','getgeo_country_referenceExecute','postgeo_country_referenceExecute','deletegeo_country_referenceExecute','getgeo_country_referenceMemTable202','postgeo_country_referencePostMemTable203','countries_id']);
  MenuMT.AppendRecord(['openemr.geo_zone_reference','getgeo_zone_referenceExecute','postgeo_zone_referenceExecute','deletegeo_zone_referenceExecute','getgeo_zone_referenceMemTable205','postgeo_zone_referencePostMemTable206','zone_id']);
  MenuMT.AppendRecord(['openemr.globals','getglobalsExecute','postglobalsExecute','deleteglobalsExecute','getglobalsMemTable208','postglobalsPostMemTable209','gl_name']);
  MenuMT.AppendRecord(['openemr.gprelations','getgprelationsExecute','postgprelationsExecute','deletegprelationsExecute','getgprelationsMemTable211','postgprelationsPostMemTable212','type1']);
  MenuMT.AppendRecord(['openemr.groups','getgroupsExecute','postgroupsExecute','deletegroupsExecute','getgroupsMemTable214','postgroupsPostMemTable215','id']);
  MenuMT.AppendRecord(['openemr.history_data','gethistory_dataExecute','posthistory_dataExecute','deletehistory_dataExecute','gethistory_dataMemTable217','posthistory_dataPostMemTable218','id']);
  MenuMT.AppendRecord(['openemr.icd10_dx_order_code','geticd10_dx_order_codeExecute','','','geticd10_dx_order_codeMemTable220','','']);
  MenuMT.AppendRecord(['openemr.icd10_gem_dx_10_9','geticd10_gem_dx_10_9Execute','','','geticd10_gem_dx_10_9MemTable221','','']);
  MenuMT.AppendRecord(['openemr.icd10_gem_dx_9_10','geticd10_gem_dx_9_10Execute','','','geticd10_gem_dx_9_10MemTable222','','']);
  MenuMT.AppendRecord(['openemr.icd10_gem_pcs_10_9','geticd10_gem_pcs_10_9Execute','','','geticd10_gem_pcs_10_9MemTable223','','']);
  MenuMT.AppendRecord(['openemr.icd10_gem_pcs_9_10','geticd10_gem_pcs_9_10Execute','','','geticd10_gem_pcs_9_10MemTable224','','']);
  MenuMT.AppendRecord(['openemr.icd10_pcs_order_code','geticd10_pcs_order_codeExecute','','','geticd10_pcs_order_codeMemTable225','','']);
  MenuMT.AppendRecord(['openemr.icd10_reimbr_dx_9_10','geticd10_reimbr_dx_9_10Execute','','','geticd10_reimbr_dx_9_10MemTable226','','']);
  MenuMT.AppendRecord(['openemr.icd10_reimbr_pcs_9_10','geticd10_reimbr_pcs_9_10Execute','','','geticd10_reimbr_pcs_9_10MemTable227','','']);
  MenuMT.AppendRecord(['openemr.icd9_dx_code','geticd9_dx_codeExecute','','','geticd9_dx_codeMemTable228','','']);
  MenuMT.AppendRecord(['openemr.icd9_dx_long_code','geticd9_dx_long_codeExecute','','','geticd9_dx_long_codeMemTable229','','']);
  MenuMT.AppendRecord(['openemr.icd9_sg_code','geticd9_sg_codeExecute','','','geticd9_sg_codeMemTable230','','']);
  MenuMT.AppendRecord(['openemr.icd9_sg_long_code','geticd9_sg_long_codeExecute','','','geticd9_sg_long_codeMemTable231','','']);
  MenuMT.AppendRecord(['openemr.immunization_observation','getimmunization_observationExecute','postimmunization_observationExecute','deleteimmunization_observationExecute','getimmunization_observationMemTable232','postimmunization_observationPostMemTable233','imo_id']);
  MenuMT.AppendRecord(['openemr.immunizations','getimmunizationsExecute','postimmunizationsExecute','deleteimmunizationsExecute','getimmunizationsMemTable235','postimmunizationsPostMemTable236','id']);
  MenuMT.AppendRecord(['openemr.insurance_companies','getinsurance_companiesExecute','postinsurance_companiesExecute','deleteinsurance_companiesExecute','getinsurance_companiesMemTable238','postinsurance_companiesPostMemTable239','id']);
  MenuMT.AppendRecord(['openemr.insurance_data','getinsurance_dataExecute','postinsurance_dataExecute','deleteinsurance_dataExecute','getinsurance_dataMemTable241','postinsurance_dataPostMemTable242','id']);
  MenuMT.AppendRecord(['openemr.insurance_numbers','getinsurance_numbersExecute','postinsurance_numbersExecute','deleteinsurance_numbersExecute','getinsurance_numbersMemTable244','postinsurance_numbersPostMemTable245','id']);
  MenuMT.AppendRecord(['openemr.issue_encounter','getissue_encounterExecute','postissue_encounterExecute','deleteissue_encounterExecute','getissue_encounterMemTable247','postissue_encounterPostMemTable248','pid']);
  MenuMT.AppendRecord(['openemr.issue_types','getissue_typesExecute','postissue_typesExecute','deleteissue_typesExecute','getissue_typesMemTable250','postissue_typesPostMemTable251','category']);
  MenuMT.AppendRecord(['openemr.`keys`','get_keys_Execute','post_keys_Execute','delete_keys_Execute','get_keys_MemTable253','post_keys_PostMemTable254','id']);
  MenuMT.AppendRecord(['openemr.lang_constants','getlang_constantsExecute','','','getlang_constantsMemTable256','','']);
  MenuMT.AppendRecord(['openemr.lang_custom','getlang_customExecute','','','getlang_customMemTable257','','']);
  MenuMT.AppendRecord(['openemr.lang_definitions','getlang_definitionsExecute','','','getlang_definitionsMemTable258','','']);
  MenuMT.AppendRecord(['openemr.lang_languages','getlang_languagesExecute','','','getlang_languagesMemTable259','','']);
  MenuMT.AppendRecord(['openemr.layout_group_properties','getlayout_group_propertiesExecute','postlayout_group_propertiesExecute','deletelayout_group_propertiesExecute','getlayout_group_propertiesMemTable260','postlayout_group_propertiesPostMemTable261','grp_form_id']);
  MenuMT.AppendRecord(['openemr.layout_options','getlayout_optionsExecute','postlayout_optionsExecute','deletelayout_optionsExecute','getlayout_optionsMemTable263','postlayout_optionsPostMemTable264','form_id']);
  MenuMT.AppendRecord(['openemr.lbf_data','getlbf_dataExecute','postlbf_dataExecute','deletelbf_dataExecute','getlbf_dataMemTable266','postlbf_dataPostMemTable267','form_id']);
  MenuMT.AppendRecord(['openemr.lbt_data','getlbt_dataExecute','postlbt_dataExecute','deletelbt_dataExecute','getlbt_dataMemTable269','postlbt_dataPostMemTable270','form_id']);
  MenuMT.AppendRecord(['openemr.list_options','getlist_optionsExecute','postlist_optionsExecute','deletelist_optionsExecute','getlist_optionsMemTable272','postlist_optionsPostMemTable273','list_id']);
  MenuMT.AppendRecord(['openemr.lists','getlistsExecute','postlistsExecute','deletelistsExecute','getlistsMemTable275','postlistsPostMemTable276','id']);
  MenuMT.AppendRecord(['openemr.lists_touch','getlists_touchExecute','postlists_touchExecute','deletelists_touchExecute','getlists_touchMemTable278','postlists_touchPostMemTable279','pid']);
  MenuMT.AppendRecord(['openemr.log','getlogExecute','postlogExecute','deletelogExecute','getlogMemTable281','postlogPostMemTable282','id']);
  MenuMT.AppendRecord(['openemr.log_comment_encrypt','getlog_comment_encryptExecute','postlog_comment_encryptExecute','deletelog_comment_encryptExecute','getlog_comment_encryptMemTable284','postlog_comment_encryptPostMemTable285','id']);
  MenuMT.AppendRecord(['openemr.misc_address_book','getmisc_address_bookExecute','postmisc_address_bookExecute','deletemisc_address_bookExecute','getmisc_address_bookMemTable287','postmisc_address_bookPostMemTable288','id']);
  MenuMT.AppendRecord(['openemr.module_acl_group_settings','getmodule_acl_group_settingsExecute','postmodule_acl_group_settingsExecute','deletemodule_acl_group_settingsExecute','getmodule_acl_group_settingsMemTable290','postmodule_acl_group_settingsPostMemTable291','module_id']);
  MenuMT.AppendRecord(['openemr.module_acl_sections','getmodule_acl_sectionsExecute','','','getmodule_acl_sectionsMemTable293','','']);
  MenuMT.AppendRecord(['openemr.module_acl_user_settings','getmodule_acl_user_settingsExecute','postmodule_acl_user_settingsExecute','deletemodule_acl_user_settingsExecute','getmodule_acl_user_settingsMemTable294','postmodule_acl_user_settingsPostMemTable295','module_id']);
  MenuMT.AppendRecord(['openemr.module_configuration','getmodule_configurationExecute','postmodule_configurationExecute','deletemodule_configurationExecute','getmodule_configurationMemTable297','postmodule_configurationPostMemTable298','module_config_id']);
  MenuMT.AppendRecord(['openemr.modules','getmodulesExecute','postmodulesExecute','deletemodulesExecute','getmodulesMemTable300','postmodulesPostMemTable301','mod_id']);
  MenuMT.AppendRecord(['openemr.modules_hooks_settings','getmodules_hooks_settingsExecute','postmodules_hooks_settingsExecute','deletemodules_hooks_settingsExecute','getmodules_hooks_settingsMemTable303','postmodules_hooks_settingsPostMemTable304','id']);
  MenuMT.AppendRecord(['openemr.modules_settings','getmodules_settingsExecute','','','getmodules_settingsMemTable306','','']);
  MenuMT.AppendRecord(['openemr.notes','getnotesExecute','postnotesExecute','deletenotesExecute','getnotesMemTable307','postnotesPostMemTable308','id']);
  MenuMT.AppendRecord(['openemr.notification_log','getnotification_logExecute','postnotification_logExecute','deletenotification_logExecute','getnotification_logMemTable310','postnotification_logPostMemTable311','iLogId']);
  MenuMT.AppendRecord(['openemr.notification_settings','getnotification_settingsExecute','postnotification_settingsExecute','deletenotification_settingsExecute','getnotification_settingsMemTable313','postnotification_settingsPostMemTable314','SettingsId']);
  MenuMT.AppendRecord(['openemr.onotes','getonotesExecute','postonotesExecute','deleteonotesExecute','getonotesMemTable316','postonotesPostMemTable317','id']);
  MenuMT.AppendRecord(['openemr.onsite_documents','getonsite_documentsExecute','postonsite_documentsExecute','deleteonsite_documentsExecute','getonsite_documentsMemTable319','postonsite_documentsPostMemTable320','id']);
  MenuMT.AppendRecord(['openemr.onsite_mail','getonsite_mailExecute','postonsite_mailExecute','deleteonsite_mailExecute','getonsite_mailMemTable322','postonsite_mailPostMemTable323','id']);
  MenuMT.AppendRecord(['openemr.onsite_messages','getonsite_messagesExecute','postonsite_messagesExecute','deleteonsite_messagesExecute','getonsite_messagesMemTable325','postonsite_messagesPostMemTable326','id']);
  MenuMT.AppendRecord(['openemr.onsite_online','getonsite_onlineExecute','postonsite_onlineExecute','deleteonsite_onlineExecute','getonsite_onlineMemTable328','postonsite_onlinePostMemTable329','hash']);
  MenuMT.AppendRecord(['openemr.onsite_portal_activity','getonsite_portal_activityExecute','postonsite_portal_activityExecute','deleteonsite_portal_activityExecute','getonsite_portal_activityMemTable331','postonsite_portal_activityPostMemTable332','id']);
  MenuMT.AppendRecord(['openemr.onsite_signatures','getonsite_signaturesExecute','postonsite_signaturesExecute','deleteonsite_signaturesExecute','getonsite_signaturesMemTable334','postonsite_signaturesPostMemTable335','id']);
  MenuMT.AppendRecord(['openemr.openemr_module_vars','getopenemr_module_varsExecute','postopenemr_module_varsExecute','deleteopenemr_module_varsExecute','getopenemr_module_varsMemTable337','postopenemr_module_varsPostMemTable338','pn_id']);
  MenuMT.AppendRecord(['openemr.openemr_modules','getopenemr_modulesExecute','postopenemr_modulesExecute','deleteopenemr_modulesExecute','getopenemr_modulesMemTable340','postopenemr_modulesPostMemTable341','pn_id']);
  MenuMT.AppendRecord(['openemr.openemr_postcalendar_categories','getopenemr_postcalendar_categoriesExecute','postopenemr_postcalendar_categoriesExecute','deleteopenemr_postcalendar_categoriesExecute','getopenemr_postcalendar_categoriesMemTable343','postopenemr_postcalendar_categoriesPostMemTable344','pc_catid']);
  MenuMT.AppendRecord(['openemr.openemr_postcalendar_events','getopenemr_postcalendar_eventsExecute','postopenemr_postcalendar_eventsExecute','deleteopenemr_postcalendar_eventsExecute','getopenemr_postcalendar_eventsMemTable346','postopenemr_postcalendar_eventsPostMemTable347','pc_eid']);
  MenuMT.AppendRecord(['openemr.openemr_postcalendar_limits','getopenemr_postcalendar_limitsExecute','postopenemr_postcalendar_limitsExecute','deleteopenemr_postcalendar_limitsExecute','getopenemr_postcalendar_limitsMemTable349','postopenemr_postcalendar_limitsPostMemTable350','pc_limitid']);
  MenuMT.AppendRecord(['openemr.openemr_postcalendar_topics','getopenemr_postcalendar_topicsExecute','postopenemr_postcalendar_topicsExecute','deleteopenemr_postcalendar_topicsExecute','getopenemr_postcalendar_topicsMemTable352','postopenemr_postcalendar_topicsPostMemTable353','pc_catid']);
  MenuMT.AppendRecord(['openemr.openemr_session_info','getopenemr_session_infoExecute','postopenemr_session_infoExecute','deleteopenemr_session_infoExecute','getopenemr_session_infoMemTable355','postopenemr_session_infoPostMemTable356','pn_sessid']);
  MenuMT.AppendRecord(['openemr.patient_access_offsite','getpatient_access_offsiteExecute','postpatient_access_offsiteExecute','deletepatient_access_offsiteExecute','getpatient_access_offsiteMemTable358','postpatient_access_offsitePostMemTable359','id']);
  MenuMT.AppendRecord(['openemr.patient_access_onsite','getpatient_access_onsiteExecute','postpatient_access_onsiteExecute','deletepatient_access_onsiteExecute','getpatient_access_onsiteMemTable361','postpatient_access_onsitePostMemTable362','id']);
  MenuMT.AppendRecord(['openemr.patient_data','getpatient_dataExecute','','','getpatient_dataMemTable364','','']);
  MenuMT.AppendRecord(['openemr.patient_portal_menu','getpatient_portal_menuExecute','postpatient_portal_menuExecute','deletepatient_portal_menuExecute','getpatient_portal_menuMemTable365','postpatient_portal_menuPostMemTable366','patient_portal_menu_id']);
  MenuMT.AppendRecord(['openemr.patient_reminders','getpatient_remindersExecute','postpatient_remindersExecute','deletepatient_remindersExecute','getpatient_remindersMemTable368','postpatient_remindersPostMemTable369','id']);
  MenuMT.AppendRecord(['openemr.patient_tracker','getpatient_trackerExecute','postpatient_trackerExecute','deletepatient_trackerExecute','getpatient_trackerMemTable371','postpatient_trackerPostMemTable372','id']);
  MenuMT.AppendRecord(['openemr.patient_tracker_element','getpatient_tracker_elementExecute','','','getpatient_tracker_elementMemTable374','','']);
  MenuMT.AppendRecord(['openemr.payment_gateway_details','getpayment_gateway_detailsExecute','postpayment_gateway_detailsExecute','deletepayment_gateway_detailsExecute','getpayment_gateway_detailsMemTable375','postpayment_gateway_detailsPostMemTable376','id']);
  MenuMT.AppendRecord(['openemr.payments','getpaymentsExecute','postpaymentsExecute','deletepaymentsExecute','getpaymentsMemTable378','postpaymentsPostMemTable379','id']);
  MenuMT.AppendRecord(['openemr.pharmacies','getpharmaciesExecute','postpharmaciesExecute','deletepharmaciesExecute','getpharmaciesMemTable381','postpharmaciesPostMemTable382','id']);
  MenuMT.AppendRecord(['openemr.phone_numbers','getphone_numbersExecute','postphone_numbersExecute','deletephone_numbersExecute','getphone_numbersMemTable384','postphone_numbersPostMemTable385','id']);
  MenuMT.AppendRecord(['openemr.pnotes','getpnotesExecute','postpnotesExecute','deletepnotesExecute','getpnotesMemTable387','postpnotesPostMemTable388','id']);
  MenuMT.AppendRecord(['openemr.prescriptions','getprescriptionsExecute','postprescriptionsExecute','deleteprescriptionsExecute','getprescriptionsMemTable390','postprescriptionsPostMemTable391','id']);
  MenuMT.AppendRecord(['openemr.prices','getpricesExecute','postpricesExecute','deletepricesExecute','getpricesMemTable393','postpricesPostMemTable394','pr_id']);
  MenuMT.AppendRecord(['openemr.procedure_answers','getprocedure_answersExecute','postprocedure_answersExecute','deleteprocedure_answersExecute','getprocedure_answersMemTable396','postprocedure_answersPostMemTable397','procedure_order_id']);
  MenuMT.AppendRecord(['openemr.procedure_order','getprocedure_orderExecute','postprocedure_orderExecute','deleteprocedure_orderExecute','getprocedure_orderMemTable399','postprocedure_orderPostMemTable400','procedure_order_id']);
  MenuMT.AppendRecord(['openemr.procedure_order_code','getprocedure_order_codeExecute','postprocedure_order_codeExecute','deleteprocedure_order_codeExecute','getprocedure_order_codeMemTable402','postprocedure_order_codePostMemTable403','procedure_order_id']);
  MenuMT.AppendRecord(['openemr.procedure_providers','getprocedure_providersExecute','postprocedure_providersExecute','deleteprocedure_providersExecute','getprocedure_providersMemTable405','postprocedure_providersPostMemTable406','ppid']);
  MenuMT.AppendRecord(['openemr.procedure_questions','getprocedure_questionsExecute','postprocedure_questionsExecute','deleteprocedure_questionsExecute','getprocedure_questionsMemTable408','postprocedure_questionsPostMemTable409','lab_id']);
  MenuMT.AppendRecord(['openemr.procedure_report','getprocedure_reportExecute','postprocedure_reportExecute','deleteprocedure_reportExecute','getprocedure_reportMemTable411','postprocedure_reportPostMemTable412','procedure_report_id']);
  MenuMT.AppendRecord(['openemr.procedure_result','getprocedure_resultExecute','postprocedure_resultExecute','deleteprocedure_resultExecute','getprocedure_resultMemTable414','postprocedure_resultPostMemTable415','procedure_result_id']);
  MenuMT.AppendRecord(['openemr.procedure_type','getprocedure_typeExecute','postprocedure_typeExecute','deleteprocedure_typeExecute','getprocedure_typeMemTable417','postprocedure_typePostMemTable418','procedure_type_id']);
  MenuMT.AppendRecord(['openemr.product_warehouse','getproduct_warehouseExecute','postproduct_warehouseExecute','deleteproduct_warehouseExecute','getproduct_warehouseMemTable420','postproduct_warehousePostMemTable421','pw_drug_id']);
  MenuMT.AppendRecord(['openemr.registry','getregistryExecute','postregistryExecute','deleteregistryExecute','getregistryMemTable423','postregistryPostMemTable424','id']);
  MenuMT.AppendRecord(['openemr.report_itemized','getreport_itemizedExecute','','','getreport_itemizedMemTable426','','']);
  MenuMT.AppendRecord(['openemr.report_results','getreport_resultsExecute','postreport_resultsExecute','deletereport_resultsExecute','getreport_resultsMemTable427','postreport_resultsPostMemTable428','report_id']);
  MenuMT.AppendRecord(['openemr.rule_action','getrule_actionExecute','','','getrule_actionMemTable430','','']);
  MenuMT.AppendRecord(['openemr.rule_action_item','getrule_action_itemExecute','postrule_action_itemExecute','deleterule_action_itemExecute','getrule_action_itemMemTable431','postrule_action_itemPostMemTable432','category']);
  MenuMT.AppendRecord(['openemr.rule_filter','getrule_filterExecute','','','getrule_filterMemTable434','','']);
  MenuMT.AppendRecord(['openemr.rule_patient_data','getrule_patient_dataExecute','postrule_patient_dataExecute','deleterule_patient_dataExecute','getrule_patient_dataMemTable435','postrule_patient_dataPostMemTable436','id']);
  MenuMT.AppendRecord(['openemr.rule_reminder','getrule_reminderExecute','','','getrule_reminderMemTable438','','']);
  MenuMT.AppendRecord(['openemr.rule_target','getrule_targetExecute','','','getrule_targetMemTable439','','']);
  MenuMT.AppendRecord(['openemr.sequences','getsequencesExecute','','','getsequencesMemTable440','','']);
  MenuMT.AppendRecord(['openemr.shared_attributes','getshared_attributesExecute','postshared_attributesExecute','deleteshared_attributesExecute','getshared_attributesMemTable441','postshared_attributesPostMemTable442','pid']);
  MenuMT.AppendRecord(['openemr.standardized_tables_track','getstandardized_tables_trackExecute','poststandardized_tables_trackExecute','deletestandardized_tables_trackExecute','getstandardized_tables_trackMemTable444','poststandardized_tables_trackPostMemTable445','id']);
  MenuMT.AppendRecord(['openemr.supported_external_dataloads','getsupported_external_dataloadsExecute','','','getsupported_external_dataloadsMemTable447','','']);
  MenuMT.AppendRecord(['openemr.syndromic_surveillance','getsyndromic_surveillanceExecute','postsyndromic_surveillanceExecute','deletesyndromic_surveillanceExecute','getsyndromic_surveillanceMemTable448','postsyndromic_surveillancePostMemTable449','id']);
  MenuMT.AppendRecord(['openemr.template_users','gettemplate_usersExecute','posttemplate_usersExecute','deletetemplate_usersExecute','gettemplate_usersMemTable451','posttemplate_usersPostMemTable452','tu_id']);
  MenuMT.AppendRecord(['openemr.transactions','gettransactionsExecute','posttransactionsExecute','deletetransactionsExecute','gettransactionsMemTable454','posttransactionsPostMemTable455','id']);
  MenuMT.AppendRecord(['openemr.user_settings','getuser_settingsExecute','postuser_settingsExecute','deleteuser_settingsExecute','getuser_settingsMemTable457','postuser_settingsPostMemTable458','setting_user']);
  MenuMT.AppendRecord(['openemr.users','getusersExecute','postusersExecute','deleteusersExecute','getusersMemTable460','postusersPostMemTable461','id']);
  MenuMT.AppendRecord(['openemr.users_facility','getusers_facilityExecute','postusers_facilityExecute','deleteusers_facilityExecute','getusers_facilityMemTable463','postusers_facilityPostMemTable464','tablename']);
  MenuMT.AppendRecord(['openemr.users_secure','getusers_secureExecute','postusers_secureExecute','deleteusers_secureExecute','getusers_secureMemTable466','postusers_securePostMemTable467','id']);
  MenuMT.AppendRecord(['openemr.valueset','getvaluesetExecute','postvaluesetExecute','deletevaluesetExecute','getvaluesetMemTable469','postvaluesetPostMemTable470','nqf_code']);
  MenuMT.AppendRecord(['openemr.version','getversionExecute','','','getversionMemTable472','','']);
  MenuMT.AppendRecord(['openemr.voids','getvoidsExecute','postvoidsExecute','deletevoidsExecute','getvoidsMemTable473','postvoidsPostMemTable474','void_id']);
  MenuMT.AppendRecord(['openemr.x12_partners','getx12_partnersExecute','postx12_partnersExecute','deletex12_partnersExecute','getx12_partnersMemTable476','postx12_partnersPostMemTable477','id']);
  MenuMT.EnableControls;

  LinkListControlToField1.FillList;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
Application.OnIdle := ApplicationIdle;

CurrentItem := -1;
end;

procedure TMainForm.TableStringGridResized(Sender: TObject);
begin
  RefreshTable;
end;

procedure TMainForm.ListView1Change(Sender: TObject);
begin
  if CurrentItem=ListView1.ItemIndex then Exit;

  CurrentItem := ListView1.ItemIndex;
  LoadTable;
end;

procedure TMainForm.RefreshBTNClick(Sender: TObject);
begin
  LoadTable;
end;

procedure TMainForm.SaveBTNClick(Sender: TObject);
var
I: Integer;
SL: TStringList;
Obj: TObject;
V: Variant;
begin
  TLinkObservers.ControlChanged(DetailsStringGrid);

  try
    if MenuMT.FieldByName('postmemtable').AsString<>'' then
     begin
      Obj := AutoTablesClientDM.FindComponent(MenuMT.FieldByName('postmemtable').AsString);
      if Obj<>nil then
       if Obj is TFDMemTable then
         begin
          if TFDMemTable(Obj).Active = False then TFDMemTable(Obj).Active := True;

          TFDMemTable(Obj).EmptyDataSet;

          TFDMemTable(Obj).Insert;

          SL := TStringList.Create;
          TFDMemTable(Obj).GetFieldNames(SL);

          for I := 0 to SL.Count-1 do
            begin
              V := BindSourceDBDetails.DataSet.Lookup('Name',SL[I],'Value');
              if V=null then
                begin
                  if SL[I]=MenuMT.FieldByName('uniqueid').AsString then
                    V := '0'
                  else
                    V := '';
                end;

              TFDMemTable(Obj).FieldByName(SL[I]).AsString := V;

            end;
          SL.Free;

          TFDMemTable(Obj).Post;

          AsyncTask(BackBTN,procedure begin
            AutoTablesClientDM.CallPost(MenuMT.FieldByName('post').AsString);
          end,
          procedure begin
            BackBTNClick(Sender);
            LoadTable;
          end,
          procedure begin
            Log('CallPost Error');
          end);
         end;
      end;
  except
    on E: Exception do
     begin
       Log(E.Message);
     end;
  end;
end;

procedure TMainForm.ShowActivity;
begin
  ActivityLayout.Tag := ActivityLayout.Tag+1;
  ActivityTimer.Enabled := True;
end;

procedure TMainForm.HideActivity;
begin
ActivityLayout.Tag := ActivityLayout.Tag-1;
if ActivityLayout.Tag=0 then
  begin
    ActivityFloatAni.Stop;
    ActivityLayout.Visible := False;
  end;
end;

procedure TMainForm.AsyncTask(Worker: TComponent; TaskFunc,FinishFunc,ErrorFunc: TProc);
var
AError: Boolean;
begin
  if Worker.Tag = NOT_BUSY then
    begin
      Worker.Tag := BUSY;
      ShowActivity;

      TTask.Run(
        procedure
        begin
          try
            try
              TaskFunc;
            except
              on E: Exception do
              begin
                AError := True;
                TThread.Synchronize(nil,
                  procedure
                  begin
                    Log(E.Message);
                  end);
              end;
            end;

            if not AError then
             TThread.Synchronize(nil,
               procedure
               begin
                 FinishFunc;
               end);
          finally
            TThread.Synchronize(nil,
              procedure
              begin
                HideActivity;
              end);
            if AError then ErrorFunc;
            Worker.Tag := NOT_BUSY;
          end;
        end);
    end;
end;


end.

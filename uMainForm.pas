unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Rtti, FMX.Grid.Style, Data.Bind.Controls, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  FMX.Objects, FMX.Memo, FMX.Edit, FMX.StdCtrls, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Fmx.Bind.Navigator, FMX.Layouts,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, FireDAC.Stan.StorageJSON,
  System.IOUtils, FMX.TabControl, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  IPPeerClient, REST.Backend.ServiceTypes, REST.Backend.MetaTypes, System.JSON,
  REST.Backend.EMSServices, REST.Backend.Providers, System.Threading,
  REST.Backend.ServiceComponents, REST.Backend.EMSProvider,
  Data.Bind.ObjectScope, REST.Backend.BindSource, FireDAC.DApt, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, REST.Backend.EMSApi,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, FMX.ListBox, System.StrUtils,
  FMX.Platform, System.Zip, System.Actions, FMX.ActnList, FMX.Effects,
  FMX.Filter.Effects, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script
  {$IFDEF MSWINDOWS}
  , Windows, ShellAPI, Win.WebBrowser, FMX.WebBrowser
  {$ENDIF}
  ;

type
  TMainForm = class(TForm)
    EndPointTable: TFDMemTable;
    StringGrid1: TStringGrid;
    EndpointConfigLayout: TLayout;
    BindNavigator1: TBindNavigator;
    BindSourceDBEndPoints: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Layout3: TLayout;
    Label2: TLabel;
    ParamsEdit: TEdit;
    Layout4: TLayout;
    SQLLabel: TLabel;
    Layout5: TLayout;
    Label4: TLabel;
    TableNameEdit: TEdit;
    Layout6: TLayout;
    Label5: TLabel;
    RequestTypeEdit: TEdit;
    Layout7: TLayout;
    Label6: TLabel;
    EditPointEdit: TEdit;
    Layout8: TLayout;
    Label7: TLabel;
    GroupsEdit: TEdit;
    BackgroundImage: TRectangle;
    JetStyleBook: TStyleBook;
    SQLMemo: TMemo;
    RequestTypeMemTable: TFDMemTable;
    TableNameMemTable: TFDMemTable;
    GroupsMemTable: TFDMemTable;
    BindSourceDBRequestTypes: TBindSourceDB;
    BindSourceDBTables: TBindSourceDB;
    BindSourceDBGroups: TBindSourceDB;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    ToolBar1: TToolBar;
    TabItem4: TTabItem;
    CompleteTab: TTabItem;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Text1: TText;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    GetTablesRectBTN: TRectangle;
    Text2: TText;
    GetGroupsRectBTN: TRectangle;
    Text3: TText;
    EMSProvider: TEMSProvider;
    BackendGroups: TBackendGroups;
    BackendAuth: TBackendAuth;
    HostEdit: TEdit;
    PortEdit: TEdit;
    TenantSecretEdit: TEdit;
    TenantIdEdit: TEdit;
    Layout9: TLayout;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Layout10: TLayout;
    GroupsListView: TListView;
    Layout11: TLayout;
    IBLayout: TLayout;
    TablesListView: TListView;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    BackendUsers: TBackendUsers;
    Label12: TLabel;
    DBUserNameEdit: TEdit;
    Label13: TLabel;
    DBPasswordEdit: TEdit;
    Label14: TLabel;
    DBDataBaseEdit: TEdit;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection: TFDConnection;
    Layout14: TLayout;
    Rectangle9: TRectangle;
    Text5: TText;
    Layout15: TLayout;
    Label15: TLabel;
    ActionEdit: TEdit;
    LinkControlToField8: TLinkControlToField;
    Layout16: TLayout;
    Label16: TLabel;
    MethodEdit: TEdit;
    LinkControlToField9: TLinkControlToField;
    FDMemTableAction: TFDMemTable;
    LinkFillControlToField3: TLinkFillControlToField;
    LinkFillControlToField4: TLinkFillControlToField;
    BindSourceDB1: TBindSourceDB;
    LinkFillControlToField5: TLinkFillControlToField;
    Step4Tab: TTabItem;
    ActionListBox: TListBox;
    RTListListBox: TListBox;
    TablesListBox: TListBox;
    GroupsListBox: TListBox;
    Rectangle10: TRectangle;
    Text6: TText;
    Rectangle11: TRectangle;
    Text7: TText;
    EndPointLoadPathEdit: TEdit;
    Rectangle12: TRectangle;
    Layout18: TLayout;
    CustomMethodMemo: TMemo;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    EMSProviderTemplateMemo: TMemo;
    BackendEndpointTemplateMemo: TMemo;
    ClientComponentsMemo: TMemo;
    EPOpenDialog: TOpenDialog;
    EPSaveDialog: TSaveDialog;
    TabControl2: TTabControl;
    EndPointMasterTab: TTabItem;
    EndPointDetailTab: TTabItem;
    Layout17: TLayout;
    Layout19: TLayout;
    Label30: TLabel;
    MacrosEdit: TEdit;
    Layout1: TLayout;
    Label31: TLabel;
    UniqueIDEdit: TEdit;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    Splitter1: TSplitter;
    Step6Tab: TTabItem;
    GenClientBGRect: TRectangle;
    Layout20: TLayout;
    GenClientRectBTN: TRectangle;
    Text8: TText;
    Label38: TLabel;
    GenServerBGRect: TRectangle;
    Layout21: TLayout;
    GenServerRectBTN: TRectangle;
    Text9: TText;
    Layout22: TLayout;
    Layout23: TLayout;
    CopyClientCompRectBTN: TRectangle;
    Text10: TText;
    Label32: TLabel;
    ServerMemo: TMemo;
    ClientMemo: TMemo;
    Label33: TLabel;
    Layout24: TLayout;
    CopyServerCompRectBTN: TRectangle;
    Text11: TText;
    Layout25: TLayout;
    Label34: TLabel;
    Layout26: TLayout;
    GenSolutionRectBTN: TRectangle;
    Text12: TText;
    GenerateSDKsBTN: TLabel;
    Label35: TLabel;
    Label3: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    TabControl3: TTabControl;
    TabItem8: TTabItem;
    TabItem9: TTabItem;
    TabItem10: TTabItem;
    Rectangle13: TRectangle;
    OpenAPIMemo: TMemo;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Layout27: TLayout;
    GenOpenAPIRectBTN: TRectangle;
    Text13: TText;
    Layout28: TLayout;
    RootSegmentEdit: TEdit;
    EndpointRootEdit: TLabel;
    Layout29: TLayout;
    Label42: TLabel;
    OpenAPITitleEdit: TEdit;
    Layout30: TLayout;
    Layout32: TLayout;
    Label47: TLabel;
    OpenAPITermsEdit: TEdit;
    Layout33: TLayout;
    Label48: TLabel;
    OpenAPIDescEdit: TEdit;
    Layout34: TLayout;
    Label49: TLabel;
    OpenAPIVersionEdit: TEdit;
    Layout35: TLayout;
    Label50: TLabel;
    OpenAPIContactNameEdit: TEdit;
    Layout36: TLayout;
    Label51: TLabel;
    OpenAPIContactEmailEdit: TEdit;
    Layout37: TLayout;
    Label52: TLabel;
    OpenAPIContactURLEdit: TEdit;
    Layout31: TLayout;
    Label46: TLabel;
    OpenAPILicenseEdit: TEdit;
    Layout38: TLayout;
    Label53: TLabel;
    OpenAPILicenseURLEdit: TEdit;
    FDMemTableInfo: TFDMemTable;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField12: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    LinkControlToField14: TLinkControlToField;
    LinkControlToField15: TLinkControlToField;
    LinkControlToField16: TLinkControlToField;
    LinkControlToField17: TLinkControlToField;
    LinkControlToField18: TLinkControlToField;
    LinkControlToField19: TLinkControlToField;
    LinkControlToField20: TLinkControlToField;
    LinkControlToField21: TLinkControlToField;
    Text14: TText;
    Text15: TText;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    ActionList1: TActionList;
    GenerateDelphiClientAction: TAction;
    GenerateDelphiClientSDKAction: TAction;
    BackendStorage1: TBackendStorage;
    FDQueryFieldDefs: TFDQuery;
    FDMemTable: TFDMemTable;
    FDMemTableR: TFDMemTable;
    EndpointNamesCB: TCheckBox;
    Label1: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Layout2: TLayout;
    Layout39: TLayout;
    Layout40: TLayout;
    EndPointsMemo: TMemo;
    Layout41: TLayout;
    Image1: TImage;
    Label60: TLabel;
    Image2: TImage;
    FillRGBEffect2: TFillRGBEffect;
    Layout42: TLayout;
    Image3: TImage;
    Label61: TLabel;
    Image4: TImage;
    FillRGBEffect1: TFillRGBEffect;
    FillRGBEffect3: TFillRGBEffect;
    Layout43: TLayout;
    Label62: TLabel;
    IBOpenDialog: TOpenDialog;
    EllipsesEditButton1: TEllipsesEditButton;
    LoadIBDBCB: TCheckBox;
    SampleDBRectBTN: TRectangle;
    Text16: TText;
    SampleScriptMemo: TMemo;
    FDScriptExec: TFDScript;
    Label63: TLabel;
    Label64: TLabel;
    OutputTabControl: TTabControl;
    DocsTab: TTabItem;
    OutputTab: TTabItem;
    Rectangle6: TRectangle;
    Layout13: TLayout;
    Rectangle8: TRectangle;
    Text4: TText;
    EndPointSavePathEdit: TEdit;
    WBDocs: TWebBrowser;
    DesignTimeConnectRect: TRectangle;
    Label29: TLabel;
    procedure RequestTypeEditClick(Sender: TObject);
    procedure TableNameEditClick(Sender: TObject);
    procedure GroupsEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GetGroupsRectBTNClick(Sender: TObject);
    procedure GetTablesRectBTNClick(Sender: TObject);
    procedure Rectangle9Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure ParamsEditClick(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure ActionEditClick(Sender: TObject);
    procedure Rectangle10Click(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
    procedure GenServerRectBTNClick(Sender: TObject);
    procedure CopyClientCompRectBTNClick(Sender: TObject);
    procedure GenClientRectBTNClick(Sender: TObject);
    procedure CopyServerCompRectBTNClick(Sender: TObject);
    procedure ParamsEditChange(Sender: TObject);
    procedure MacrosEditChange(Sender: TObject);
    procedure GenSolutionRectBTNClick(Sender: TObject);
    procedure GenerateSDKsBTNClick(Sender: TObject);
    procedure GenerateDelphiClientActionExecute(Sender: TObject);
    procedure GenerateDelphiClientSDKActionExecute(Sender: TObject);
    procedure GenOpenAPIRectBTNClick(Sender: TObject);
    procedure EllipsesEditButton1Click(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure SampleDBRectBTNClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure UpdateSQLLabel;
    function GetCompTemplate(const CompTemplateStr, QueryString, ParamsContent: String; CompCount: Integer; ADataSet: TFDDataSet; AInfoDataSet: TFDDataSet): String;
    function GetMemTableTemplate(CompName: String; ADataSet: TFDDataSet; AQuery: TFDQuery; AOutDataSet: TFDMemTable): String;
    function ConnectionToDriverLink(AConnection: TFDConnection): String;
  public
    { Public declarations }
    procedure OpenDirectory(APath: String);
    procedure GetGroups;
    procedure SetClipboardText(const S: String);
    function RTListToRequestType(AAction: String): String;
    function TableNameToEndPoint(ATableName: String): String;
    function GetQueryStringList(ADataSet: TFDDataSet): String;
  end;
  const
    SDK_GENERATOR_URL = 'https://github.com/openapitools/openapi-generator';
    TemplatePath = 'Templates';
    ServerPath = 'Server';
    ClientPath = 'Client';
    SDKPath = 'SDK';
    OPLangPath = 'Object Pascal';
    OutputPath = 'Output';
    DocsPath = 'Docs';
    SwaggerUIZip = 'swagger-ui.zip';
    SwaggerIndexFile = 'index.html';
    ServerTemplateDPKFile = 'AutoTablesForRADServer.dpk';
    ServerTemplateDPROJFile = 'AutoTablesForRADServer.dproj';
    ServerTemplateDFMFile = 'uMainServer.dfm';
    ServerTemplatePASFile = 'uMainServer.pas';
    ClientTemplateDFMFile = 'uAutoTablesClientDM.dfm';
    ClientTemplatePASFile = 'uAutoTablesClientDM.pas';

    ClientTemplateDPRFile = 'AutoTablesClient.dpr';
    ClientTemplateDPROJFile = 'AutoTablesClient.dproj';
    ClientTemplateMFFMXFile = 'uMainForm.fmx';
    ClientTemplateMFPASFile = 'uMainForm.pas';

    SDKTemplateFile = 'sdktemplatefile.pas';
    DelphiSDKPASFile = 'AutoTablesDelphiSDK.pas';
    OpenAPIDocsFile = 'apispec.json';
    EndpointFile = 'endpoints.json';
    BUSY = 1;
    NOT_BUSY = 0;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses
  uOpenAPI, uPicker, uSelector, uDelphiSDK;

function ComponentToStringProc(Component: TComponent): string;
var
  BinStream: TMemoryStream;
  StrStream: TStringStream;
  S: string;
begin
  BinStream := TMemoryStream.Create;
  try
    StrStream := TStringStream.Create(S);
    try
      BinStream.WriteComponent(Component);
      BinStream.Seek(0, soFromBeginning);
      ObjectBinaryToText(BinStream, StrStream);
      StrStream.Seek(0, soFromBeginning);
      Result:= StrStream.DataString;
    finally
      StrStream.Free;
    end;
  finally
    BinStream.Free
  end;
end;

procedure TMainForm.OpenDirectory(APath: string);
begin
{$IF DEFINED(MSWINDOWS)}
  ShellExecute(0, 'OPEN', PChar(APath), '', '', SW_SHOWNORMAL);
{$ENDIF}
end;

procedure TMainForm.UpdateSQLLabel;
var
SL: TStringList;
ParamsStr: String;
MacrosStr: String;
I: Integer;
begin
  SL := TStringList.Create;
  SL.StrictDelimiter := True;
  SL.CommaText := ParamsEdit.Text;
  for I := 0 to SL.Count-1 do
    begin
      SL[I] := ':'+SL[I];
    end;
  ParamsStr := SL.CommaText;
  SL.CommaText := MacrosEdit.Text;
  for I := 0 to SL.Count-1 do
    begin
      SL[I] := '!'+SL[I];
    end;
  MacrosStr := SL.CommaText;
  SL.Free;
  SQLLabel.Text := 'SQL ('+ParamsStr+IfThen((ParamsStr<>'') AND (MacrosStr<>''),',','')+MacrosStr+')';
end;

procedure TMainForm.ParamsEditChange(Sender: TObject);
begin
UpdateSQLLabel;
end;

procedure TMainForm.ParamsEditClick(Sender: TObject);
begin
    if (SelectorForm<>nil) then
     begin
      SelectorForm.DisposeOf;
      SelectorForm := nil;
     end;

    SelectorForm := TSelectorForm.Create(MainForm);
    SelectorForm.SetParamsView;
    SelectorForm.Show;
    SelectorForm.SetDataSetResult('Params',BindSourceDBEndPoints);
    MainForm.Hide;
end;

procedure TMainForm.TableNameEditClick(Sender: TObject);
begin
    if (PickerForm<>nil) then
     begin
      PickerForm.DisposeOf;
      PickerForm := nil;
     end;

    PickerForm := TPickerForm.Create(MainForm);
    PickerForm.SetTableNameView;
    PickerForm.Show;
    PickerForm.SetDataSetResult('TableName',BindSourceDBEndPoints);
    MainForm.Hide;
end;

procedure TMainForm.RequestTypeEditClick(Sender: TObject);
begin
    if (PickerForm<>nil) then
     begin
      PickerForm.DisposeOf;
      PickerForm := nil;
     end;

    PickerForm := TPickerForm.Create(MainForm);
    PickerForm.SetRequestTypeView;
    PickerForm.Show;
    PickerForm.SetDataSetResult('RequestType',BindSourceDBEndPoints);
    MainForm.Hide;
end;

procedure TMainForm.GroupsEditClick(Sender: TObject);
begin
    if (SelectorForm<>nil) then
     begin
      SelectorForm.DisposeOf;
      SelectorForm := nil;
     end;

    SelectorForm := TSelectorForm.Create(MainForm);
    SelectorForm.SetGroupsView;
    SelectorForm.Show;
    SelectorForm.SetDataSetResult('Groups',BindSourceDBEndPoints);
    MainForm.Hide;
end;

procedure TMainForm.MacrosEditChange(Sender: TObject);
begin
UpdateSQLLabel;
end;

procedure TMainForm.ActionEditClick(Sender: TObject);
begin
    if (PickerForm<>nil) then
     begin
      PickerForm.DisposeOf;
      PickerForm := nil;
     end;

    PickerForm := TPickerForm.Create(MainForm);
    PickerForm.SetActionView;
    PickerForm.Show;
    PickerForm.SetDataSetResult('Action',BindSourceDBEndPoints);
    MainForm.Hide;
end;

function TMainForm.TableNameToEndPoint(ATableName: String): String;
var
SL: TStringList;
begin
  SL := TStringList.Create;
  try
    SL.StrictDelimiter := True;
    SL.Delimiter := '.';
    SL.DelimitedText := ATableName;
    Result := SL[SL.Count-1].ToLower;
  finally
    SL.Free;
  end;
end;

function TMainForm.RTListToRequestType(AAction: String): String;
begin
  if AAction='Read' then
     Result := 'GET'
  else
  if AAction='Write' then
     Result := 'POST'
  else
  if AAction='Delete' then
     Result := 'DELETE';
end;

procedure TMainForm.SampleDBRectBTNClick(Sender: TObject);
begin
  DBDataBaseEdit.Text := TPath.Combine(TPath.Combine(TPath.GetSharedDocumentsPath,'Embarcadero' + PathDelim + 'EMS' + PathDelim),'Logger.IB');
  FDConnection.Params.Values['Database'] := DBDataBaseEdit.Text;
  FDConnection.Params.Values['User_Name'] := DBUsernameEdit.Text;
  FDConnection.Params.Values['Password'] := DBPasswordEdit.Text;
  FDConnection.Params.Values['OpenMode'] := 'OpenOrCreate';
  //FDConnectionIB.Params.Values['SEPpassword'] := 'password';
  FDConnection.Open;
  FDScriptExec.ExecuteScript(SampleScriptMemo.Lines);
  FDConnection.Close;
end;

procedure TMainForm.SetClipboardText(const S: String);
var
  Svc: IFMXClipboardService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXClipboardService, Svc) then
      Svc.SetClipboard(S)
end;

procedure TMainForm.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
TabControl2.ActiveTab := EndPointDetailTab;
end;

function TMainForm.GetCompTemplate(const CompTemplateStr, QueryString, ParamsContent: String; CompCount: Integer; ADataSet: TFDDataSet; AInfoDataSet: TFDDataSet): String;
begin
      Result := CompTemplateStr;
      Result := Result.Replace('#RequestType#','rm'+ADataSet.FieldByName('RequestType').AsString,[]);
      Result := Result.Replace('#RootSegment#',AInfoDataSet.FieldByName('RootSegment').AsString,[]);
      Result := Result.Replace('#Endpoint#',ADataSet.FieldByName('EndPoint').AsString,[]);
      Result := Result.Replace('#QueryParams#',QueryString,[]);
      Result := Result.Replace('#ParamsContent#',ParamsContent,[]);
      Result := Result.Replace('#Iterator#',CompCount.ToString,[rfReplaceAll]);
      Result := Result.Replace('#Left#',(10*CompCount).ToString,[]);
      Result := Result.Replace('#Top#',(10*CompCount).ToString,[]);
      Result := Result.Replace('#Left2#',(12*CompCount).ToString,[]);
      Result := Result.Replace('#Top2#',(12*CompCount).ToString,[]);
end;

function TMainForm.GetMemTableTemplate(CompName: String; ADataSet: TFDDataSet; AQuery: TFDQuery; AOutDataSet: TFDMemTable): String;
var
MS: TMemoryStream;
begin
  Result := '';
  if (ADataSet.FieldByName('RequestType').AsString<>'DELETE') AND (ADataSet.FieldByName('TableName').AsString<>'') then
  begin
    AQuery.SQL.Text := 'SELECT * FROM !TableName WHERE 0=1';
    AQuery.MacroByName('TableName').AsRaw := ADataSet.FieldByName('TableName').AsString;
    AQuery.Open;
    MS := TMemoryStream.Create;
    AQuery.SaveToStream(MS);
    MS.Position := 0;
    AOutDataSet.LoadFromStream(MS);
    AOutDataSet.StoreDefs := True;
    AOutDataSet.Active := False;
    Result := ComponentToStringProc(AOutDataSet).Replace('FDMemTable:',CompName+':');
    MS.Free;
  end;
end;

procedure TMainForm.CopyClientCompRectBTNClick(Sender: TObject);
var
I: Integer;
SL: TStringList;
ClientCompSL: TStringList;
QueryString: String;
ParamsContent: String;
CompCount: Integer;
MS: TMemoryStream;
begin
  ClientMemo.Lines.Clear;

  CompCount := 1;
  EndPointTable.First;
  ClientCompSL := TStringList.Create;
  ClientCompSL.Append('');
  SL := TStringList.Create;
  SL.StrictDelimiter := True;
  while not EndPointTable.EOF do
    begin
      QueryString := '';
      ParamsContent := '';
      SL.Clear;
      SL.CommaText := GetQueryStringList(EndPointTable);

      for I := 0 to SL.Count-1 do
        begin
          QueryString := QueryString + IfThen(I=0,'?','&') + SL[I] + '={' + SL[I] + '}';
          ParamsContent := ParamsContent+#13#10+'    item'+#13#10+'      Kind = pkURLSEGMENT'+#13#10+'      name = ''' + SL[I]+ ''''+#13#10+'      Options = [poAutoCreated]'+#13#10+'    end';
        end;

      SL.Clear;
      SL.Text := GetCompTemplate(BackendEndpointTemplateMemo.Lines.Text, QueryString, ParamsContent, CompCount, EndPointTable, FDMemTableInfo);

      ClientCompSL.Append(SL.Text.TrimRight);

      SL.Clear;
      SL.Text := GetMemTableTemplate('FDMemTable'+CompCount.ToString,EndPointTable,FDQueryFieldDefs,FDMemTable);

      if SL.Text<>'' then
        ClientCompSL.Append(SL.Text.TrimRight);

      EndPointTable.Next;
      Inc(CompCount);
    end;
  ClientCompSL.Append(EMSProviderTemplateMemo.Lines.Text);
  SL.Free;
  ClientMemo.Lines.Text := ClientCompSL.Text;
  SetClipboardText(ClientCompSL.Text);
  ClientCompSL.Free;
end;

procedure TMainForm.CopyServerCompRectBTNClick(Sender: TObject);
begin
  SetClipboardText(ComponentToStringProc(EndPointTable));
end;

procedure TMainForm.EllipsesEditButton1Click(Sender: TObject);
begin
  IBOpenDialog.InitialDir := ExtractFilePath(DBDataBaseEdit.Text);
  IBOpenDialog.FileName := ExtractFileName(DBDataBaseEdit.Text);
  if IBOpenDialog.Execute then
    begin
      if TFile.Exists(IBOpenDialog.Files[0])=True then
        DBDataBaseEdit.Text := IBOpenDialog.Files[0];
    end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
{$IFDEF MSWINDOWS}
var
  WBE: TWinWebBrowserEmulation;
{$ENDIF}
begin
  {$IFDEF MSWINDOWS}
  WBE := TWinWebBrowserEmulation.Create;
  WBE.RestoreBrowserEmulation;
  WBE.Free;
  {$ENDIF}

end;

procedure TMainForm.FormCreate(Sender: TObject);
{$IFDEF MSWINDOWS}
var
  WBE: TWinWebBrowserEmulation;
{$ENDIF}
begin
  {$IFDEF MSWINDOWS}
  WBE := TWinWebBrowserEmulation.Create;
  WBE.EnableBrowserEmulation(TInternetExplorerVersion.IE11);
  WBE.Free;
  {$ENDIF}

  DesignTimeConnectRect.Visible := False;
  EndPointLoadPathEdit.Text := TPath.Combine(TPath.Combine(TPath.GetSharedDocumentsPath,'Embarcadero' + PathDelim + 'EMS' + PathDelim),EndPointFile);
  EndPointSavePathEdit.Text := TPath.Combine(TPath.Combine(TPath.GetSharedDocumentsPath,'Embarcadero' + PathDelim + 'EMS' + PathDelim),EndPointFile);

  if FDQueryFieldDefs.Connection=nil then
    begin
      FDQueryFieldDefs.Connection := FDConnection;
    end;
  if FDScriptExec.Connection=nil then
    begin
      FDScriptExec.Connection := FDConnection;
    end;

  if FDConnection.DriverName<>'IB' then
    begin
      LoadIBDBCB.IsChecked := False;
      IBLayout.Visible := False;
    end;
end;

procedure TMainForm.Rectangle10Click(Sender: TObject);
var
I, II: Integer;
GroupsList: TStringList;
AAction, ARequestType, ADatabase: String;
begin

  ADatabase := FDConnection.DriverName;

  GroupsList := TStringList.Create;
  GroupsList.StrictDelimiter := True;
  for I := 0 to GroupsListBox.Items.Count-1 do
    begin
      if GroupsListBox.ListItems[I].IsChecked = True then
        begin
          GroupsList.Append(GroupsListBox.Items[I]);
        end;
    end;

  if ActionListBox.ItemIndex>=0 then
    begin
      AAction := ActionListBox.Items[ActionListBox.ItemIndex];
    end
   else
    begin
      AAction := 'Table';
    end;
  for I := 0 to TablesListBox.Items.Count-1 do
    begin
      if TablesListBox.ListItems[I].IsChecked = True then
        begin

          for II := 0 to RTListListBox.Items.Count-1 do
            begin
              if RTListListBox.ListItems[II].IsChecked = True then
                begin
                  ARequestType := RTListToRequestType(RTListListBox.Items[II]);
                  BindSourceDBEndPoints.DataSet.Append;
                  BindSourceDBEndPoints.DataSet.FieldByName('EndPoint').AsString := IfThen(EndPointNamesCB.IsChecked,ARequestType.ToLower,'')+TableNameToEndPoint(TablesListBox.Items[I]);
                  BindSourceDBEndPoints.DataSet.FieldByName('RequestType').AsString := ARequestType;
                  BindSourceDBEndPoints.DataSet.FieldByName('Action').AsString := AAction;
                  if ARequestType='GET' then
                    begin
                      if AAction='Table' then
                        BindSourceDBEndPoints.DataSet.FieldByName('TableName').AsString := TablesListBox.Items[I];
                      if AAction='SQL' then
                        begin
                          if (ADatabase='IB') OR (ADatabase='FB') then
                            BindSourceDBEndPoints.DataSet.FieldByName('SQL').AsString := 'SELECT * FROM ' + TablesListBox.Items[I] + ' ROWS :PageId BY :Limit'
                          else
                          if ADatabase='MSSQL' then
                            BindSourceDBEndPoints.DataSet.FieldByName('SQL').AsString := 'SELECT * FROM ' + TablesListBox.Items[I] + ' OFFSET (CAST(:PageId AS integer)*CAST(:Limit AS integer))-CAST(:Limit AS integer) ROWS FETCH NEXT CAST(:Limit AS integer) ROWS ONLY'
                          else
                          if (ADatabase='MySQL') OR (ADatabase='PG') OR (ADatabase='SQLite') OR (ADatabase.Contains('CData')=True) then
                            BindSourceDBEndPoints.DataSet.FieldByName('SQL').AsString := 'SELECT * FROM ' + TablesListBox.Items[I] + ' LIMIT :PageId,:Limit'
                          else
                            BindSourceDBEndPoints.DataSet.FieldByName('SQL').AsString := 'SELECT * FROM ' + TablesListBox.Items[I];
                          BindSourceDBEndPoints.DataSet.FieldByName('Params').AsString := 'PageId,Limit';
                        end;
                      if AAction='AggregateSQL' then
                        BindSourceDBEndPoints.DataSet.FieldByName('SQL').AsString := 'query_count=SELECT COUNT(*) as query_count FROM ' + TablesListBox.Items[I];
                      if AAction='Method' then
                        BindSourceDBEndPoints.DataSet.FieldByName('Method').AsString := 'get' + TablesListBox.Items[I];
                    end;
                  if ARequestType='POST' then
                    begin
                      if ((AAction='Table') OR (AAction='SQL') OR (AAction='AggregateSQL')) then
                        begin
                          BindSourceDBEndPoints.DataSet.FieldByName('TableName').AsString := TablesListBox.Items[I];
                          BindSourceDBEndPoints.DataSet.FieldByName('UniqueId').AsString := 'ID';
                        end;
                      if AAction='Method' then
                        BindSourceDBEndPoints.DataSet.FieldByName('Method').AsString := 'get' + TablesListBox.Items[I];
                    end;
                  if ARequestType='DELETE' then
                    begin
                      if ((AAction='Table') OR (AAction='AggregateSQL')) then
                        begin
                          BindSourceDBEndPoints.DataSet.FieldByName('TableName').AsString := TablesListBox.Items[I];
                          BindSourceDBEndPoints.DataSet.FieldByName('Params').AsString := 'ID';
                          BindSourceDBEndPoints.DataSet.FieldByName('UniqueId').AsString := 'ID';
                        end;
                      if AAction='SQL' then
                        begin
                          BindSourceDBEndPoints.DataSet.FieldByName('SQL').AsString := 'DELETE FROM ' + TablesListBox.Items[I] + 'WHERE ID=:ID';
                          BindSourceDBEndPoints.DataSet.FieldByName('Params').AsString := 'ID';
                          BindSourceDBEndPoints.DataSet.FieldByName('UniqueId').AsString := 'ID';
                        end;
                      if AAction='Method' then
                        begin
                          BindSourceDBEndPoints.DataSet.FieldByName('Method').AsString := 'get' + TablesListBox.Items[I];
                          BindSourceDBEndPoints.DataSet.FieldByName('Params').AsString := 'ID';
                        end;
                    end;
                  BindSourceDBEndPoints.DataSet.FieldByName('Groups').AsString := GroupsList.CommaText;
                  BindSourceDBEndPoints.DataSet.Post;
                end;
            end;
        end;

    end;

  GroupsList.Free;

  TabControl1.ActiveTab := TabItem4;
end;

procedure TMainForm.Rectangle11Click(Sender: TObject);
begin
EndPointTable.EmptyDataSet;
LinkGridToDataSourceBindSourceDB1.Active := False;
LinkGridToDataSourceBindSourceDB1.Active := True;
end;

procedure TMainForm.GetTablesRectBTNClick(Sender: TObject);
var
SL: TStringList;
I: Integer;
TablesCount: Integer;
begin
  if LoadIBDBCB.IsChecked=True then
    begin
      FDConnection.Params.Values['Database'] := DBDataBaseEdit.Text;
      FDConnection.Params.Values['User_Name'] := DBUsernameEdit.Text;
      FDConnection.Params.Values['Password'] := DBPasswordEdit.Text;
      FDConnection.Params.Values['OpenMode'] := 'OpenOrCreate';
      //FDConnectionIB.Params.Values['SEPpassword'] := 'password';
    end;
  FDConnection.Open;

  SL := TStringList.Create;
  FDConnection.GetTableNames('', '', '', SL);
  for I := 0 to SL.Count-1 do
    begin
      BindSourceDBTables.DataSet.AppendRecord([SL[I]]);
    end;
  TablesCount := SL.Count;
  SL.Free;

  LinkFillControlToField1.Active := False;
  LinkFillControlToField1.Active := True;

  LinkFillControlToField3.Active := False;
  LinkFillControlToField3.Active := True;

  LinkFillControlToField4.Active := False;
  LinkFillControlToField4.Active := True;

  for I := 0 to RTListListBox.Items.Count-1 do
    begin
      RTListListBox.ListItems[I].IsChecked := True;
    end;

  for I := 0 to TablesListBox.Items.Count-1 do
    begin
      TablesListBox.ListItems[I].IsChecked := True;
    end;

  for I := 0 to GroupsListBox.Items.Count-1 do
    begin
      GroupsListBox.ListItems[I].IsChecked := True;
    end;

  if TablesCount>0 then
    TabControl1.ActiveTab := Step4Tab;
end;

procedure TMainForm.GetGroupsRectBTNClick(Sender: TObject);
begin
  EMSProvider.URLHost := HostEdit.Text;
  EMSProvider.URLPort := PortEdit.Text.ToInteger;
  EMSProvider.TenantId := TenantIdEdit.Text;
  EMSProvider.TenantSecret := TenantSecretEdit.Text;
  GetGroups;

  if GroupsListView.Items.Count>0 then
    TabControl1.ActiveTab := TabItem3;
end;

procedure TMainForm.Rectangle8Click(Sender: TObject);
begin
  EPSaveDialog.InitialDir := ExtractFilePath(EndPointSavePathEdit.Text);
  EPSaveDialog.FileName := ExtractFileName(EndPointSavePathEdit.Text);
  if EPSaveDialog.Execute then
    begin
      EndPointTable.SaveToFile(EPSaveDialog.Files[0],sfJSON);
    end;
end;

procedure TMainForm.Rectangle9Click(Sender: TObject);
begin
  EPOpenDialog.InitialDir := ExtractFilePath(EndPointLoadPathEdit.Text);
  EPOpenDialog.FileName := ExtractFileName(EndPointLoadPathEdit.Text);
  if EPOpenDialog.Execute then
    begin
      if TFile.Exists(EPOpenDialog.Files[0])=True then
        EndPointTable.LoadFromFile(EPOpenDialog.Files[0],sfJSON);
    end;
end;

procedure TMainForm.TabControl1Change(Sender: TObject);
var
I: Integer;
SL: TStringList;
QueryString: String;
ParamsContent: String;
CompCount: Integer;
begin
if TabControl1.ActiveTab=CompleteTab then
  begin
    CompCount := 1;
    EndPointsMemo.Lines.Text := '';
    EndPointTable.First;
    CustomMethodMemo.Lines.Append('');
    SL := TStringList.Create;
    SL.StrictDelimiter := True;
    while not EndPointTable.EOF do
      begin
        QueryString := '';
        ParamsContent := '';
        SL.Clear;
        SL.CommaText := GetQueryStringList(EndPointTable);

        for I := 0 to SL.Count-1 do
          begin
            QueryString := QueryString + IfThen(I=0,'?','&') + SL[I] + '={' + SL[I] + '}';
            ParamsContent := ParamsContent+#13#10+'    item'+#13#10+'      Kind = pkURLSEGMENT'+#13#10+'      name = ''' + SL[I]+ ''''+#13#10+'      Options = [poAutoCreated]'+#13#10+'    end';
          end;

        EndPointsMemo.Lines.Text := EndPointsMemo.Lines.Text +
        EndPointTable.FieldByName('RequestType').AsString + ' ';
        EndPointsMemo.Lines.Text := EndPointsMemo.Lines.Text + '/'+RootSegmentEdit.Text+'/' +
        EndPointTable.FieldByName('EndPoint').AsString + '/' + IfThen(QueryString<>'',QueryString,'');

        {EndPointTable.FieldByName('TableName').AsString;
        EndPointTable.FieldByName('SQL').AsString;
        EndPointTable.FieldByName('Params').AsString;
        EndPointTable.FieldByName('Groups').AsString;}

        if EndPointTable.FieldByName('Method').AsString<>'' then
          begin
           CustomMethodMemo.Lines.Insert(0,'    function '+EndPointTable.FieldByName('Method').AsString+'(AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;');

           CustomMethodMemo.Lines.Append('function TAutoTablesResource.'+EndPointTable.FieldByName('Method').AsString+'(AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;');
           CustomMethodMemo.Lines.Append('begin');
           CustomMethodMemo.Lines.Append('');
           CustomMethodMemo.Lines.Append('end;');
           CustomMethodMemo.Lines.Append('');
          end;

        EndPointsMemo.Lines.Text := EndPointsMemo.Lines.Text + #13#10;


        SL.Clear;
        SL.Text := GetCompTemplate(BackendEndpointTemplateMemo.Lines.Text, QueryString, ParamsContent, CompCount, EndPointTable, FDMemTableInfo);

        ClientComponentsMemo.Lines.Append(SL.Text.TrimRight);

        EndPointTable.Next;
        Inc(CompCount);
      end;
    ClientComponentsMemo.Lines.Append(EMSProviderTemplateMemo.Lines.Text);
    SL.Free;
  end;
if TabControl1.ActiveTab=Step4Tab then
  begin
     for I := 0 to RTListListBox.Items.Count-1 do
      begin
        RTListListBox.ListItems[I].Height := 50;
      end;

    for I := 0 to TablesListBox.Items.Count-1 do
      begin
        TablesListBox.ListItems[I].Height := 50;
      end;

    for I := 0 to GroupsListBox.Items.Count-1 do
      begin
        GroupsListBox.ListItems[I].Height := 50;
      end;

    for I := 0 to ActionListBox.Items.Count-1 do
      begin
        ActionListBox.ListItems[I].Height := 50;
      end;
  end;
end;

procedure TMainForm.GenClientRectBTNClick(Sender: TObject);
var
AOutputPath: String;
begin
  GenerateDelphiClientAction.Execute;
  GenerateDelphiClientSDKAction.Execute;

  AOutputPath := TPath.Combine(ExtractFilePath(ParamStr(0)),OutputPath);

  OpenDirectory(AOutputPath);
end;

procedure TMainForm.GenerateDelphiClientActionExecute(Sender: TObject);
var
  I: Integer;
  SL: TStringList;
  QueryString: String;
  ParamsContent: String;
  CompCount: Integer;
  CompList, CompHeaderList: TStringList;
  HeaderList, FunctionList: TStringList;
  ATemplatePath: String;
  AOutputPath: String;
  MS: TMemoryStream;
begin
  ClientMemo.Lines.Text := ComponentToStringProc(EndPointTable);

    CompCount := 1;
    EndPointTable.First;
    CompList := TStringList.Create;
    CompHeaderList := TStringList.Create;
    HeaderList := TStringList.Create;
    FunctionList := TStringList.Create;
    SL := TStringList.Create;
    SL.StrictDelimiter := True;
    while not EndPointTable.EOF do
      begin
        QueryString := '';
        ParamsContent := '';
        SL.Clear;
        if EndPointTable.FieldByName('RequestType').AsString='GET' then
          begin
            SL.CommaText := GetQueryStringList(EndPointTable) + IfThen((EndPointTable.FieldByName('Params').AsString<>'') OR (EndPointTable.FieldByName('Macros').AsString<>''),',format','format');
          end
        else
          begin
            SL.CommaText := GetQueryStringList(EndPointTable);
          end;

        for I := 0 to SL.Count-1 do
          begin
            QueryString := QueryString + IfThen(I=0,'?','&') + SL[I] + '={' + SL[I] + '}';
            ParamsContent := ParamsContent+#13#10+'    item'+#13#10+'      Kind = pkURLSEGMENT'+#13#10+'      name = ''' + SL[I]+ ''''+#13#10+'      Options = [poAutoCreated]'+#13#10+'    end';
          end;

        SL.Clear;
        SL.Text := GetCompTemplate(BackendEndpointTemplateMemo.Lines.Text, QueryString, ParamsContent, CompCount, EndPointTable, FDMemTableInfo);


        CompList.Append(SL.Text.TrimRight);

        if (EndPointTable.FieldByName('RequestType').AsString='POST') AND (EndPointTable.FieldByName('TableName').AsString<>'') then
          begin
            CompList.Append(GetMemTableTemplate(EndPointTable.FieldByName('EndPoint').AsString+'PostMemTable'+CompCount.ToString,EndPointTable,FDQueryFieldDefs,FDMemTable));
            FDMemTableR.FieldDefs.ClearAndResetID;
            FDMemTableR.FieldDefs.Add(EndPointTable.FieldByName('UniqueID').AsString,TFieldType.ftLargeint);
            CompList.Append(ComponentToStringProc(FDMemTableR).Replace('FDMemTableR:',EndPointTable.FieldByName('EndPoint').AsString+'MemTable'+CompCount.ToString+':'));
          end
        else
          CompList.Append(GetMemTableTemplate(EndPointTable.FieldByName('EndPoint').AsString+'MemTable'+CompCount.ToString,EndPointTable,FDQueryFieldDefs,FDMemTable));


        CompHeaderList.Append('    BackendEndpoint'+CompCount.ToString+': TBackendEndpoint;');
        CompHeaderList.Append('    RESTResponse'+CompCount.ToString+': TRESTResponse;');
        if (EndPointTable.FieldByName('RequestType').AsString<>'DELETE') AND (EndPointTable.FieldByName('TableName').AsString<>'') then
          begin
            CompHeaderList.Append('    '+EndPointTable.FieldByName('EndPoint').AsString+'MemTable'+CompCount.ToString+': TFDMemTable;');
          end;
        if (EndPointTable.FieldByName('RequestType').AsString='POST') AND (EndPointTable.FieldByName('TableName').AsString<>'') then
          begin
            CompHeaderList.Append('    '+EndPointTable.FieldByName('EndPoint').AsString+'PostMemTable'+CompCount.ToString+': TFDMemTable;');
          end;

        HeaderList.Append('    procedure '+EndPointTable.FieldByName('EndPoint').AsString+'Execute;');

        FunctionList.Append('');
        FunctionList.Append('procedure TAutoTablesClientDM.'+EndPointTable.FieldByName('EndPoint').AsString+'Execute;');
        if (EndPointTable.FieldByName('RequestType').AsString<>'DELETE') then
          begin
            FunctionList.Append('var');
            FunctionList.Append('  BS: TBytesStream;');
          end;
        if (EndPointTable.FieldByName('RequestType').AsString='POST') then
          begin
            FunctionList.Append('  SS: TStringStream;');
          end;
        FunctionList.Append('begin');
        if (EndPointTable.FieldByName('RequestType').AsString='POST') then
          begin
            FunctionList.Append('  SS := TStringStream.Create('''',TEncoding.UTF8);');
            FunctionList.Append('  '+EndPointTable.FieldByName('EndPoint').AsString+'PostMemTable'+CompCount.ToString+'.SaveToStream(SS,sfJSON);');
            FunctionList.Append('  SS.Position := 0;');
            FunctionList.Append('  BackendEndpoint'+CompCount.ToString+'.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);');
            FunctionList.Append('  SS.Free;');
          end;
        FunctionList.Append('  BackendEndpoint'+CompCount.ToString+'.Execute;');
        if (EndPointTable.FieldByName('RequestType').AsString<>'DELETE') then
          begin
            FunctionList.Append('  if RESTResponse'+CompCount.ToString+'.StatusCode<400 then');
            FunctionList.Append('    begin');
            FunctionList.Append('      BS := TBytesStream.Create(RESTResponse'+CompCount.ToString+'.RawBytes);');
            FunctionList.Append('      '+EndPointTable.FieldByName('EndPoint').AsString+'MemTable'+CompCount.ToString+'.LoadFromStream(BS,sfJSON);');
            FunctionList.Append('      BS.Free;');
            FunctionList.Append('    end;');
          end;
        FunctionList.Append('end;');

        EndPointTable.Next;
        Inc(CompCount);
      end;
    SL.Free;
  CompHeaderList.Append('    BackendAuth1: TBackendAuth;');
  CompHeaderList.Append('    EMSProvider1: TEMSProvider;');

  CompList.Append(EMSProviderTemplateMemo.Lines.Text.Replace('localhost',HostEdit.Text).Replace('8080',PortEdit.Text));


  ATemplatePath := TPath.Combine(TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)),TemplatePath),ClientPath),OPLangPath);
  AOutputPath := TPath.Combine(ExtractFilePath(ParamStr(0)),OutputPath);
  if TDirectory.Exists(AOutputPath)=False then
    begin
      TDirectory.CreateDirectory(AOutputPath);
    end;

  SL := TStringList.Create;
  SL.LoadFromFile(TPath.Combine(ATemplatePath,ClientTemplateDFMFile));
  SL.Text := SL.Text.Replace('{#EndPointComponent#}'+#13#10,CompList.Text);
  SL.SaveToFile(TPath.Combine(AOutputPath,ClientTemplateDFMFile));

  SL.LoadFromFile(TPath.Combine(ATemplatePath,ClientTemplatePASFile));
  SL.Text := SL.Text.Replace('{#CompHeaderList#}'+#13#10,CompHeaderList.Text);
  SL.Text := SL.Text.Replace('{#HeaderList#}'+#13#10,HeaderList.Text);
  SL.Text := SL.Text.Replace('{#FunctionList#}'+#13#10,FunctionList.Text);
  SL.SaveToFile(TPath.Combine(AOutputPath,ClientTemplatePASFile));

  if TFile.Exists(TPath.Combine(ATemplatePath,ClientTemplateDPRFile))=True then
    begin
      TFile.Copy(TPath.Combine(ATemplatePath,ClientTemplateDPRFile),TPath.Combine(AOutputPath,ClientTemplateDPRFile),True);
    end;

  if TFile.Exists(TPath.Combine(ATemplatePath,ClientTemplateDPROJFile))=True then
    begin
      TFile.Copy(TPath.Combine(ATemplatePath,ClientTemplateDPROJFile),TPath.Combine(AOutputPath,ClientTemplateDPROJFile),True);
    end;

  if TFile.Exists(TPath.Combine(ATemplatePath,ClientTemplateMFFMXFile))=True then
    begin
      TFile.Copy(TPath.Combine(ATemplatePath,ClientTemplateMFFMXFile),TPath.Combine(AOutputPath,ClientTemplateMFFMXFile),True);
    end;

  if TFile.Exists(TPath.Combine(ATemplatePath,ClientTemplateMFPASFile))=True then
    begin
      TFile.Copy(TPath.Combine(ATemplatePath,ClientTemplateMFPASFile),TPath.Combine(AOutputPath,ClientTemplateMFPASFile),True);
    end;

  SL.Free;
  FunctionList.Free;
  HeaderList.Free;
  CompList.Free;
  CompHeaderList.Free;
end;

procedure TMainForm.GenerateDelphiClientSDKActionExecute(Sender: TObject);
var
AGenerator: TDelphiSDKFrame;
{  I: Integer;
  SL: TStringList;
  QueryString, ParamString: String;
  CompCount: Integer;
  FunctionList, HeaderList: TStringList;
  ATemplatePath: String;
  AOutputPath: String;}
begin
  AGenerator := TDelphiSDKFrame.Create(Self);
  AGenerator.Initialize(HostEdit.Text,PortEdit.Text,EndPointTable,FDMemTableInfo);
  AGenerator.GenerateSDK(DelphiSDKPASFile);
  AGenerator.Free;


{    CompCount := 1;
    EndPointTable.First;
    FunctionList := TStringList.Create;
    HeaderList := TStringList.Create;
    SL := TStringList.Create;
    SL.StrictDelimiter := True;
    while not EndPointTable.EOF do
      begin
        QueryString := '';
        ParamString := '';
        SL.Clear;
        SL.CommaText := GetQueryStringList(EndPointTable) + IfThen((EndPointTable.FieldByName('Params').AsString<>'') OR (EndPointTable.FieldByName('Macros').AsString<>''),',format','format');

        for I := 0 to SL.Count-1 do
          begin
            QueryString := QueryString + IfThen(I=0,'?','&') + SL[I] + '=''+A' + SL[I] + IfThen(I=SL.Count-1,'','+''');
            ParamString := ParamString + IfThen(I=0,'','; ') + 'A' + SL[I] + ': String';
          end;
        if EndPointTable.FieldByName('RequestType').AsString='POST' then
          begin
            ParamString := '('+ParamString+IfThen(ParamString<>'',';','')+' AStringStream: TStringStream'+')';
          end
        else
          begin
            ParamString := '('+ParamString+')';
          end;
        SL.Clear;

        if EndPointTable.FieldByName('RequestType').AsString='GET' then
          begin
            SL.Append('function TSDKClient.'+EndPointTable.FieldByName('EndPoint').AsString+ParamString+': TStringStream;');
            SL.Append('begin');
            SL.Append('  if Self.LoginAPI(FUserName,FPassword) then');
            SL.Append('    Result := Self.GetAPI(''/' + FDMemTableInfo.FieldByName('RootSegment').AsString + '/' + EndPointTable.FieldByName('EndPoint').AsString + '/' + QueryString + IfThen(QueryString='','''','') + ');');
            SL.Append('end;');
          end
        else
        if EndPointTable.FieldByName('RequestType').AsString='POST' then
          begin
            SL.Append('function TSDKClient.'+EndPointTable.FieldByName('EndPoint').AsString+ParamString+': TStringStream;');
            SL.Append('begin');
            SL.Append('  if Self.LoginAPI(FUserName,FPassword) then');
            SL.Append('    Result := Self.PostAPI(''/' + FDMemTableInfo.FieldByName('RootSegment').AsString + '/' + EndPointTable.FieldByName('EndPoint').AsString + '/' + QueryString + IfThen(QueryString='','''','') + ',AStringStream);');
            SL.Append('end;');
          end
        else
        if EndPointTable.FieldByName('RequestType').AsString='DELETE' then
          begin
            SL.Append('function TSDKClient.'+EndPointTable.FieldByName('EndPoint').AsString+ParamString+': TStringStream;');
            SL.Append('begin');
            SL.Append('  if Self.LoginAPI(FUserName,FPassword) then');
            SL.Append('    Result := Self.DeleteAPI(''/' + FDMemTableInfo.FieldByName('RootSegment').AsString + '/' + EndPointTable.FieldByName('EndPoint').AsString + '/' + QueryString + IfThen(QueryString='','''','') + ');');
            SL.Append('end;');
          end;


        FunctionList.Append(SL.Text);

        SL.Clear;

        if EndPointTable.FieldByName('RequestType').AsString='GET' then
          begin
            SL.Append('    function '+EndPointTable.FieldByName('EndPoint').AsString+ParamString+': TStringStream;');
          end
        else
        if EndPointTable.FieldByName('RequestType').AsString='POST' then
          begin
            SL.Append('    function '+EndPointTable.FieldByName('EndPoint').AsString+ParamString+': TStringStream;');
          end
        else
        if EndPointTable.FieldByName('RequestType').AsString='DELETE' then
          begin
            SL.Append('    function '+EndPointTable.FieldByName('EndPoint').AsString+ParamString+': TStringStream;');
          end;

        HeaderList.Append(SL.Text);

        EndPointTable.Next;
        Inc(CompCount);
      end;
    SL.Free;

  ATemplatePath := TPath.Combine(TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)),TemplatePath),SDKPath),OPLangPath);
  AOutputPath := TPath.Combine(ExtractFilePath(ParamStr(0)),OutputPath);
  if TDirectory.Exists(AOutputPath)=False then
    begin
      TDirectory.CreateDirectory(AOutputPath);
    end;

  SL := TStringList.Create;
  SL.LoadFromFile(TPath.Combine(ATemplatePath,SDKTemplateFile)); }
//  SL.Text := SL.Text.Replace('{#URLHost#}',HostEdit.Text);
//  SL.Text := SL.Text.Replace('{#URLPort#}',PortEdit.Text);
//  SL.Text := SL.Text.Replace('{#Username#}','');
//  SL.Text := SL.Text.Replace('{#Password#}','');
//  SL.Text := SL.Text.Replace('{#SDKFunctionList#}',FunctionList.Text);
//  SL.Text := SL.Text.Replace('{#SDKHeaderList#}',HeaderList.Text);
//  SL.SaveToFile(TPath.Combine(AOutputPath,SDKTemplateFile));

//  SL.Free;
//  FunctionList.Free;
//  HeaderList.Free;

end;

procedure TMainForm.GenerateSDKsBTNClick(Sender: TObject);
begin
{$IF DEFINED(MSWINDOWS)}
  ShellExecute(0, 'OPEN', PChar(SDK_GENERATOR_URL), '', '', SW_SHOWNORMAL);
{$ENDIF}
end;

procedure TMainForm.GenOpenAPIRectBTNClick(Sender: TObject);
var
SL: TStringList;
AOutputPath: String;
ADocsArchive: String;
ADocsPath: String;
DocsFile: TStringList;
begin
  AOutputPath := TPath.Combine(ExtractFilePath(ParamStr(0)),OutputPath);
  if TDirectory.Exists(AOutputPath)=False then
    begin
      TDirectory.CreateDirectory(AOutputPath);
    end;

  SL := TStringList.Create;
  SL.Text := OpenAPIDM.CreateDoc(EndPointTable,FDMemTableInfo);
  SL.SaveToFile(TPath.Combine(AOutputPath,OpenAPIDocsFile));
  OpenAPIMemo.Lines.Text := SL.Text;

  ADocsArchive := TPath.Combine(TemplatePath,SwaggerUIZip);
  ADocsPath := TPath.Combine(AOutputPath,DocsPath);

  if TDirectory.Exists(ADocsPath)=False then
    begin
      TDirectory.CreateDirectory(ADocsPath);
    end;

  if TFile.Exists(ADocsArchive) then
    begin
      TZipFile.ExtractZipFile(ADocsArchive,ADocsPath);
    end;

  SL.SaveToFile(TPath.Combine(ADocsPath,OpenAPIDocsFile));

  DocsFile := TStringList.Create;
  DocsFile.LoadFromFile(TPath.Combine(ADocsPath,SwaggerIndexFile));
  DocsFile.Text := DocsFile.Text.Replace('''#apispec.json#''',SL.Text);
  DocsFile.SaveToFile(TPath.Combine(ADocsPath,SwaggerIndexFile));
  DocsFile.Free;

  SL.Free;

  OpenDirectory(AOutputPath);

  TabControl1.ActiveTab := CompleteTab;
  OutputTabControl.ActiveTab := DocsTab;

  WBDocs.URL := TPath.Combine(ADocsPath,SwaggerIndexFile);
end;

function TMainForm.GetQueryStringList(ADataSet: TFDDataSet): String;
begin
Result := ADataSet.FieldByName('Params').AsString+
          IfThen((ADataSet.FieldByName('Params').AsString<>'') AND (ADataSet.FieldByName('Macros').AsString<>''),',','')+
          ADataSet.FieldByName('Macros').AsString;
end;

function GetObjectStr(const Value, AStart, AEnd: string): string;
var
  aPos, bPos: Integer;
begin
  Result := '';
  aPos := Pos(AStart, Value);
  if aPos > 0 then begin
    aPos := aPos;
    bPos := PosEx(AEnd, Value, aPos) + Length(AEnd);
    if bPos > 0 then begin
      Result := Copy(Value, aPos, bPos - aPos);
    end;
  end;
end;

function TMainForm.ConnectionToDriverLink(AConnection: TFDConnection): String;
var
PhysDriverLinkStr: String;
begin
  if AConnection.DriverName='ADS' then
    PhysDriverLinkStr := 'FDPhysADSDriverLink1: TFDPhysADSDriverLink'
  else if AConnection.DriverName='ASA' then
    PhysDriverLinkStr := 'FDPhysASADriverLink1: TFDPhysASADriverLink'
  else if AConnection.DriverName='CDataREST' then
    PhysDriverLinkStr := 'FDPhysCDataRESTDriverLink1: TFDPhysCDataRESTDriverLink'
  else if AConnection.DriverName='CDataRSS' then
    PhysDriverLinkStr := 'FDPhysCDataRSSDriverLink1: TFDPhysCDataRSSDriverLink'
  else if AConnection.DriverName='CDataSalesforce' then
    PhysDriverLinkStr := 'FDPhysCDataSalesforceDriverLink1: TFDPhysCDataSalesforceDriverLink'
  else if AConnection.DriverName='DB2' then
    PhysDriverLinkStr := 'FDPhysDB2DriverLink1: TFDPhysDB2DriverLink'
  else if AConnection.DriverName='DS' then
    PhysDriverLinkStr := 'FDPhysDSDriverLink1: TFDPhysDSDriverLink'
  else if AConnection.DriverName='FB' then
    PhysDriverLinkStr := 'FDPhysFBDriverLink1: TFDPhysFBDriverLink'
  else if AConnection.DriverName='IB' then
    PhysDriverLinkStr := 'FDPhysIBDriverLink1: TFDPhysIBDriverLink'
  else if AConnection.DriverName='IBLite' then
    PhysDriverLinkStr := 'FDPhysIBLiteDriverLink1: TFDPhysIBLiteDriverLink'
  else if AConnection.DriverName='Infx' then
    PhysDriverLinkStr := 'FDPhysInfxDriverLink1: TFDPhysInfxDriverLink'
  else if AConnection.DriverName='Mongo' then
    PhysDriverLinkStr := 'FDPhysMongoDriverLink1: TFDPhysMongoDriverLink'
  else if AConnection.DriverName='MSAccess' then
    PhysDriverLinkStr := 'FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink'
  else if AConnection.DriverName='MSSQL' then
    PhysDriverLinkStr := 'FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink'
  else if AConnection.DriverName='MySQL' then
    PhysDriverLinkStr := 'FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink'
  else if AConnection.DriverName='ODBC' then
    PhysDriverLinkStr := 'FDPhysODBCDriverLink1: TFDPhysODBCDriverLink'
  else if AConnection.DriverName='Oracle' then
    PhysDriverLinkStr := 'FDPhysOracleDriverLink1: TFDPhysOracleDriverLink'
  else if AConnection.DriverName='PG' then
    PhysDriverLinkStr := 'FDPhysPGDriverLink1: TFDPhysPGDriverLink'
  else if AConnection.DriverName='SQLite' then
    PhysDriverLinkStr := 'FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink'
  else if AConnection.DriverName='TData' then
    PhysDriverLinkStr := 'FDPhysTDataDriverLink1: TFDPhysTDataDriverLink'
  else if AConnection.DriverName='TDBX' then
    PhysDriverLinkStr := 'FDPhysTDBXDriverLink1: TFDPhysTDBXDriverLink';
  Result := PhysDriverLinkStr;
end;

procedure TMainForm.GenServerRectBTNClick(Sender: TObject);
var
  I: Integer;
  SL: TStringList;
  EndPointTableStr: String;
  MethodList, MethodHeaderList: TStringList;
  ATemplatePath: String;
  AOutputPath: String;
begin
  ServerMemo.Lines.Text := ComponentToStringProc(EndPointTable) + ComponentToStringProc(FDConnection);

  SL := TStringList.Create;
  SL.StrictDelimiter := True;
  EndPointTable.First;
  MethodHeaderList := TStringList.Create;
  MethodList := TStringList.Create;
  MethodList.Append('');
  while not EndPointTable.EOF do
    begin
      SL.Clear;
      if EndPointTable.FieldByName('Method').AsString<>'' then
        begin
         SL.CommaText := GetQueryStringList(EndPointTable);

         MethodHeaderList.Insert(0,'    function '+EndPointTable.FieldByName('Method').AsString+'(AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;');

         MethodList.Append('function TAutoTablesResource.'+EndPointTable.FieldByName('Method').AsString+'(AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;');
         if SL.Count>0 then
          begin
            MethodList.Append('var');
            for I := 0 to SL.Count-1 do
              begin
                MethodList.Append('A'+SL[I]+': String');
              end;
          end;
         MethodList.Append('begin');
         for I := 0 to SL.Count-1 do
           begin
             MethodList.Append('ARequest.Params.TryGetValue('+SL[I]+',A'+SL[I]+');');
           end;
         MethodList.Append('');
         MethodList.Append('end;');
         MethodList.Append('');
        end;

      EndPointTable.Next;
    end;
  SL.Free;

  ATemplatePath := TPath.Combine(TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)),TemplatePath),ServerPath),OPLangPath);
  AOutputPath := TPath.Combine(ExtractFilePath(ParamStr(0)),OutputPath);
  if TDirectory.Exists(AOutputPath)=False then
    begin
      TDirectory.CreateDirectory(AOutputPath);
    end;

  SL := TStringList.Create;
  SL.LoadFromFile(TPath.Combine(ATemplatePath,ServerTemplateDFMFile));
  EndPointTableStr := ComponentToStringProc(EndPointTable);
  while GetObjectStr(EndPointTableStr, '  object', '  end'+#13#10)<>'' do
    EndPointTableStr := EndPointTableStr.Replace(GetObjectStr(EndPointTableStr, '  object', '  end'+#13#10),'');
  SL.Text := SL.Text.Replace('{#EndPointComponent#}',EndPointTableStr);
  SL.Text := SL.Text.Replace('{#EndPointConnection#}',ComponentToStringProc(FDConnection));
  SL.Text := SL.Text.Replace('FDPhysIBDriverLink1: TFDPhysIBDriverLink',ConnectionToDriverLink(FDConnection));
  SL.SaveToFile(TPath.Combine(AOutputPath,ServerTemplateDFMFile));

  SL.LoadFromFile(TPath.Combine(ATemplatePath,ServerTemplatePASFile));
  SL.Text := SL.Text.Replace('{#RootSegment#}',FDMemTableInfo.FieldByName('RootSegment').AsString);
  SL.Text := SL.Text.Replace('{#MethodHeaderList#}',MethodHeaderList.Text);
  SL.Text := SL.Text.Replace('{#MethodList#}',MethodList.Text);
  SL.Text := SL.Text.Replace('FDPhysIBDriverLink1: TFDPhysIBDriverLink',ConnectionToDriverLink(FDConnection));
  SL.SaveToFile(TPath.Combine(AOutputPath,ServerTemplatePASFile));

  TFile.Copy(TPath.Combine(ATemplatePath,ServerTemplateDPKFile), TPath.Combine(AOutputPath,ServerTemplateDPKFile),True);
  TFile.Copy(TPath.Combine(ATemplatePath,ServerTemplateDPROJFile), TPath.Combine(AOutputPath,ServerTemplateDPROJFile),True);
  SL.Free;
  MethodList.Free;
  MethodHeaderList.Free;

  OpenDirectory(AOutputPath);
end;

procedure TMainForm.GenSolutionRectBTNClick(Sender: TObject);
begin
  GenServerRectBTNClick(Sender);
  GenClientRectBTNClick(Sender);

  GenOpenAPIRectBTNClick(Sender);

end;

procedure TMainForm.GetGroups;
var
GroupsArray: TArray<string>;
LEMSClientAPI: TEMSClientAPI;
begin
  if BackendGroups.Tag = NOT_BUSY then
  begin
    BackendGroups.Tag := BUSY;
    ITask(TTask.Create(
      procedure
      begin
        try
            LEMSClientAPI := (BackendUsers.ProviderService as IGetEMSApi).EMSAPI;
            GroupsArray := LEMSClientAPI.RetrieveGroupsNames;

            TThread.Synchronize(nil,
              procedure
              var
                I: Integer;
              begin
                GroupsMemTable.EmptyDataSet;

                for I := Low(GroupsArray) to High(GroupsArray) do
                 begin
                   BindSourceDBGroups.DataSet.AppendRecord([GroupsArray[i]]);
                 end;

                LinkFillControlToField2.Active := False;
                LinkFillControlToField2.Active := True;
              end);

        finally
          BackendGroups.Tag := NOT_BUSY;
        end;
      end)).Start;
  end;
end;

end.

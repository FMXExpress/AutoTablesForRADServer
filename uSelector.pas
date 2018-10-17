unit uSelector;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.ListView,
  FMX.StdCtrls, FMX.Controls.Presentation, Data.DB, FMX.Objects, FireDAC.Comp.Client,
  FMX.Edit, FMX.Layouts, FMX.TabControl, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FMX.SearchBox,
  FireDAC.Stan.StorageBin, FMX.ScrollBox, FMX.Memo, FMX.ListBox;

type
  TSelectorForm = class(TForm)
    ToolBar1: TToolBar;
    HeaderText: TText;
    BackBTN: TButton;
    OtherBTN: TButton;
    TabControl1: TTabControl;
    SelectTab: TTabItem;
    OtherTab: TTabItem;
    OtherLayout: TLayout;
    Layout12: TLayout;
    Text6: TText;
    OtherEdit: TEdit;
    ClearEditButton2: TClearEditButton;
    SaveBTN: TButton;
    BindSourceDBTableName: TBindSourceDB;
    BindingsListCB: TBindingsList;
    LinkFillControlToField: TLinkFillControlToField;
    SCBindLink: TBindLink;
    BindSourceDBRequestType: TBindSourceDB;
    BindSourceDBGroups: TBindSourceDB;
    PickerLB: TListBox;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OtherBTNClick(Sender: TObject);
    procedure BackBTNClick(Sender: TObject);
    procedure SaveBTNClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    ResultField: String;
    BindSourceDBCBRemote: TBindSourceDB;
  public
    { Public declarations }
    procedure SetParamsView;
    procedure SetGroupsView;
    procedure SaveValue(const S: String);
    procedure SetDataSetResult(const aField: String; BS: TBindSourceDB);
    procedure ClearSearchBox(Sender: TObject);
  end;

var
  SelectorForm: TSelectorForm;

implementation

{$R *.fmx}

uses
  uMainForm;

procedure TSelectorForm.Button1Click(Sender: TObject);
var
 I: Integer;
 SL: TStringList;
begin
  SL := TStringList.Create;
  SL.StrictDelimiter := True;
  for I := 0 to PickerLB.Items.Count-1 do
    begin
      if PickerLB.ListItems[I].IsChecked=True then
        SL.Append(PickerLB.Items[I]);
    end;
  SaveValue(SL.CommaText);
  SL.Free;
end;

procedure TSelectorForm.ClearSearchBox(Sender: TObject);
var
  I: Integer;
  SearchBox: TSearchBox;
begin
  for I := 0 to TListView(Sender).Controls.Count-1 do
    if TListView(Sender).Controls[I].ClassType = TSearchBox then
    begin
      SearchBox := TSearchBox(TListView(Sender).Controls[I]);
      SearchBox.Text := '';
      Break;
    end;
end;

procedure TSelectorForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BackBTNClick(Self);
end;

procedure TSelectorForm.FormShow(Sender: TObject);
var
I: Integer;
begin
  for I := 0 to PickerLB.Items.Count-1 do
    begin
      PickerLB.ListItems[I].Height := 50;
    end;
end;

procedure TSelectorForm.SetParamsView;
begin
  LinkFillControlToField.Active := False;
  LinkFillControlToField.FillDataSource := BindSourceDBRequestType;
  LinkFillControlToField.FillDisplayFieldName := 'RequestType';
  LinkFillControlToField.Active := True;
  HeaderText.Text := 'Select Request Type';
  OtherBTN.Visible := True;
end;

procedure TSelectorForm.SaveBTNClick(Sender: TObject);
begin
  SaveValue(OtherEdit.Text);
end;

procedure TSelectorForm.SetDataSetResult(const aField: String; BS: TBindSourceDB);
begin
  BindSourceDBCBRemote := BS;
  ResultField := aField;
end;

procedure TSelectorForm.BackBTNClick(Sender: TObject);
begin
  OtherEdit.Text := '';
  OtherBTN.Visible := True;
  ClearSearchBox(PickerLB);
  TabControl1.ActiveTab := SelectTab;
  SelectorForm.Hide;
  MainForm.Show;
end;

procedure TSelectorForm.OtherBTNClick(Sender: TObject);
begin
  OtherBTN.Visible := False;
  TabControl1.ActiveTab := OtherTab;
  //ShowKeyboard(OtherEdit);
end;

procedure TSelectorForm.SaveValue(const S: String);
begin
  if BindSourceDBCBRemote.DataSet<>nil then
   begin
    if BindSourceDBCBRemote.DataSet.Active = False then
     begin
      BindSourceDBCBRemote.DataSet.Open;
     end;

    BindSourceDBCBRemote.DataSet.DisableControls;
    if not (BindSourceDBCBRemote.DataSet.State in [dsEdit, dsInsert]) then BindSourceDBCBRemote.DataSet.Edit;
    BindSourceDBCBRemote.DataSet.FieldByName(ResultField).AsString := S;
    BindSourceDBCBRemote.DataSet.Post;
    BindSourceDBCBRemote.DataSet.EnableControls;

   end;

  OtherEdit.Text := '';
  OtherBTN.Visible := True;
  ClearSearchBox(PickerLB);
  TabControl1.ActiveTab := SelectTab;
  SelectorForm.Hide;
  MainForm.Show;
end;

procedure TSelectorForm.SetGroupsView;
begin
  LinkFillControlToField.Active := False;
  LinkFillControlToField.FillDataSource := BindSourceDBGroups;
  LinkFillControlToField.FillDisplayFieldName := 'Group';
  LinkFillControlToField.Active := True;
  HeaderText.Text := 'Select Group';
  OtherBTN.Visible := True;
end;


end.

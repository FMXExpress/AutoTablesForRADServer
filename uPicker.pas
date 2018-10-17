unit uPicker;

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
  FireDAC.Stan.StorageBin, FMX.ScrollBox, FMX.Memo;

type
 { TListViewHelper = class helper for TListView
      procedure SetSearchFilter2(const Filter: string);
      procedure SetFilterPredicate2(const Predicate: TPredicate<string>);
    end;    }

  TPickerForm = class(TForm)
    ToolBar1: TToolBar;
    BackBTN: TButton;
    PickerLV: TListView;
    BindSourceDBTableName: TBindSourceDB;
    BindingsListCB: TBindingsList;
    LinkFillControlToField: TLinkFillControlToField;
    BindSourceDBRequestType: TBindSourceDB;
    HeaderText: TText;
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
    SCBindLink: TBindLink;
    BindSourceDBGroups: TBindSourceDB;
    BindSourceDBAction: TBindSourceDB;
    procedure BackBTNClick(Sender: TObject);
    procedure PickerLVItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure OtherBTNClick(Sender: TObject);
    procedure SaveBTNClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ResultField: String;
    BindSourceDBCBRemote: TBindSourceDB;
  public
    { Public declarations }
    procedure SetActionView;
    procedure SetRequestTypeView;
    procedure SetGroupsView;
    procedure SetTableNameView;
    procedure SaveValue(const S: String);
    procedure SetDataSetResult(const aField: String; BS: TBindSourceDB);
    procedure ClearSearchBox(Sender: TObject);
  end;

var
  PickerForm: TPickerForm;

implementation

{$R *.fmx}

uses
  uMainForm;

procedure TPickerForm.ClearSearchBox(Sender: TObject);
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

procedure TPickerForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BackBTNClick(Self);
end;

procedure TPickerForm.SetActionView;
begin
  LinkFillControlToField.Active := False;
  LinkFillControlToField.FillDataSource := BindSourceDBAction;
  LinkFillControlToField.FillDisplayFieldName := 'Action';
  LinkFillControlToField.Active := True;
  HeaderText.Text := 'Select Action';
  OtherBTN.Visible := True;
end;

procedure TPickerForm.SetRequestTypeView;
begin
  LinkFillControlToField.Active := False;
  LinkFillControlToField.FillDataSource := BindSourceDBRequestType;
  LinkFillControlToField.FillDisplayFieldName := 'RequestType';
  LinkFillControlToField.Active := True;
  HeaderText.Text := 'Select Request Type';
  OtherBTN.Visible := True;
end;

procedure TPickerForm.SetGroupsView;
begin
  LinkFillControlToField.Active := False;
  LinkFillControlToField.FillDataSource := BindSourceDBGroups;
  LinkFillControlToField.FillDisplayFieldName := 'Group';
  LinkFillControlToField.Active := True;
  HeaderText.Text := 'Select Group';
  OtherBTN.Visible := True;
end;

procedure TPickerForm.SetTableNameView;
begin
  LinkFillControlToField.Active := False;
  LinkFillControlToField.FillDataSource := BindSourceDBTableName;
  LinkFillControlToField.FillDisplayFieldName := 'TableName';
  LinkFillControlToField.Active := True;
  HeaderText.Text := 'Select Table Name';
  OtherBTN.Visible := True;
end;


procedure TPickerForm.SaveBTNClick(Sender: TObject);
begin
  SaveValue(OtherEdit.Text);
end;

procedure TPickerForm.SetDataSetResult(const aField: String; BS: TBindSourceDB);
begin
  BindSourceDBCBRemote := BS;
  ResultField := aField;
end;

procedure TPickerForm.BackBTNClick(Sender: TObject);
begin
  OtherEdit.Text := '';
  OtherBTN.Visible := True;
  ClearSearchBox(PickerLV);
  TabControl1.ActiveTab := SelectTab;
  PickerForm.Hide;
  MainForm.Show;
end;

procedure TPickerForm.OtherBTNClick(Sender: TObject);
begin
  OtherBTN.Visible := False;
  TabControl1.ActiveTab := OtherTab;
  //ShowKeyboard(OtherEdit);
end;

procedure TPickerForm.SaveValue(const S: String);
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
  ClearSearchBox(PickerLV);
  TabControl1.ActiveTab := SelectTab;
  PickerForm.Hide;
  MainForm.Show;
end;

procedure TPickerForm.PickerLVItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  SaveValue(PickerLV.Items[ItemIndex].Text);
end;

end.

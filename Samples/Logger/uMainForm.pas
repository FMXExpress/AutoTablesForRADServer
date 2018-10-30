unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, FMX.Edit, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Grid, FMX.TabControl, FMX.Objects, FMX.Memo;

type
  TMainForm = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    GetStringGrid: TStringGrid;
    ToolBar1: TToolBar;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    PostStringGrid: TStringGrid;
    PostResultStringGrid: TStringGrid;
    DeleteBTN: TButton;
    PostBTN: TButton;
    GetBTN: TButton;
    DeleteIdEdit: TEdit;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Label1: TLabel;
    JetStyleBook: TStyleBook;
    BackgroundImage: TRectangle;
    DeleteMemo: TMemo;
    procedure DeleteBTNClick(Sender: TObject);
    procedure GetBTNClick(Sender: TObject);
    procedure PostBTNClick(Sender: TObject);
    procedure GetStringGridSelChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses
  uAutoTablesClientDM;

procedure TMainForm.DeleteBTNClick(Sender: TObject);
begin
  if DeleteIdEdit.Text<>'' then
   begin
     AutoTablesClientDM.deleteloggerExecute(DeleteIdEdit.Text);
     DeleteMemo.Lines.Append('Delete ' + DeleteIdEdit.Text + ' sent successfully!');
     DeleteIdEdit.Text := '';
     GetBTNClick(Self);
   end;
end;

procedure TMainForm.PostBTNClick(Sender: TObject);
begin
  AutoTablesClientDM.postloggerExecute;
  GetBTNClick(Self);
end;

procedure TMainForm.GetBTNClick(Sender: TObject);
begin
  AutoTablesClientDM.getloggerExecute;
end;

procedure TMainForm.GetStringGridSelChanged(Sender: TObject);
begin
  DeleteIdEdit.Text := GetStringGrid.Cells[0,GetStringGrid.Selected];
end;

end.

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
  FireDAC.Stan.StorageJSON, FMX.Ani, System.Threading, System.Math, FMX.Edit;

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
    ListTab: TTabItem;
    DetailTab: TTabItem;
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
    MainTabControl: TTabControl;
    LoginTab: TTabItem;
    MainTab: TTabItem;
    BackgroundRectangle: TRectangle;
    LoginRect: TRectangle;
    Label1: TLabel;
    PasswordEdit: TEdit;
    UsernameEdit: TEdit;
    LoginButton: TButton;
    GuestBTN: TButton;
    Label2: TLabel;
    Image1: TImage;
    LogoutBTN: TButton;
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
    procedure LoginButtonClick(Sender: TObject);
    procedure GuestBTNClick(Sender: TObject);
    procedure LogoutBTNClick(Sender: TObject);
  private
    { Private declarations }
    CurrentItem: Integer;
    Closing: Boolean;
    RunOnce: Boolean;
    LoggedIn: Boolean;
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

procedure TMainForm.LoginButtonClick(Sender: TObject);
begin
  if LoginButton.Tag=NOT_BUSY then
    AsyncTask(LoginButton,procedure begin
      LoggedIn := AutoTablesClientDM.Login(UsernameEdit.Text,PasswordEdit.Text);
    end,
    procedure begin
      if LoggedIn=True then
        begin
          MainTabControl.ActiveTab := MainTab;
        end;
    end,
    procedure begin
      Log('Login Error');
    end);
end;

procedure TMainForm.LogoutBTNClick(Sender: TObject);
begin
  AsyncTask(LogoutBTN, procedure begin
    AutoTablesClientDM.Logout;
  end,
  procedure begin
    MainTabControl.ActiveTab := LoginTab;
  end,
  procedure begin
    Log('Logout Error');
  end);
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
          TabControl.ActiveTab := DetailTab;
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
      TabControl.ActiveTab := DetailTab;
    end
  else
    begin
      TDialogServiceAsync.ShowMessage('No table selected.');
    end;
end;

procedure TMainForm.BackBTNClick(Sender: TObject);
begin
  TabControl.ActiveTab := ListTab;
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
{#MenuList#}
  MenuMT.EnableControls;

  LinkListControlToField1.FillList;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
Application.OnIdle := ApplicationIdle;

CurrentItem := -1;
end;

procedure TMainForm.GuestBTNClick(Sender: TObject);
begin
  if LoginButton.Tag=NOT_BUSY then
    MainTabControl.ActiveTab := MainTab;
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

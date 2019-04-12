program AutoTablesClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uAutoTablesClientDM in 'uAutoTablesClientDM.pas'  {AutoTablesClientDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAutoTablesClientDM, AutoTablesClientDM);  
  Application.Run;
end.

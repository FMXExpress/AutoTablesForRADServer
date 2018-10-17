program AutoTablesEditor;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uPicker in 'uPicker.pas' {PickerForm},
  uSelector in 'uSelector.pas' {SelectorForm},
  uOpenAPI in 'uOpenAPI.pas' {OpenAPIDM: TDataModule},
  uDelphiSDK in 'uDelphiSDK.pas' {DelphiSDKFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TPickerForm, PickerForm);
  Application.CreateForm(TSelectorForm, SelectorForm);
  Application.CreateForm(TOpenAPIDM, OpenAPIDM);
  Application.Run;
end.

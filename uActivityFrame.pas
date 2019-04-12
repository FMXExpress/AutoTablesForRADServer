unit uActivityFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Ani, FMX.Objects;

type
  TActivityFrame = class(TFrame)
    BackgroundRect: TRectangle;
    ActivityCircle: TCircle;
    ActivityArc: TArc;
    ActivityFloatAni: TFloatAnimation;
    ClipCircle: TCircle;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Start;
    procedure Stop;
  end;

implementation

{$R *.fmx}

procedure TActivityFrame.Start;
begin
Self.Tag := Self.Tag+1;
Self.Visible := True;
ActivityFloatAni.Start;
end;

procedure TActivityFrame.Stop;
begin
Self.Tag := Self.Tag-1;
if Self.Tag=0 then
  begin
    ActivityFloatAni.Stop;
    Self.Visible := False;
  end;
end;

end.

unit Win.WebBrowser;

interface

(*

  Special thanks to David Esperalta, aka Dec @ http://www.clubdelphi.com/foros/member.php?u=4681

  http://www.clubdelphi.com/foros/showthread.php?p=507565

*)

uses
  System.Win.Registry;

type
{$REGION 'TInternetExplorerVersion'}
{$SCOPEDENUMS ON}
  /// <summary> Version Numbers for Windows Internet Explorer </summary>
  TInternetExplorerVersion = (
    /// <summary> Internet Explorer 11 </summary>
    IE11,
    /// <summary> Internet Explorer 10 </summary>
    IE10,
    /// <summary> Internet Explorer 9 </summary>
    IE9,
    /// <summary> Internet Explorer 8 </summary>
    IE8,
    /// <summary> Internet Explorer 7 </summary>
    IE7
  );
{$SCOPEDENUMS OFF}
{$ENDREGION}

{$REGION 'TInternetExplorerVersionHelper'}
  TInternetExplorerVersionHelper = record helper for TInternetExplorerVersion
  public
    /// <summary> Returns the Flag specified by Windows API for the given Internet Explorer Version </summary>
    function Value: Integer;
  end;
{$ENDREGION}

{$REGION 'TWinWebBrowserEmulation'}
  /// <summary> Class that tweaks the Windows Registry to enable TWebBrowser emulation support </summary>
  TWinWebBrowserEmulation = class
  strict private
    /// <summary> Creates and returns a TRegistry pointing to the FEATURE_BROWSER_EMULATION Key </summary>
    function OpenWebBrowserEmulationRegistry(out ARegistry: TRegistry): Boolean;
  strict protected
    /// <summary> Returns the full Key Path to the FEATURE_BROWSER_EMULATION </summary>
    function GetFeatureBrowserEmulationRegistryKey: string; virtual;
    /// <summary> Returns the Name of the Application Executable </summary>
    function GetExeName: string; virtual;
  public
    /// <summary> Tweaks the Windows Registry allowing TWebBrowser Support for the given Internet Explorer Version </summary>
    procedure EnableBrowserEmulation(const Version: TInternetExplorerVersion);
    /// <summary> Restores any changes done to the Windows Registry </summary>
    procedure RestoreBrowserEmulation;
  end;
{$ENDREGION}

implementation

uses
  Winapi.Windows,
  System.SysUtils;

{$REGION 'TWinWebBrowserEmulation'}

function TWinWebBrowserEmulation.GetExeName: string;
begin
  Result := ExtractFileName(ParamStr(0));
end;

function TWinWebBrowserEmulation.GetFeatureBrowserEmulationRegistryKey: string;
begin
  Result := 'Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION';
end;

function TWinWebBrowserEmulation.OpenWebBrowserEmulationRegistry(out ARegistry: TRegistry): Boolean;
begin
  Result := False;
  ARegistry := TRegistry.Create;
  try
    ARegistry.RootKey := HKEY_CURRENT_USER;
    Result := ARegistry.OpenKey(GetFeatureBrowserEmulationRegistryKey, True);
  finally
    if not Result then
      ARegistry.Free;
  end;
end;

procedure TWinWebBrowserEmulation.RestoreBrowserEmulation;
var
  Registry: TRegistry;
begin
  if not OpenWebBrowserEmulationRegistry(Registry) then
    Exit;

  try
    if Registry.ValueExists(GetExeName) then
      Registry.DeleteKey(GetExeName);
    Registry.CloseKey
  finally
    Registry.Free;
  end;
end;

procedure TWinWebBrowserEmulation.EnableBrowserEmulation(const Version: TInternetExplorerVersion);
var
  Registry: TRegistry;
begin
  if not OpenWebBrowserEmulationRegistry(Registry) then
    Exit;

  try
    if not Registry.ValueExists(GetExeName) then
      Registry.WriteInteger(GetExeName, Version.Value);
    Registry.CloseKey
  finally
    Registry.Free;
  end;
end;

{$ENDREGION}

{$REGION 'TInternetExplorerVersionHelper'}

function TInternetExplorerVersionHelper.Value: Integer;
begin
  // Values from http://msdn.microsoft.com/en-us/library/ee330730(VS.85).aspx#browser_emulation
  case Self of
    TInternetExplorerVersion.IE11: Result := 11000;
    TInternetExplorerVersion.IE10: Result := 10000;
    TInternetExplorerVersion.IE9: Result := 9000;
    TInternetExplorerVersion.IE8: Result := 8000;
    TInternetExplorerVersion.IE7: Result := 7000;
  else
    raise Exception.Create('TInternetExplorerVersionHelper.Value: Unknown value');
  end;
end;

{$ENDREGION}

end.
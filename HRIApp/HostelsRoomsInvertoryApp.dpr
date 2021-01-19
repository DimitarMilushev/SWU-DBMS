program HostelsRoomsInvertoryApp;

uses
  Vcl.Forms,
  HostelsRoomsInvertoryUnit in 'HostelsRoomsInvertoryUnit.pas' {HostelsRoomsInvertoryForm},
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  DeveloperUnit in 'DeveloperUnit.pas' {DeveloperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(THostelsRoomsInvertoryForm, HostelsRoomsInvertoryForm);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDeveloperForm, DeveloperForm);
  Application.Run;
end.

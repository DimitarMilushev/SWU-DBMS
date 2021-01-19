program AccFormsApp;

uses
  Vcl.Forms,
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  AccFormsUnit in 'AccFormsUnit.pas' {AccFormsForm},
  CDSUnit in 'CDSUnit.pas' {CDSForm},
  HostelsRoomsInvertoryUnit in 'HostelsRoomsInvertoryUnit.pas' {HostelsRoomsInvertoryForm},
  SearchPersonUnit in 'SearchPersonUnit.pas' {SearchPersonForm},
  DeveloperUnit in 'DeveloperUnit.pas' {DeveloperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TAccFormsForm, AccFormsForm);
  Application.CreateForm(TCDSForm, CDSForm);
  Application.CreateForm(THostelsRoomsInvertoryForm, HostelsRoomsInvertoryForm);
  Application.CreateForm(TSearchPersonForm, SearchPersonForm);
  Application.CreateForm(TDeveloperForm, DeveloperForm);
  Application.Run;
end.

program StudentHostelsApp;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  CDSUnit in 'CDSUnit.pas' {CDSForm},
  NomenclaturesUnit in 'NomenclaturesUnit.pas' {NomenclaturesForm},
  SearchPersonUnit in 'SearchPersonUnit.pas' {SearchPersonForm},
  PersonsUnit in 'PersonsUnit.pas' {PersonsForm},
  StudentsUnit in 'StudentsUnit.pas' {StudentsForm},
  AccFormsUnit in 'AccFormsUnit.pas' {AccFormsForm},
  HostelsRoomsInvertoryUnit in 'HostelsRoomsInvertoryUnit.pas' {HostelsRoomsInventoryForm},
  DeveloperUnit in 'DeveloperUnit.pas' {DeveloperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDeveloperForm, DeveloperForm);
  Application.Run;
end.

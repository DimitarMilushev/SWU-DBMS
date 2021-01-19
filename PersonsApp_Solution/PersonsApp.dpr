program PersonsApp;

uses
  Vcl.Forms,
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  CDSUnit in 'CDSUnit.pas' {CDSForm},
  SearchPersonUnit in 'SearchPersonUnit.pas' {SearchPersonForm},
  PersonsUnit in 'PersonsUnit.pas' {PersonsForm},
  DeveloperUnit in 'DeveloperUnit.pas' {DeveloperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TPersonsForm, PersonsForm);
  Application.Run;
end.

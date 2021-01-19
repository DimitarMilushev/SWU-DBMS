program StudentApp;

uses
  Vcl.Forms,
  StudentUnit in 'StudentUnit.pas' {StudentsForm},
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  DeveloperUnit in 'DeveloperUnit.pas' {DeveloperForm},
  CDSUnit in 'CDSUnit.pas' {CDSForm},
  PersonsUnit in 'PersonsUnit.pas' {PersonsForm},
  SearchPersonUnit in 'SearchPersonUnit.pas' {SearchPersonForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TStudentsForm, StudentsForm);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDeveloperForm, DeveloperForm);
  Application.CreateForm(TCDSForm, CDSForm);
  Application.CreateForm(TPersonsForm, PersonsForm);
  Application.CreateForm(TSearchPersonForm, SearchPersonForm);
  Application.Run;
end.

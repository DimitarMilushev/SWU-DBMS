program SearchPersonApp;

uses
  Vcl.Forms,
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  SearchPersonUnit in 'SearchPersonUnit.pas' {SearchPersonForm},
  DeveloperUnit in 'DeveloperUnit.pas' {DeveloperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TSearchPersonForm, SearchPersonForm);
  Application.Run;
end.

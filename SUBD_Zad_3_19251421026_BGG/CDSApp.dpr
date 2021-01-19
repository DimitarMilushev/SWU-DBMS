program CDSApp;

uses
  Vcl.Forms,
  CDSUnit in 'CDSUnit.pas' {CDSForm},
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  DeveloperUnit in 'DeveloperUnit.pas' {DeveloperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCDSForm, CDSForm);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDeveloperForm, DeveloperForm);
  Application.Run;
end.

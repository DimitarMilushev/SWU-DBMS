program CDSApp;

uses
  Vcl.Forms,
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  CDSUnit in 'CDSUnit.pas' {CDSForm},
  DeveloperUnit in 'DeveloperUnit.pas' {DeveloperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TCDSForm, CDSForm);
  Application.Run;
end.

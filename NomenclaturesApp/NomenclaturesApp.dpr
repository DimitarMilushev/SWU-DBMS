program NomenclaturesApp;

uses
  Vcl.Forms,
  NomenclaturesUnit in 'NomenclaturesUnit.pas' {NomenclaturesForm},
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  DeveloperUnit in 'DeveloperUnit.pas' {DeveloperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TNomenclaturesForm, NomenclaturesForm);
  Application.CreateForm(TDeveloperForm, DeveloperForm);
  Application.Run;
end.

program GlovoBolieProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  LoginUnit in 'LoginUnit.pas' {LoginForm},
  RegisterUnit in 'RegisterUnit.pas' {RegisterForm},
  RepositoryUnit in 'services\RepositoryUnit.pas',
  MapperUnit in 'services\MapperUnit.pas',
  SessionUnit in 'services\SessionUnit.pas',
  CMSUnit in 'admin\CMSUnit.pas' {CMSForm},
  UserUnit in 'data\UserUnit.pas',
  ProductUnit in 'data\ProductUnit.pas',
  ProductTypeEnumUnit in 'data\enums\ProductTypeEnumUnit.pas',
  UserCartUnit in 'UserCartUnit.pas' {CartForm},
  UserSessionUnit in 'data\UserSessionUnit.pas',
  OrderUnit in 'data\OrderUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TRegisterForm, RegisterForm);
  Application.CreateForm(TCMSForm, CMSForm);
  Application.CreateForm(TCartForm, CartForm);
  Application.Run;
end.

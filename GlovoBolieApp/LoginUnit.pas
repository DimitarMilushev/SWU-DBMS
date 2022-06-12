unit LoginUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLoginForm = class(TForm)
    ButtonLogin: TButton;
    EditEmail: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditPassword: TEdit;
    StaticText1: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure ButtonLoginClick(Sender: TObject);
    procedure OnEditBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

uses DataModuleUnit, MainUnit, RepositoryUnit, UserUnit, SessionUnit;

procedure TLoginForm.ButtonLoginClick(Sender: TObject);
var
email: String;
password: String;
begin
email := EditEmail.Text;
password := EditPassword.Text;
// Exit function if no parameteres are entered
if ((email = '') or (password = '')) then
begin
  ShowMessage('Invalid credentials!');
  Exit;
end;


try
  var repository: IRepository := Repository;
  var user: TUser := repository.UserByCredentials(email, password);
  var session: ISession := Session;
  // We set our session
  session.SetSession(user);
except
  on E : Exception do
      ShowMessage(E.Message);
end;
Close;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
if (not DM.Connection.Connected) then
Exit;

end;

// Event listener that checks if required fields are not empty
procedure TLoginForm.OnEditBoxChange(Sender: TObject);
begin
if ((EditEmail.Text <> '') and (EditPassword.Text <> '')) then
 begin
   ButtonLogin.Enabled := True;
 end
 else
 begin
   ButtonLogin.Enabled := False;
 end;
end;

end.

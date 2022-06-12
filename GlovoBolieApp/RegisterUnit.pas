unit RegisterUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TRegisterForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ButtonRegister: TButton;
    EditEmail: TEdit;
    EditPassword: TEdit;
    Label4: TLabel;
    EditConfirmPassword: TEdit;
    StaticText1: TStaticText;
    procedure OnEditBoxChange(Sender: TObject);
    procedure ButtonRegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegisterForm: TRegisterForm;

implementation

{$R *.dfm}

uses DataModuleUnit, RepositoryUnit, UserUnit;

// Checks for user in DB
function hasUserInDB(email: String): Boolean;
begin
  var query := 'SELECT * FROM [User] WHERE Email = "' + email + '"';

  with DM.QueryRegisterLookup do
    begin
      active := FALSE;
      sql.Clear;
      sql.Text := query;
      active := TRUE;
    end;
  Result := DM.QueryRegisterLookup.RecordCount > 0;
end;

procedure TRegisterForm.ButtonRegisterClick(Sender: TObject);
var
email: String;
password: String;
passwordConfirm: String;
begin
email := EditEmail.Text;
password := EditPassword.Text;
passwordConfirm := EditConfirmPassword.Text;
// Exit function if no parameteres are entered
  if ((email = '') or (password = '') or (passwordConfirm = '')) then
    begin
      ShowMessage('Invalid credentials!');
      Abort;
    end;

// Check if passwords match
  if not (password = passwordConfirm) then
    begin
      ShowMessage('Passwords don`t match!');
      Abort;
    end;

    var repo: IRepository := Repository;
    var user: TUser := TUser.Create(email, password, 1);
  try
   begin
      repo.AddUser(user);
   end;
  except
   on E : Exception do
       ShowMessage(E.Message);
  end;

  Close;
end;



// Event listener that checks if required fields are not empty
procedure TRegisterForm.OnEditBoxChange(Sender: TObject);
begin
if ((EditEmail.Text <> '') and (EditPassword.Text <> '')
  and (EditConfirmPassword.Text <> '')) then
 begin
   ButtonRegister.Enabled := True;
 end
 else
 begin
   ButtonRegister.Enabled := False;
 end;
end;

end.

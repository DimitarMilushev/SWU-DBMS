unit UserUnit;

interface

type
TUser = class(TObject)
  private
  email: String;
  password: String;
  status: Integer;
  public
  constructor Create(cEmail, cPassword: String; cStatus: Integer);
    function GetEmail: String;
    function GetPassword: String;
    function GetStatus: Integer;
end;

implementation

constructor TUser.Create(cEmail: string; cPassword: string; cStatus: Integer);
begin
  email := cEmail;
  password := cPassword;
  status := cStatus;
end;

function TUser.GetEmail: String;
begin
  Result := email;
end;

function TUser.GetPassword: String;
begin
  Result := password;
end;

function TUser.GetStatus: Integer;
begin
  Result := status;
end;
end.

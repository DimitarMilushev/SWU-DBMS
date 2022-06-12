unit RepositoryUnit;

interface

uses
  SyncObjs,
  SysUtils,
  UserUnit,
  DataModuleUnit;
// A Singleton class that communicates w/ the local DB
type
  IRepository = interface
    procedure AddUser(user: TUser);
    function UserByCredentials(email, password: String): TUser;
  end;

function Repository: IRepository;

implementation

type
  TRepository = class(TInterfacedObject, IRepository)
  private
    procedure AddUser(user: TUser);
    function UserByCredentials(email, password: String): TUser;
  end;

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

// Adds user to DB
// If user already exists, throws Exception
procedure TRepository.AddUser(user: TUser);
begin
  if (hasUserInDB(user.GetEmail())) then
    begin
      raise Exception.Create('User with email ' + user.GetEmail() + ' already exists!');
    end;

  var query := 'INSERT INTO [User] (Email, [Password], FkStatus) VALUES ("' +
   user.GetEmail() + '", "' + user.GetPassword() + '", ' +
   user.GetStatus().ToString() + ')';

    with DM.QueryRegisterUser do
    begin
      active := FALSE;
      sql.Clear;
      sql.Text := query;
    end;
end;

// Checks DB for user with the following email and password.
function TRepository.UserByCredentials(email, password: String): TUser;
begin
  if ((email = '') or (password = '')) then
begin
  raise Exception.Create('Invalid credentials!');
end;

var query := 'SELECT * FROM [User] WHERE Email = ' + '"' + email +
 '"' + ' AND Password = ' + '"' + password +'"';

  with DM do
    begin
      QueryLoginLookup.Close;
      QueryLoginLookup.SQL.Clear;
      QueryLoginLookup.SQL.Add(query);
      QueryLoginLookup.ExecSQL;
      QueryLoginLookup.GetFieldData();
    end;

    // In case no user is found
    if (DM.QueryLoginLookup.RecordCount = 0) then
    begin
      raise Exception.Create('No user with the following credentials found!');
    end;

    Result := DM.QueryLoginLookup.GetBlobFieldData()
end;

var
  Lock: TCriticalSection;
  _Repository: IRepository;

function Repository: IRepository;
begin
  Lock.Acquire;
  Try
    if not Assigned(_Repository) then
      _Repository := TRepository.Create;
    Result := _Repository;
  Finally
    Lock.Release;
  End;
end;

initialization
  Lock := TCriticalSection.Create;

finalization
  Lock.Free;

end.

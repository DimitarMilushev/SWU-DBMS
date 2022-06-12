unit RepositoryUnit;

interface

uses
  SyncObjs,
  SysUtils,
  UserUnit,
  DataModuleUnit,
  ProductUnit,
  System.Generics.Collections,
  SessionUnit;
// A Singleton class that communicates w/ the local DB
type
  IRepository = interface
    procedure AddUser(user: TUser);
    procedure AddOrder(products: TList<TProduct>);
    function UserByCredentials(email, password: String): TUser;
  end;

function Repository: IRepository;

implementation

uses MapperUnit;

type
  TRepository = class(TInterfacedObject, IRepository)
  private
    procedure AddUser(user: TUser);
    procedure AddOrder(products: TList<TProduct>);
    function UserByCredentials(email, password: String): TUser;
  end;

function hasProductInDB(name: String): Boolean;
begin
  var query := 'SELECT * FROM [Product] WHERE Name = "' + name +'"';

  with DM.QueryProductLookup do
  begin
    active := FALSE;
    sql.clear;
    sql.Text := query;
    active := TRUE;
  end;
  Result := DM.QueryProductLookup.RecordCount > 0;
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

   if (hasUserInDB(user.GetEmail)) then
   begin
     raise Exception.Create('User ' + user.GetEmail + ' already exists!');
   end;

    with DM do
    begin
      QueryRegisterUser.Close;
      QueryRegisterUser.SQL.Clear;
      QueryRegisterUser.SQL.Text := query;
      QueryRegisterUser.ExecSQL;
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

var user: TUser;
var mapperService: IMapper := Mapper;
  with DM do
    begin
      QueryLoginLookup.Close;
      QueryLoginLookup.SQL.Clear;
      QueryLoginLookup.SQL.Add(query);
      QueryLoginLookup.ExecSQL;
      QueryLoginLookup.Open;
      // Check for record
      if (QueryLoginLookup.RecordCount = 0) then
      begin
        raise Exception.Create('No user with the following credentials found!');
      end;

      try
      user := mapper.MapUserFromQuery(QueryLoginLookup);
      except
      raise Exception.Create('Error occured when trying to find user with email ' + email + '.');
      end;

    end;

    Result := user;
end;

/// Adds order to the DB
/// Searches for the user and product in the DB
/// If any is missing, throws [Exception]
/// Else it adds a new Order to the database.
procedure TRepository.AddOrder(products: TList<TProduct>);
begin
  var session: ISession := Session;
  var user := session.GetSession;
    if (user = NIL) then
  begin
    raise Exception.Create('User is null.');
  end;

// Check for user in DB
if not hasUserInDB(user.GetEmail) then
begin
  raise Exception.Create('Could not find user with email: ' + user.GetEmail);
end;

for var i  := 0 to products.Count - 1 do
begin
  // Check for product in DB
if not hasProductInDB(products[i].GetName) then
  begin
    raise Exception.Create('Could not find product with name: ' + products[i].GetName);
  end;
end;
    /// Should add both the product and user ids to Order
    var query := 'INSERT INTO [Order] (FkUser, FkProduct) VALUES ("' +
   (1).ToString + '", "' + (1).ToString + ')';
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

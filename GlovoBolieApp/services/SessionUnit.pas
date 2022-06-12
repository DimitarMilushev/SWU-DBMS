unit SessionUnit;

interface

uses
  SyncObjs,
  SysUtils,
  UserSessionUnit,
  UserUnit;
///  A Singleton class that keeps our session alive in memory.
///  Since Object Pascal doesn't support static values, this is a way to keep
///  a value in our working memory.
type
  ISession = interface
    procedure SetSession(user: TUser);
    procedure ClearSession();
    function GetSession(): TUserSession;
  end;

function Session: ISession;

implementation

type
  TSession = class(TInterfacedObject, ISession)
  private
    var session: TUserSession;
    procedure SetSession(user: TUser);
    procedure ClearSession();
    function GetSession(): TUserSession;
  end;

/// Setter method for session.
/// Sets the [user] property as the current session.
procedure TSession.SetSession(user: TUser);
begin
  var email := user.GetEmail();
  var status := user.GetStatus();
  session := TUserSession.Create(email, status);
end;
/// Getter method for session.
/// Returns current session as Object of [TUser].
function TSession.GetSession(): TUserSession;
begin
  Result := session;
end;
/// Sets current session to [NIL].
procedure TSession.ClearSession();
begin
  session := NIL;
end;

var
  Lock: TCriticalSection;
  _Session: ISession;

function Session: ISession;
begin
  Lock.Acquire;
  Try
    if not Assigned(_Session) then
      _Session := TSession.Create;
    Result := _Session;
  Finally
    Lock.Release;
  End;
end;

initialization
  Lock := TCriticalSection.Create;

finalization
  Lock.Free;

end.

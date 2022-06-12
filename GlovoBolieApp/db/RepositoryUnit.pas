unit RepositoryUnit;

interface

uses
  SyncObjs;
// A Singleton class that communicates w/ the local DB
type
  IRepository = interface
    procedure DoStuff;
  end;

function Singleton: IRepository;

implementation

type
  TRepository = class(TInterfacedObject, IRepository)
  private
    procedure DoStuff;
  end;


procedure TRepository.DoStuff;
begin
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

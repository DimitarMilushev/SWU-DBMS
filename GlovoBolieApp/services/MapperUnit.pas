unit MapperUnit;

interface

uses
  SyncObjs,
  SysUtils,
  UserUnit,
  Data.Win.ADODB;
/// Service to map DTOs
type
  IMapper = interface
    function MapUserFromQuery(data: TADOQuery): TUser;
end;

function Mapper: IMapper;

implementation

type
  TMapper = class(TInterfacedObject, IMapper)
  private
    function MapUserFromQuery(data: TADOQuery): TUser;
  end;


/// Function that takes [TADOQuery] as input and returns [TUser].
///
/// Takes the first record and maps the fields [Email], [Password], [Status]
/// to [TUser] object.
///
/// Throws [FieldNotFound] exception.
function TMapper.MapUserFromQuery(data: TADOQuery): TUser;
begin
  data.First;
  var cEmail: String := data.FieldByName('Email').AsString;
  var cPassword: String := data.FieldByName('Password').AsString;
  var cStatus: Integer := data.FieldByName('FkStatus').AsInteger;

  Result := TUser.Create(cEmail, cPassword, cStatus);
end;

var
  Lock: TCriticalSection;
  _Mapper: IMapper;

function Mapper: IMapper;
begin
  Lock.Acquire;
  Try
    if not Assigned(_Mapper) then
      _Mapper := TMapper.Create;
    Result := _Mapper;
  Finally
    Lock.Release;
  End;
end;

initialization
  Lock := TCriticalSection.Create;

finalization
  Lock.Free;

end.
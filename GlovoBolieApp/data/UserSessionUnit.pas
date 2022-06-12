unit UserSessionUnit;

interface

uses ProductUnit, System.Generics.Collections;

type
TUserSession = class(TObject)
  private
  email: String;
  status: Integer;
  var orders: TList<TProduct>;
  public
  constructor Create(cEmail: String; cStatus: Integer);
  function GetEmail(): String;
  function GetStatus(): Integer;
  function GetOrders(): TList<TProduct>;
  procedure AddOrder(order: TProduct);
  procedure RemoveOrder(order: TProduct);
end;

implementation

constructor TUserSession.Create(cEmail: String; cStatus: Integer);
begin
  email := cEmail;
  status := cStatus;
  orders := TList<TProduct>.Create;
end;

function TUserSession.GetEmail: String;
begin
  Result := email;
end;

function TUserSession.GetStatus: Integer;
begin
  Result := status;
end;

function TUserSession.GetOrders: TList<TProduct>;
begin
  // Make sure the list doesn't return NIL
  if not Assigned(orders) then
    begin
      orders := TList<TProduct>.Create;
    end;

  Result := orders;
end;

procedure TUserSession.AddOrder(order: TProduct);
begin
  if not Assigned(orders) then
  begin
    orders.Create([order]);
  end
  else
  begin
    orders.Add(order);
  end;

end;

procedure TUserSession.RemoveOrder(order: TProduct);
begin
  orders.Remove(order);
end;

end.

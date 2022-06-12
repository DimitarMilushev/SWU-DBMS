unit CartUnit;

interface

uses ProductUnit, System.Generics.Collections;

type
TCart = class(TObject)
  private
  itemsList: TList<TProduct>;
  public
  constructor Create();
  procedure AddItem(item: TProduct);
  procedure RemoveItem(item: TProduct);
  procedure Clear();
  function Length(): Integer;
end;

implementation

constructor TCart.Create();
begin
  itemsList.Create();
end;

procedure TCart.AddItem(item: TProduct);
begin
  itemsList.Add(item);
end;

procedure TCart.RemoveItem(item: TProduct);
begin
  itemsList.Remove(item);
end;

procedure TCart.Clear();
begin
  itemsList.Clear;
end;

function TCart.Length(): Integer;
begin
  Result := itemsList.Count;
end;

end.

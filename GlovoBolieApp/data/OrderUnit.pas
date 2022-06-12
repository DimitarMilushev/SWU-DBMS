unit OrderUnit;

interface

uses UserUnit, System.Generics.Collections, ProductUnit;

type
TOrder = class(TObject)
  private
  id: String;
  user: TUser;
  products: TList<TProduct>;
  total: Double;
  public
  constructor Create(cUser: TUser; cProducts: TList<TProduct>);
  function GetUser(): TUser;
  function GetProducts(): TList<TProduct>;
  function GetTotal(): Double;
end;

implementation

constructor TOrder.Create(cUser: TUser; cProducts: TList<TProduct>);
 begin
   user := cUser;
   products := cProducts;
   total := 0;
   for var i := 0 to cProducts.Count - 1 do
   begin
    total := total + cProducts[i].GetCost;
   end;
 end;

 function TOrder.GetUser: TUser;
 begin
   Result := user;
 end;

 function TOrder.GetTotal: Double;
 begin
   Result := total;
 end;

 function TOrder.GetProducts: System.Generics.Collections.TList<TProduct>;
 begin
   Result := products;
 end;
end.

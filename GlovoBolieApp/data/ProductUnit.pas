unit ProductUnit;

interface

uses ProductTypeEnumUnit;

type
TProduct = class(TObject)
  private
  name: String;
  cost: Double;
  productType: TProductType;
  public
  constructor Create(cName: String; cCost: Double; cProductType: TProductType);
  function GetName(): String;
  function GetCost(): Double;
  function GetType(): TProductType;
end;

implementation

constructor TProduct.Create( cName: String; cCost: Double;
 cProductType: TProductType);
 begin
   name := cName;
   cost := cCost;
   productType := cProductType;
 end;

 function TProduct.GetName(): String;
 begin
   Result := name;
 end;

 function TProduct.GetCost(): Double;
 begin
   Result := cost;
 end;

 function TProduct.GetType(): TProductType;
 begin
   Result := productType;
 end;
end.

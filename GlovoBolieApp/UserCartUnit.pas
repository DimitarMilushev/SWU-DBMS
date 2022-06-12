unit UserCartUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient,
  System.Generics.Collections, SessionUnit, ProductUnit, Data.Win.ADODB;

type
  TCartForm = class(TForm)
    PanelActions: TPanel;
    BitBtnCLose: TBitBtn;
    BitBtnCheckout: TBitBtn;
    StaticTextTotal: TStaticText;
    StringGridOrders: TStringGrid;
    BitBtnRemoveItem: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnRemoveItemClick(Sender: TObject);
    procedure OnCellClick(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtnCheckoutClick(Sender: TObject);
  private
    var sessionService: ISession;
    var cart: TList<TProduct>;
    var selectedRow: Integer;
    procedure GridCreate();
    procedure UpdateOrders(orders: TList<TProduct>);
  public
    { Public declarations }
  end;

var
  CartForm: TCartForm;

implementation

{$R *.dfm}

uses DataModuleUnit, RepositoryUnit;

/// Checkouts the users orders
procedure TCartForm.BitBtnCheckoutClick(Sender: TObject);
begin
 if DM.Connection.Connected = TRUE then
 begin
 var repository: IRepository := Repository;
 try
  repository.AddOrder(cart);
 except
 on E: Exception do ShowMessage('Failed to add order.');
 end;

 end;
end;

procedure TCartForm.BitBtnRemoveItemClick(Sender: TObject);
begin
  var product := cart[selectedRow];
  ShowMessage('at product' + selectedRow.ToString);
  if not Assigned(sessionService) then sessionService := Session;

  var session := sessionService.GetSession;
  ShowMessage('got session: + ' + (session = NIL).ToString());
  try
    ShowMessage('entered try catch');
   session.RemoveOrder(product);
   ShowMessage('finished try catch');
   UpdateOrders(session.GetOrders);
  except
    on E: Exception do ShowMessage('Failed to remove item ' + product.GetName);
  end;
end;

procedure TCartForm.FormCreate(Sender: TObject);
begin
  var sessionService := Session;

  var session := sessionService.GetSession;
  if not Assigned(session) or (DM.Connection.Connected = FALSE) then
  begin
    Exit;
  end;
  // initialize string grid
  GridCreate();
  UpdateOrders(session.GetOrders);
end;

procedure TCartForm.UpdateOrders(orders: TList<TProduct>);
begin
  // Grid Cleanup
  for var i := 0 to StringGridOrders.RowCount do
    begin
    StringGridOrders.Cells[0, i + 1] := String.Empty;
    StringGridOrders.Cells[1, i + 1] := String.Empty;
    StringGridOrders.Cells[2, i + 1] := String.Empty;
    end;
  // Default Row
  selectedRow := 0;
  // Initialize Checkout Button
  if orders.Count < 1 then
  begin
    BitBtnCheckout.Enabled := False;
  end;
  // Initialize Remove Item Button
  if orders.Count <> 0 then
  begin
    BitBtnRemoveItem.Enabled := True;
  end
  else
  begin
    BitBtnRemoveItem.Enabled := False;
  end;

  cart := orders;
  if (cart.Count - 1) > StringGridOrders.RowCount then
  begin
      StringGridOrders.RowCount	 := cart.Count - 1;
  end;

  var totalCost: Double := 0;
  for var i := 0 to (cart.Count - 1) do
  begin
    StringGridOrders.Cells[0, i + 1] := (i + 1).ToString;
    StringGridOrders.Cells[1, i + 1] := cart[i].GetName();
    StringGridOrders.Cells[2, i + 1] := Format('%f $', [cart[i].GetCost()]);
    // add to the total amount
    totalCost := totalCost + cart[i].GetCost;
  end;
  // update total cost
  StaticTextTotal.Caption := 'Total Amount: ' + Format('%f $', [totalCost]);
end;

procedure TCartForm.GridCreate;
begin
  StringGridOrders.Create(Self);
  StringGridOrders.ColCount := 3;
  StringGridOrders.RowCount	:= 7;
  StringGridOrders.Width := 559;
  StringGridOrders.Height := 185;
  StringGridOrders.ScrollBars := TScrollStyle.ssVertical;
  StringGridOrders.Cells[0,0] := '№';
  StringGridOrders.ColWidths[0] := 100;

  StringGridOrders.Cells[1,0] := 'Name';
  StringGridOrders.ColWidths[1] := 200;

  StringGridOrders.Cells[2,0] := 'Price';
  StringGridOrders.ColWidths[2] := 250;
end;


procedure TCartForm.OnCellClick(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
    if (Assigned(cart)) and (cart.Count >= ARow) then
  begin
    selectedRow := ARow - 1;
  end;
end;

end.

unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCGrids,
  Data.DB, Data.Win.ADODB, Vcl.DBCtrls, Vcl.Buttons, ProductUnit,
  ProductTypeEnumUnit, System.Generics.Collections, SessionUnit;

type
  TMainForm = class(TForm)
    ButtonLogin: TButton;
    ButtonRegister: TButton;
    LoginLabel: TStaticText;
    PanelLoggedIn: TPanel;
    ProductsGrid: TDBCtrlGrid;
    ProductsDataSource: TDataSource;
    ProductsDataSet: TADODataSet;
    ButtonCMS: TButton;
    ActionPanel: TPanel;
    ButtonsPanel: TPanel;
    DBProductImage: TDBImage;
    DBProductName: TDBText;
    DBProductCost: TDBText;
    ProductsDataSetID: TAutoIncField;
    ProductsDataSetName: TWideStringField;
    ProductsDataSetImage: TBlobField;
    ProductsDataSetCost: TBCDField;
    ProductsDataSetFkProductType: TWideStringField;
    RadioGroupFoodTypes: TRadioGroup;
    ProductTypesDataSet: TADODataSet;
    ProductTypesDataSetID: TAutoIncField;
    ProductTypesDataSetName: TWideStringField;
    ButtonCart: TButton;
    BitBtnAdd: TBitBtn;
    ButtonLogout: TButton;
    StaticTextLoggedInAs: TStaticText;
    StaticTextUserEmail: TStaticText;
    procedure ButtonLoginClick(Sender: TObject);
    procedure ButtonRegisterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonCMSClick(Sender: TObject);
    procedure UpdateFilter(Sender: TObject);
    procedure ButtonLogoutClick(Sender: TObject);
    procedure BitBtnAddClick(Sender: TObject);
    procedure OnCartClick(Sender: TObject);

  private
    procedure UpdateLoginElements(status: Boolean);
    procedure UpdateLoggedInElements(status: Boolean);
    procedure InitFilterList();
    function IsCurrentUserAdmin(): Boolean;
    var sessionService: ISession;
  public
    procedure UpdateView(Sender: TObject);
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses DataModuleUnit, LoginUnit, RegisterUnit, RepositoryUnit, UserUnit, CMSUnit,
 UserCartUnit;

procedure TMainForm.ButtonRegisterClick(Sender: TObject);
begin
  TRegisterForm.Create(Self).ShowModal();
  Close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  sessionService := Session;
  UpdateView(Sender);
end;


/// Paints the view of the MainForm.
/// If the user is logged in we paint logged in elements.
/// Else we paint login elements.
procedure TMainForm.UpdateView(Sender: TObject);
begin
  var session := sessionService.GetSession();
  if not (session = Nil) then
  begin
      UpdateLoggedInElements(TRUE);
      UpdateLoginElements(FALSE);
  end
  else
  begin
      UpdateLoggedInElements(FALSE);
      UpdateLoginElements(TRUE);
  end;

end;
/// Adds item to cart
procedure TMainForm.BitBtnAddClick(Sender: TObject);
var productName: String;
var productCost: Double;
var productType: TProductType;
begin
  productName :=  ProductsDataSetName.AsString;
  productCost := ProductsDataSetCost.AsFloat;
  try
   productType := TProductType(ProductsDataSetFkProductType.AsInteger);
  except
  on E : Exception do
    begin
      ShowMessage('Failed to load product data.');
      Exit;
    end;
  end;

  productType := TProductType(ProductsDataSetFkProductType.AsInteger);
  var product: TProduct := TProduct.Create(productName, productCost, productType);
  var session := sessionService.GetSession;
  if not (session = NIL)  then
  begin
  session.AddOrder(product);
  end;
    ShowMessage(session.GetOrders.Last.GetName + ', ' + session.GetOrders.Last.GetCost.ToString);
end;

procedure TMainForm.ButtonCMSClick(Sender: TObject);
begin
TCMSForm.Create(Self).ShowModal();
end;

procedure TMainForm.ButtonLoginClick(Sender: TObject);
begin
  with TLoginForm.Create(Self) do
  try
    ShowModal();
  finally
    Free;
  end;
  UpdateView(Sender);
end;

procedure TMainForm.ButtonLogoutClick(Sender: TObject);
begin
  Session.ClearSession();
  UpdateView(Sender);
end;

/// This function updates visible state of all login elements with [visible] value
procedure TMainForm.UpdateLoginElements(status: Boolean);
begin
   LoginLabel.Visible := status;
   ButtonLogin.Visible := status;
   ButtonRegister.Visible := status;
end;

/// Updates products list
/// Checks if any of the filters is selected
/// If so, filters out products by type
/// Else displays all;
procedure TMainForm.UpdateFilter(Sender: TObject);
begin
  var categoryIndex: Integer := RadioGroupFoodTypes.ItemIndex;

  var filter: String := String.Empty;
  var filtered: Boolean := (categoryIndex <> 0);
  if (filtered) then
  begin
      filter := 'FkProductType = ' + categoryIndex.ToString;
  end;

  ProductsDataSet.Filter := filter;
  ProductsDataSet.Filtered := filtered;
  ProductsDataSet.EnableControls;
end;

/// This function updates visible state of all login elements with [visible] value
procedure TMainForm.UpdateLoggedInElements(status: Boolean);
begin
   if status = TRUE then
   begin
     var user := session.GetSession;
     StaticTextUserEmail.Caption := user.GetEmail;
     if (IsCurrentUserAdmin() = TRUE) then
     begin
       ButtonCMS.Visible := status;
     end;
   end;

   PanelLoggedIn.Visible  := status;
   DBProductImage.Visible	:= status;
   DBProductName.Visible := status;
   DBProductCost.Visible := status;
   ProductsGrid.Visible := status;
   // DataSources
   ProductsDataSet.Active := status;
   ProductsDataSource.Enabled := status;
   ProductTypesDataSet.Active := status;
   // Filters
   if status = TRUE then
   begin
   InitFilterList();
   end;

end;

/// Initialize filtering radio buttons.
procedure TMainForm.InitFilterList();
begin
 RadioGroupFoodTypes.Items.Clear;
   RadioGroupFoodTypes.Items.Add('All');
   RadioGroupFoodTypes.ItemIndex := 0;
   // Update food types list w/ the ones available in the DB.
   if (ProductTypesDataSet.Active = TRUE) then
   begin
     while not ProductTypesDataSet.Eof do
      begin
        RadioGroupFoodTypes.Items.Add(ProductTypesDataSetName.AsString);
        ProductTypesDataSet.Next;
      end;
   end;
end;

function TMainForm.IsCurrentUserAdmin(): Boolean;
begin
  var session := sessionService.GetSession();
  if (session = NIL) then
  begin
    Result := FALSE;
    Exit;
  end;

  Result := session.GetStatus > 1;
end;
procedure TMainForm.OnCartClick(Sender: TObject);
begin
  TCartForm.Create(Self).ShowModal;
end;

end.

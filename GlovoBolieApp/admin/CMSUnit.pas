unit CMSUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.Buttons, Vcl.ExtDlgs,
  Vcl.ComCtrls, Vcl.StdCtrls;

type
  TCMSForm = class(TForm)
    ProductsDataSet: TADODataSet;
    ProductsDataSource: TDataSource;
    ProductsDataSetID: TAutoIncField;
    ProductsDataSetName: TWideStringField;
    ProductsDataSetCost: TBCDField;
    ProductsDataSetFkProductType: TWideStringField;
    DBNavigator1: TDBNavigator;
    ProductsDataSetImage: TBlobField;
    OpenPictureDialog: TOpenPictureDialog;
    CMSPageControl: TPageControl;
    DBGridProducts: TDBGrid;
    TabSheet1: TTabSheet;
    DBImageProduct: TDBImage;
    SpeedButtonSelectImage: TSpeedButton;
    DBNavigatorProducts: TDBNavigator;
    TabSheet2: TTabSheet;
    DBNavigatorProductTypes: TDBNavigator;
    DBGridProductTypes: TDBGrid;
    ProductTypesDataSet: TADODataSet;
    ProductTypesDataSource: TDataSource;
    BitBtnClose: TBitBtn;
    procedure SpeedButtonSelectImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CMSForm: TCMSForm;

implementation

{$R *.dfm}

uses DataModuleUnit;



procedure TCMSForm.SpeedButtonSelectImageClick(Sender: TObject);
begin

  if (OpenPictureDialog.Execute()) then
  begin
	  if ((ProductsDataSet.State <> dsInsert) or
		  (ProductsDataSet.State <> dsEdit)) then
    begin
      ProductsDataSet.Edit();
    end;
  	DBImageProduct.Picture.LoadFromFile(OpenPictureDialog.FileName);
	  OpenPictureDialog.InitialDir :=
	    ExtractFilePath(OpenPictureDialog.FileName);
  end;
end;

end.

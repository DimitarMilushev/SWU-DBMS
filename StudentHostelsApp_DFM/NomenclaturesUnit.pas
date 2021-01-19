unit NomenclaturesUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TNomenclaturesForm = class(TForm)
    Splitter: TSplitter;
    PanelLeft: TPanel;
    LabelNomenclatures: TLabel;
    ListBoxNomenclatures: TListBox;
    PanelRight: TPanel;
    DBGrid: TDBGrid;
    DBNavigator: TDBNavigator;
    DataSet: TADODataSet;
    DataSource: TDataSource;
    Panel1: TPanel;
    BitBtnCancel: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ListBoxNomenclaturesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NomenclaturesForm: TNomenclaturesForm;

implementation

{$R *.dfm}

procedure TNomenclaturesForm.FormCreate(Sender: TObject);
begin
//  ListBoxNomenclatures.ItemIndex := 0;
//  DataSet.Open();
end;

procedure TNomenclaturesForm.ListBoxNomenclaturesClick(Sender: TObject);
begin
  case ListBoxNomenclatures.ItemIndex of
   0 : begin
         //FeeTypes
         DataSet.Close();
         DataSet.CommandText := 'FeeTypes';
         DBGrid.Columns.Items[0].FieldName := 'FTName';
         DataSet.Open();
       end;

   1 : begin
         //Warrants
         DataSet.Close();
         DataSet.CommandText := 'Warrants';
         DBGrid.Columns.Items[0].FieldName := 'WName';
         DataSet.Open();
       end;
  end;
end;

end.

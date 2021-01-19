unit NomenclaturesUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.Win.ADODB;

type
  TNomenclaturesForm = class(TForm)
    DataSet: TADODataSet;
    DataSource: TDataSource;
    PanelLeft: TPanel;
    LabelNomenclatures: TLabel;
    ListBoxNomenclatures: TListBox;
    Splitter: TSplitter;
    PanelRight: TPanel;
    DBGrid: TDBGrid;
    DBNavigator: TDBNavigator;
    PanelBottom: TPanel;
    BitBtnDeveloper: TBitBtn;
    BitBtnClose: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ListBoxNomenclaturesClick(Sender: TObject);
    procedure BitBtnDeveloperClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NomenclaturesForm: TNomenclaturesForm;

implementation

{$R *.dfm}
uses DeveloperUnit, DataModuleUnit;

procedure TNomenclaturesForm.BitBtnDeveloperClick(Sender: TObject);
begin
  var f: TDeveloperForm := TDeveloperForm.Create(self);
  f.ShowModal();
  f.Free();
end;

procedure TNomenclaturesForm.FormCreate(Sender: TObject);
begin
  ListBoxNomenclatures.ItemIndex := 0;
  DataSet.Open();
end;

procedure TNomenclaturesForm.ListBoxNomenclaturesClick(Sender: TObject);
begin
  case ListBoxNomenclatures.ItemIndex of
    0:begin
        //FeeTypes
        DataSet.Close();
        DataSet.CommandText := 'FeeTypes';
        DBGrid.Columns.Items[0].FieldName := 'FTName';
        DataSet.Open();
      end;

    1:begin
        //Warrants
        DataSet.Close();
        DataSet.CommandText := 'Warrants';
        DBGrid.Columns.Items[0].FieldName := 'WName';
        DataSet.Open();
      end;
  end;
end;



end.

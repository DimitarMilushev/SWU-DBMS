unit SearchPersonUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList, Data.Win.ADODB,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TSearchPersonForm = class(TForm)
    Bevel5: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    LabelSearch: TLabel;
    LabelOrderBy: TLabel;
    DBGrid: TDBGrid;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    ComboBoxFields: TComboBox;
    EditSearchValue: TEdit;
    BitBtnSearch: TBitBtn;
    ComboBoxFieldsBG: TComboBox;
    ComboBoxOptions: TComboBox;
    ComboBoxOrderBG: TComboBox;
    ComboBoxOrder: TComboBox;
    ComboBoxOrderType: TComboBoxEx;
    DataSetPersons: TADODataSet;
    DataSetPersonsPkPerson: TAutoIncField;
    DataSetPersonsTypeIDNumber: TWideStringField;
    DataSetPersonsIDNumber: TWideStringField;
    DataSetPersonsFirstName: TWideStringField;
    DataSetPersonsMiddleName: TWideStringField;
    DataSetPersonsLastName: TWideStringField;
    DataSetPersonsICNumber: TWideStringField;
    DataSourcePersons: TDataSource;
    ImageList: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure DataSetPersonsAfterScroll(DataSet: TDataSet);
    procedure EditSearchValueChange(Sender: TObject);
    procedure BitBtnSearchClick(Sender: TObject);
    procedure EditSearchValueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboBoxFieldsBGChange(Sender: TObject);
    procedure ComboBoxOrderBGChange(Sender: TObject);
    procedure ComboBoxOrderTypeChange(Sender: TObject);
    procedure ComboBoxOptionsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchPersonForm: TSearchPersonForm;

implementation

{$R *.dfm}

procedure TSearchPersonForm.FormCreate(Sender: TObject);
begin
  ComboBoxOrderType.ItemIndex := 0; //без сортиране
  ComboBoxOptions.ItemIndex := 0; //всичко
end;

procedure TSearchPersonForm.DataSetPersonsAfterScroll(DataSet: TDataSet);
begin
  BitBtnOk.Enabled := (DataSetPersonsPkPerson.AsInteger > 0);
end;

procedure TSearchPersonForm.EditSearchValueChange(Sender: TObject);
begin
  if (DataSetPersons.Active) then DataSetPersons.Close();
  BitBtnSearch.Enabled := (EditSearchValue.Text <> '');
end;

procedure TSearchPersonForm.BitBtnSearchClick(Sender: TObject);
begin
  DataSetPersons.Close();
  var cmd: String := '';
  cmd := cmd + ' select PkPerson, TypeIDNumber, IDNumber, FirstName,';
  cmd := cmd + ' MiddleName, LastName, ICNumber, MaritalStatus';
  cmd := cmd + ' from Persons';

  if (ComboBoxOptions.ItemIndex > 0) then //т.е. 1 или 2
  begin
    cmd := cmd + ' where ' + ComboBoxFields.Text;
  end;

  case ComboBoxOptions.ItemIndex of //0 - всичко; 1 - започва с; 2 - съдържа
	  0: begin end; // none;
	  1: cmd := cmd + ' like ''' + EditSearchValue.Text + '%''';
	  2: cmd := cmd + ' like ''%' + EditSearchValue.Text + '%''';
  end;

  if (ComboBoxOrderType.ItemIndex > 0) then //т.е. 1 или 2
  begin
    cmd := cmd + ' order by ' + ComboBoxOrder.Text;
  end;

  case ComboBoxOrderType.ItemIndex of
	  0 : begin end; // none
	  1 : cmd := cmd + ' asc';
	  2 : cmd := cmd + ' desc';
  end;

  DataSetPersons.CommandText := cmd;
  DataSetPersons.Open();
end;

procedure TSearchPersonForm.EditSearchValueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ((Key = 13) and (EditSearchValue.Text <> '')) then
  begin
	  BitBtnSearchClick(Sender);
  end
end;

procedure TSearchPersonForm.ComboBoxFieldsBGChange(Sender: TObject);
begin
  ComboBoxFields.ItemIndex := ComboBoxFieldsBG.ItemIndex;
  if (DataSetPersons.Active) then BitBtnSearchClick(Sender);
end;

procedure TSearchPersonForm.ComboBoxOrderBGChange(Sender: TObject);
begin
  ComboBoxOrder.ItemIndex := ComboBoxOrderBG.ItemIndex;
  if (DataSetPersons.Active) then BitBtnSearchClick(Sender);
end;

procedure TSearchPersonForm.ComboBoxOrderTypeChange(Sender: TObject);
begin
  if (DataSetPersons.Active) then BitBtnSearchClick(Sender);
end;

procedure TSearchPersonForm.ComboBoxOptionsChange(Sender: TObject);
begin
  if (ComboBoxOptions.ItemIndex = 0) then
  begin
    EditSearchValue.Enabled := False;
    if EditSearchValue.Text <> '' then EditSearchValue.Text := '';
    if not BitBtnSearch.Enabled then BitBtnSearch.Enabled := True;
  end
  else
  begin
    if not EditSearchValue.Enabled then EditSearchValue.Enabled := True;
  end;
  if (DataSetPersons.Active) then BitBtnSearchClick(Sender);
end;

end.

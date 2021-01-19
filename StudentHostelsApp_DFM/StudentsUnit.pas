unit StudentsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TStudentsForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    DBGridFaculties: TDBGrid;
    DBNavigator: TDBNavigator;
    DBGridPrograms: TDBGrid;
    DBGridStudents: TDBGrid;
    BitBtnAddStudent: TBitBtn;
    BitBtnRemoveStudent: TBitBtn;
    BitBtnClose: TBitBtn;
    DataSetFaculties: TADODataSet;
    DataSetFacultiesPkFaculty: TAutoIncField;
    DataSetFacultiesFName: TWideStringField;
    DataSetFacultiesAbbreviation: TWideStringField;
    DataSourceFaculties: TDataSource;
    DataSetPrograms: TADODataSet;
    DataSetProgramsPkProgram: TAutoIncField;
    DataSetProgramsFkFaculty: TIntegerField;
    DataSetProgramsPName: TWideStringField;
    DataSetProgramsEQD: TWideStringField;
    DataSetProgramsEducationForm: TWideStringField;
    DataSetProgramsStudyPeriod: TWordField;
    DataSourcePrograms: TDataSource;
    DataSetStudents: TADODataSet;
    DataSetStudentsPkStudent: TAutoIncField;
    DataSetStudentsFkPerson: TIntegerField;
    DataSetStudentsFacultyNumber: TWideStringField;
    DataSetStudentsPersonName: TWideStringField;
    DataSetStudentsTypeIDNumber: TWideStringField;
    DataSetStudentsIDNumber: TWideStringField;
    DataSetStudentsAcademicYearStart: TIntegerField;
    DataSetStudentsAcademicYearEnd: TIntegerField;
    DataSetStudentsSStatus: TWideStringField;
    DataSetStudentsFkProgram: TIntegerField;
    DataSourceStudents: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure DBGridFacultiesEnter(Sender: TObject);
    procedure DBGridProgramsEnter(Sender: TObject);
    procedure DBGridStudentsEnter(Sender: TObject);
    procedure BitBtnAddStudentClick(Sender: TObject);
    procedure DataSetStudentsBeforeDelete(DataSet: TDataSet);
    procedure BitBtnRemoveStudentClick(Sender: TObject);
    procedure DataSetStudentsAfterScroll(DataSet: TDataSet);
    procedure DataSetStudentsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudentsForm: TStudentsForm;

implementation

{$R *.dfm}

uses DataModuleUnit, PersonsUnit;

procedure TStudentsForm.FormCreate(Sender: TObject);
begin
  DataSetFaculties.Open();
  DataSetPrograms.Open();
  DataSetStudents.Open();
end;

procedure TStudentsForm.DBGridFacultiesEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridFaculties.DataSource) then
  begin
    DBNavigator.DataSource := DBGridFaculties.DataSource;
  end;
end;

procedure TStudentsForm.DBGridProgramsEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridPrograms.DataSource) then
  begin
    DBNavigator.DataSource := DBGridPrograms.DataSource;
  end;
end;

procedure TStudentsForm.DBGridStudentsEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridStudents.DataSource) then
  begin
    DBNavigator.DataSource := DBGridStudents.DataSource;
  end;
end;

procedure TStudentsForm.BitBtnAddStudentClick(Sender: TObject);
begin
  var f: TPersonsForm := TPersonsForm.Create(Self);
  if (f.ShowModal() = mrOk) then
  begin
	  DBGridStudentsEnter(Sender);
	  if (DataSetStudents.Locate(
		   'FkPerson', f.DataSetPersonsPkPerson.AsInteger, [])) then
	  begin
	    ShowMessage('Студентът вече е записан в тази специалност.');
	  end
	  else
	  begin
	    var Y, M, D: Word;
	    DecodeDate(Date(), Y, M, D);
	    DataSetStudents.First();
	    DataSetStudents.Insert();
	    DataSetStudentsFkPerson.AsInteger :=
		    f.DataSetPersonsPkPerson.AsInteger;
	    DataSetStudentsAcademicYearStart.AsInteger := Y;
	    DataSetStudentsAcademicYearEnd.AsInteger := Y + 1;
	    DataSetStudentsSStatus.AsString := 'Действащ';
	    DataSetStudents.Post();
	    DataSetStudents.Close();
	    DataSetStudents.Open();
	  end;
  end;
  f.Free();
end;

procedure TStudentsForm.DataSetStudentsBeforeDelete(DataSet: TDataSet);
begin
  ShowMessage(
    'За да отпишете студент, използвайте бутона [Отпиши студент].');
  Abort();
end;

procedure TStudentsForm.BitBtnRemoveStudentClick(Sender: TObject);
begin
  var S: String :=
	  'Сигурнили сте, че искате да отпишете студента: ' +
	  DataSetStudentsFacultyNumber.AsString + ' - ' +
	  DataSetStudentsPersonName.AsString + '?';
  if (MessageDlg(S, mtConfirmation, mbYesNo, 0) = mrYes) then
  begin
    S := 'delete from Students where PkStudent = ' +
      DataSetStudentsPkStudent.AsString;
    DM.Connection.Execute(S);
    DataSetStudents.Close();
    DataSetStudents.Open();
  end;
end;

procedure TStudentsForm.DataSetStudentsAfterScroll(DataSet: TDataSet);
begin
  BitBtnRemoveStudent.Enabled := (DataSetStudents.RecordCount > 0);
end;

procedure TStudentsForm.DataSetStudentsAfterOpen(DataSet: TDataSet);
begin
  BitBtnRemoveStudent.Enabled := (DataSetStudents.RecordCount > 0);
end;

end.

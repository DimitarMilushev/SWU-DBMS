unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    LabelStartFirstName: TLabel;
    LabelEndFirstName: TLabel;
    LabelStartMiddleName: TLabel;
    LabelEndMiddleName: TLabel;
    LabelStartLastName: TLabel;
    LabelEndLastName: TLabel;
    LabelStartProgram: TLabel;
    LabelEndProgram: TLabel;
    LabelStartDateBorn: TLabel;
    LabelEndDateBorn: TLabel;
    LabelStartFaculty: TLabel;
    LabelEndFaculty: TLabel;
    LabelStartFacultyNumber: TLabel;
    LabelEndFacultyNumber: TLabel;
    LabelStartStudyYear: TLabel;
    LabelEndStudyYear: TLabel;
    BevelButtonSection1: TBevel;
    BevelButtonSection2: TBevel;
    BevelHorizontal: TBevel;
    BevelButtonSection3: TBevel;
    BevelButtonSection4: TBevel;
    BevelVertical: TBevel;
    LabelVersion: TLabel;
    LabelEncoding: TLabel;
    LabelStandalone: TLabel;
    LabelDeveloperInfo: TLabel;
    BevelButtonSection5: TBevel;
    LabelStartStudentID: TLabel;
    LabelEndStudentID: TLabel;
    ButtonInsertStudent: TButton;
    EditFirstName: TEdit;
    EditMiddleName: TEdit;
    EditLastName: TEdit;
    ButtonUpdateStudent: TButton;
    ButtonAppendStudent: TButton;
    EditProgram: TEdit;
    EditDateBorn: TEdit;
    EditFaculty: TEdit;
    EditFacultyNumber: TEdit;
    EditStudyYear: TEdit;
    ListBoxStudents: TListBox;
    ButtonLocateStudent: TButton;
    ButtonDeleteStudent: TButton;
    ButtonSortStudentList: TButton;
    ButtonMoveUp: TButton;
    ButtonMoveDown: TButton;
    ComboBoxVersion: TComboBox;
    ComboBoxEncoding: TComboBox;
    ComboBoxStandalone: TComboBox;
    ButtonSaveDataToFile: TButton;
    ButtonLoadDataFromFile: TButton;
    EditStudentID: TEdit;
    ButtonClear: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonLoadDataFromFileClick(Sender: TObject);
    procedure ButtonInsertStudentClick(Sender: TObject);
    procedure ButtonAppendStudentClick(Sender: TObject);
    procedure EditStudyYearKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButtonLocateStudentClick(Sender: TObject);
    procedure ButtonSaveDataToFileClick(Sender: TObject);
    procedure ListBoxStudentsClick(Sender: TObject);
    procedure ListBoxStudentsDblClick(Sender: TObject);
    procedure ButtonUpdateStudentClick(Sender: TObject);
    procedure ButtonDeleteStudentClick(Sender: TObject);
    procedure ButtonMoveDownClick(Sender: TObject);
    procedure ButtonMoveUpClick(Sender: TObject);
    procedure ButtonSortStudentListClick(Sender: TObject);
  private
    { Private declarations }
	  CurrentStudentIndex: Integer;
	  StudentCount: Integer;
	  function IsStudentControlsEmpty(): Boolean;
    function ParseAttributeValue(AttributeString: String): String;
	  function GetMaxIdStudent(): Integer;
	  function LocateStudent(IdStudent: String): Integer;
	  function ParseElementText(ElementString: String): String;
    //function GetStudentAttribute(StudentIndex: Integer): String;
	  function GetStudentAttributeId(StudentIndex: Integer): String;
    function GetStudentFirstName(StudentIndex: Integer): String;
    function GetStudentMiddleName(StudentIndex: Integer): String;
    function GetStudentLastName(StudentIndex: Integer): String;
    function GetStudentDateBorn(StudentIndex: Integer): String;
    function GetStudentFaculty(StudentIndex: Integer): String;
    function GetStudentProgram(StudentIndex: Integer): String;
    function GetStudentFacultyNumber(StudentIndex: Integer): String;
    function GetStudentStudyYear(StudentIndex: Integer): String;
	  function SwapStudentNodes(I, J: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  CurrentStudentIndex := 0;
  StudentCount := 0;
end;

function TMainForm.IsStudentControlsEmpty: Boolean;
begin
  Result :=
    (EditFirstName.Text = '') and
    (EditMiddleName.Text = '') and
    (EditLastName.Text = '') and
    (EditDateBorn.Text = '') and
    (EditFaculty.Text = '') and
    (EditProgram.Text = '') and
    (EditFacultyNumber.Text = '') and
    (EditStudyYear.Text = '');

end;

procedure TMainForm.ButtonClearClick(Sender: TObject);
begin
  if(IsStudentControlsEmpty() = True) then
  begin
    ShowMessage('There isn''t any data.');
  end
  else
  begin
    EditStudentId.Text := '';
    EditFirstName.Text := '';
    EditMiddleName.Text := '';
    EditLastName.Text := '';
    EditDateBorn.Text := '';
    EditFaculty.Text := '';
    EditProgram.Text := '';
    EditFacultyNumber.Text := '';
    EditStudyYear.Text := '';
  end;
end;

procedure TMainForm.ButtonLoadDataFromFileClick(Sender: TObject);
begin
  // 4
  var FileName: String :=
  ExtractFilePath(Application.ExeName) + 'students.xml';

  if(not FileExists(FileName)) then
  begin
    ShowMessage('The file: [' + FileName + '] does not exist!');
    Exit;
  end
  else
  begin
    ListBoxStudents.Items.LoadFromFile(FileName);
  end;

  var Prolog: String := ListBoxStudents.Items.Strings[0];
  ListBoxStudents.Items.Delete(0);

  var Version, Encoding, Standalone: String;
  var AttributeIndex: Integer := 0;
  var Add: Boolean := False;

  for var i: Integer := 1 to Length(Prolog) do
    begin
      if(Prolog[i] = '"') then
        begin
          Add := not Add;
          if(Add = True) then AttributeIndex := AttributeIndex + 1;
        end;

        if((Add = True) and (Prolog[i] <> '"')) then
        begin
          if(AttributeIndex = 1) then Version := Version + Prolog[i];
          if(AttributeIndex = 2) then Encoding := Encoding + Prolog[i];
          if(AttributeIndex = 3) then Standalone := Standalone + Prolog[i];
        end;
    end;

    Version := '"' + Version + '"';
    Encoding := '"' + Encoding + '"';
    Standalone := '"' + Standalone + '"';

    ComboBoxVersion.ItemIndex := ComboBoxVersion.Items.IndexOf(Version);
    ComboBoxEncoding.ItemIndex := ComboBoxEncoding.Items.IndexOf(Encoding);
    ComboBoxStandalone.ItemIndex := ComboBoxStandalone.Items.IndexOf(Standalone);

    Self.Caption := 'XML Students Organizer - students.xml';

    ListBoxStudents.ItemIndex := 0;
    CurrentStudentIndex := 0;
    StudentCount := (ListBoxStudents.Count - 2) div 10;
end;

function TMainForm.ParseAttributeValue(AttributeString: String): String;
begin
    var Res: String := '';
    var Add: Boolean := False;
    for var i: Integer := 1 to Length(AttributeString) do
      begin
        if(AttributeString[i] = '"') then Add := not Add;
        if((Add = True) and (AttributeString[i] <> '"')) then
        begin
          Res := Res + AttributeString[i];
        end;
      end;
     Result := Res;
end;

function TMainForm.GetMaxIdStudent: Integer;
begin
 if(StudentCount < 1) then
 begin
   Result := 0;
   Exit;
 end;

 var CurrentId: Integer := 0;
 var MaxId: Integer := 0;

 for var I: Integer := 1 to StudentCount do
 begin
   var stud: Integer := (I-1) * 10 + 1;
    CurrentId := StrToInt(ParseAttributeValue(ListBoxStudents.Items.Strings[stud]));

    if(CurrentId > MaxId) then
      MaxId := CurrentId;
 end;
  Result := MaxId;
end;

procedure TMainForm.ButtonInsertStudentClick(Sender: TObject);

begin
  If(IsStudentControlsEmpty() = True) then
  begin
    ShowMessage('There isn''t any data.');
    Exit;
  end;

  ListBoxStudents.TopIndex := 0;
  var idStudent: Integer := GetMaxIdStudent() + 1;

  ListBoxStudents.Items.Insert(1, '  ' + LabelStartStudentID.Caption + IntToStr(idStudent) + LabelEndStudentID.Caption);
  ListBoxStudents.Items.Insert(2, '    ' + LabelStartFirstName.Caption +EditFirstName.Text + LabelEndFirstName.Caption);
  ListBoxStudents.Items.Insert(3, '    ' + LabelStartMiddleName.Caption +EditMiddleName.Text + LabelEndMiddleName.Caption);
  ListBoxStudents.Items.Insert(4, '    ' + LabelStartLastName.Caption + EditLastName.Text + LabelEndLastName.Caption);
  ListBoxStudents.Items.Insert(5, '    ' + LabelStartDateBorn.Caption + EditDateBorn.Text + LabelEndDateBorn.Caption);
  ListBoxStudents.Items.Insert(6, '    ' + LabelStartFaculty.Caption + EditFaculty.Text + LabelEndFaculty.Caption);
  ListBoxStudents.Items.Insert(7, '    ' + LabelStartProgram.Caption + EditProgram.Text + LabelEndProgram.Caption);
  ListBoxStudents.Items.Insert(8, '    ' + LabelStartFacultyNumber.Caption +EditFacultyNumber.Text + LabelEndFacultyNumber.Caption);
  ListBoxStudents.Items.Insert(9, '    ' + LabelStartStudyYear.Caption +EditStudyYear.Text + LabelEndStudyYear.Caption);ListBoxStudents.Items.Insert(10,'  </student>');

  StudentCount := StudentCount + 1;

  ButtonClearClick(Self);
end;

procedure TMainForm.ButtonAppendStudentClick(Sender: TObject);
begin
  If(IsStudentControlsEmpty() = True) then
  begin
    ShowMessage('There isn''t any data.');
    Exit;
  end;

  var idStudent: Integer := GetMaxIdStudent() + 1;

  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '  ' + LabelStartStudentID.Caption + IntToStr(idStudent) + LabelEndStudentID.Caption);
  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '    ' +LabelStartFirstName.Caption + EditFirstName.Text + LabelEndFirstName.Caption);
  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '    ' +LabelStartMiddleName.Caption + EditMiddleName.Text + LabelEndMiddleName.Caption);
  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '    ' +LabelStartLastName.Caption + EditLastName.Text + LabelEndLastName.Caption);
  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '    ' +LabelStartDateBorn.Caption + EditDateBorn.Text + LabelEndDateBorn.Caption);
  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '    ' + LabelStartFaculty.Caption + EditFaculty.Text + LabelEndFaculty.Caption);
  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '    ' + LabelStartProgram.Caption + EditProgram.Text + LabelEndProgram.Caption);
  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '    ' +LabelStartFacultyNumber.Caption + EditFacultyNumber.Text +LabelEndFacultyNumber.Caption);
  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '    ' +LabelStartStudyYear.Caption + EditStudyYear.Text + LabelEndStudyYear.Caption);
  ListBoxStudents.Items.Insert(ListBoxStudents.Count - 2, '  </student>');

  StudentCount := StudentCount + 1;

  ListBoxStudents.TopIndex := ListBoxStudents.Count-1;

  ButtonClearClick(Self);
end;

procedure TMainForm.EditStudyYearKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If(Key = 13) then
  begin
    ButtonInsertStudentClick(Self);
    EditFirstName.SetFocus();
  end;
end;

function TMainForm.LocateStudent(IdStudent: String): Integer;
begin
  // 10
   if (StudentCount < 1) then
  begin
    Result := 0;
    Exit;
  end;
  var Res: Integer := 0;
  for var I: Integer := 1 to StudentCount do
    begin
      var ii: Integer := (I-1)*10+1;
      if (ParseAttributeValue(ListBoxStudents.Items.Strings[ii]) = IdStudent) then
      begin
        Res := I;
        Break;
      end;
    end;
    Result := Res;
end;

procedure TMainForm.ButtonLocateStudentClick(Sender: TObject);
begin
  if(StudentCount = 0) then
  begin
    ShowMessage('The list is empty');
    Exit;
  end;
  var id: String := InputBox('Find Student', 'id = ', '');
  if(id <> '') then
  begin
    var I: Integer := LocateStudent(id);
    if (I > 0) then
    begin
      var studId := (I - 1) * 10 + 1;
      ListBoxStudents.ItemIndex := studId;
    end
    else
    begin
      ShowMessage('The student with id = ' + id + ' isn''t found!');
    end;

  end;
end;

function TMainForm.ParseElementText(ElementString: String): String;
begin
  var Res: String := '';
  var isInsideString: Boolean := False;
  for var i: Integer := 4 to Length(ElementString) - 1 do
  begin
    if(ElementString[i] = '>') then isInsideString := True;

    if(isInsideString = True) then
    begin
       if(ElementString[i + 1] = '<') then break;
       Res := Res + ElementString[i + 1];
    end;
  end;

  Result := Res;
end;
function TMainForm.GetStudentAttributeId(StudentIndex: Integer): String;
begin
  //ShowMessage(ParseAttributeValue(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 - 1]));
  Result :=
  ParseAttributeValue(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 + 1]);
end;

function TMainForm.GetStudentFirstName(StudentIndex: Integer): String;
begin
  Result := ParseElementText(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 + 2]);
end;

function TMainForm.GetStudentMiddleName(StudentIndex: Integer): String;
begin
  Result := ParseElementText(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 + 3]);
end;

function TMainForm.GetStudentLastName(StudentIndex: Integer): String;
begin
  Result :=
  ParseElementText(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 + 4]);
end;

function TMainForm.GetStudentDateBorn(StudentIndex: Integer): String;
begin
  Result :=
  ParseElementText(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 + 5]);
end;

function TMainForm.GetStudentFaculty(StudentIndex: Integer): String;
begin
  Result :=
  ParseElementText(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 + 6]);
end;

function TMainForm.GetStudentProgram(StudentIndex: Integer): String;
begin
  Result :=
  ParseElementText(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 + 7]);
end;

function TMainForm.GetStudentFacultyNumber(StudentIndex: Integer): String;
begin
  Result :=
  ParseElementText(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 + 8]);
end;

function TMainForm.GetStudentStudyYear(StudentIndex: Integer): String;
begin
  Result :=
  ParseElementText(ListBoxStudents.Items.Strings[(StudentIndex - 1) * 10 + 9]);
end;

procedure TMainForm.ButtonSaveDataToFileClick(Sender: TObject);
begin

  var Prolog: String := '<?xml ' +
  LowerCase(LabelVersion.Caption) + ComboBoxVersion.Text + ' ' +
  LowerCase(LabelEncoding.Caption) + ComboBoxEncoding.Text + ' ' +
  LowerCase(LabelStandalone.Caption) + ComboBoxStandalone.Text + '/>';

  var SL: TStringList := TStringList.Create;

  SL.Add(Prolog);
  for var i: Integer := 0 to StudentCount * 10 do
    begin
      SL.Add(ListBoxStudents.Items.Strings[i]);
    end;
    SL.Add('</students>');


  var FileName: String :=
  ExtractFilePath(Application.ExeName) + 'students.xml';

  SL.SaveToFile(FileName);
  SL.Free;

  if(Self.Caption <> 'XML Student Organizer - students.xml') then
  begin
    Self.Caption := 'XML Student Organizer - students.xml';
  end;
end;

procedure TMainForm.ListBoxStudentsClick(Sender: TObject);
begin
  if((ListBoxStudents.ItemIndex = 0) or (ListBoxStudents.ItemIndex = ListBoxStudents.Count - 1)) then
  begin
    CurrentStudentIndex := 0;
  end
  else
  begin
    CurrentStudentIndex := (ListBoxStudents.ItemIndex + 9) div 10;
  end;
end;

procedure TMainForm.ListBoxStudentsDblClick(Sender: TObject);
begin
  if(CurrentStudentIndex > 0) then
  begin
    EditStudentID.Text := GetStudentAttributeId(CurrentStudentIndex);
    EditFirstName.Text := GetStudentFirstName(CurrentStudentIndex);
    EditMiddleName.Text := GetStudentMiddleName(CurrentStudentIndex);
    EditLastName.Text := GetStudentLastName(CurrentStudentIndex);
    EditDateBorn.Text := GetStudentDateBorn(CurrentStudentIndex);
    EditFaculty.Text := GetStudentFaculty(CurrentStudentIndex);
    EditProgram.Text := GetStudentProgram(CurrentStudentIndex);
    EditFacultyNumber.Text := GetStudentFacultyNumber(CurrentStudentIndex);
    EditStudyYear.Text := GetStudentStudyYear(CurrentStudentIndex);
  end;
end;

procedure TMainForm.ButtonUpdateStudentClick(Sender: TObject);
begin
  if(EditStudentID.Text = '') then
  begin
    ShowMessage('There isn''t a selected student!');
  end;

  var StudentIndex: Integer := LocateStudent(EditStudentID.Text);

  if(StudentIndex > 0) then
  begin
    var i: Integer := (StudentIndex - 1) * 10 + 1;
    var S: String := '';

     S := '    ' + LabelStartFirstName.Caption + EditFirstName.Text
     + LabelStartFirstName.Caption;
     if(S <> ListBoxStudents.Items.Strings[i + 1]) then
     begin
     ListBoxStudents.Items.Strings[i + 1] := S;
     end;

     S := '    ' + LabelStartMiddleName.Caption + EditMiddleName.Text
     + LabelStartMiddleName.Caption;
     if(S <> ListBoxStudents.Items.Strings[i + 2]) then
     begin
     ListBoxStudents.Items.Strings[i + 2] := S;
     end;

     S := '    ' + LabelStartLastName.Caption + EditLastName.Text
     + LabelStartLastName.Caption;
     if(S <> ListBoxStudents.Items.Strings[i + 3]) then
     begin
     ListBoxStudents.Items.Strings[i + 3] := S;
     end;

     S := '    ' + LabelStartDateBorn.Caption + EditDateBorn.Text
     + LabelStartDateBorn.Caption;
     if(S <> ListBoxStudents.Items.Strings[i + 4]) then
     begin
     ListBoxStudents.Items.Strings[i + 4] := S;
     end;

     S := '    ' + LabelStartFaculty.Caption + EditFaculty.Text
     + LabelStartFaculty.Caption;
     if(S <> ListBoxStudents.Items.Strings[i + 5]) then
     begin
     ListBoxStudents.Items.Strings[i + 5] := S;
     end;

     S := '    ' + LabelStartProgram.Caption + EditProgram.Text
     + LabelStartProgram.Caption;
     if(S <> ListBoxStudents.Items.Strings[i + 6]) then
     begin
     ListBoxStudents.Items.Strings[i + 6] := S;
     end;

     S := '    ' + LabelStartFacultyNumber.Caption + EditFacultyNumber.Text
     + LabelStartFacultyNumber.Caption;
     if(S <> ListBoxStudents.Items.Strings[i + 7]) then
     begin
     ListBoxStudents.Items.Strings[i + 7] := S;
     end;

     S := '    ' + LabelStartStudyYear.Caption + EditStudyYear.Text
     + LabelStartStudyYear.Caption;
     if(S <> ListBoxStudents.Items.Strings[i + 8]) then
     begin
     ListBoxStudents.Items.Strings[i + 8] := S;
     end;

  end;
end;

procedure TMainForm.ButtonDeleteStudentClick(Sender: TObject);
begin
  if not (CurrentStudentIndex > 0) then
  begin
    ShowMessage('There isn''t a selected student!');
    Exit;
  end;

  if(MessageDlg('Delete students?', mtConfirmation, mbYesNo, 0) = mrYes) then
  begin

  var i: Integer := ((CurrentStudentIndex - 1) * 10 + 1);
  for var k: Integer := 1 to 10 do
    begin
    ListBoxStudents.Items.Delete(i);
    end;
    
      CurrentStudentIndex := 0;
      StudentCount := StudentCount - 1;
    
  end;
end;

function TMainForm.SwapStudentNodes(I, J: Integer): Boolean;
begin
  const minStudents: Integer = 1;

  if(I = J) then
  begin
    Result := False;
    Exit
  end;

  if(I > StudentCount) OR (J > StudentCount) then
  begin
    Result := False;
    Exit;
  end;

  if(I < minStudents) OR (J < minStudents) then
  begin
    Result := False;
    Exit;
  end;

  var ii: Integer := (I - 1) * 10 + 1;
  var jj: Integer := (J - 1) * 10 + 1;

  for var itr: Integer := 0 to 8 do
    begin
      var firstPerson: String := ListBoxStudents.Items.Strings[ii+itr];
      ListBoxStudents.Items.Strings[ii+itr] := ListBoxStudents.Items.Strings[jj+itr];
      ListBoxStudents.Items.Strings[jj+itr] := firstPerson;
    end;

  Result := True;
end;

procedure TMainForm.ButtonMoveDownClick(Sender: TObject);
begin
  if not (CurrentStudentIndex > 0) then
  begin
    ShowMessage('There isn''t a selected student.');
    Exit;
  end;

  if (CurrentStudentIndex < StudentCount) then
    begin
      var firstStudent: Integer := CurrentStudentIndex;
      var secondStudent: Integer := CurrentStudentIndex + 1;

          SwapStudentNodes(firstStudent, SecondStudent);
          ListBoxStudents.ItemIndex := ListBoxStudents.ItemIndex + 10;
          CurrentStudentIndex := CurrentStudentIndex + 1;
    end;
end;

procedure TMainForm.ButtonMoveUpClick(Sender: TObject);
begin

  if (CurrentStudentIndex = 0) then
  begin
    ShowMessage('There isn''t a selected student.');
    Exit;

  end;

 if (CurrentStudentIndex > 1) then
  begin
    var firstStudent: Integer := CurrentStudentIndex;
    var secondStudent: Integer := CurrentStudentIndex - 1;

      SwapStudentNodes(firstStudent, secondStudent);
      ListBoxStudents.ItemIndex := ListBoxStudents.ItemIndex - 10;
      CurrentStudentIndex := CurrentStudentIndex - 1;
  end;
end;

procedure TMainForm.ButtonSortStudentListClick(Sender: TObject);
begin
  if (StudentCount < 2) then
	begin
	ShowMessage('There are not enough students.');
	Exit;
  	end;
   for var I: Integer := 1 to StudentCount - 1 do
	begin
	  for var J: Integer := (I + 1) to StudentCount do
		begin
		var ii: Integer := (I - 1) * 10 + 1;
		var jj: Integer := (J -1) * 10 + 1;
		if(StrToInt(ParseAttributeValue(ListBoxStudents.Items.Strings[jj])) <
		   StrToInt(ParseAttributeValue(ListBoxStudents.Items.Strings[ii]))) then
		begin
		SwapStudentNodes(I, J);
		end;
	end;
end;
ListBoxStudents.ItemIndex := 0;
CurrentStudentIndex := 0;
end;

end.



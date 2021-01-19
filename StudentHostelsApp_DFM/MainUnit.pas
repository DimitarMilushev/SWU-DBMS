unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TMainForm = class(TForm)
    LabelDesktop: TLabel;
    StatusBar: TStatusBar;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    miLogIn: TMenuItem;
    miLogOut: TMenuItem;
    N8: TMenuItem;
    miClose: TMenuItem;
    N2: TMenuItem;
    miSettlements: TMenuItem;
    miNomenclatures: TMenuItem;
    N11: TMenuItem;
    miPersons: TMenuItem;
    miStudents: TMenuItem;
    N16: TMenuItem;
    miHostelsRoomsInvertory: TMenuItem;
    N17: TMenuItem;
    miAccForms: TMenuItem;
    N12: TMenuItem;
    miSetDesktopColor: TMenuItem;
    N10: TMenuItem;
    miShowWelcomeMessage: TMenuItem;
    N4: TMenuItem;
    miHelpContent: TMenuItem;
    N6: TMenuItem;
    miHelpAbout: TMenuItem;
    ColorDialog: TColorDialog;
    miSearch: TMenuItem;
    procedure miLogInClick(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
    procedure miSetDesktopColorClick(Sender: TObject);
    procedure miShowWelcomeMessageClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure miLogOutClick(Sender: TObject);
    procedure miSettlementsClick(Sender: TObject);
    procedure miNomenclaturesClick(Sender: TObject);
    procedure miPersonsClick(Sender: TObject);
    procedure miStudentsClick(Sender: TObject);
    procedure miHostelsRoomsInvertoryClick(Sender: TObject);
    procedure miAccFormsClick(Sender: TObject);
    procedure miSearchClick(Sender: TObject);
    procedure miHelpContentClick(Sender: TObject);
    procedure miHelpAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses DataModuleUnit, DBLogDlg, CDSUnit, NomenclaturesUnit, SearchPersonUnit, PersonsUnit, StudentsUnit,
     AccFormsUnit, HostelsRoomsInvertoryUnit, DeveloperUnit;


procedure TMainForm.FormShow(Sender: TObject);
begin
  if(DM.Connection.Connected) then
    begin
    DM.Connection.Close();
    end;
  if(not DM.Connection.Connected) then
  begin
    var MyDatabase: String := 'Student Hostels';
    var MyUsername: String := '20_19251421043';
    var MyPassword: String := 'rdbMS_2019251421043';
    try
      DM.Connection.Open(MyUsername, MyPassword);
      LabelDesktop.Color := $00B4D0B4;
      LabelDesktop.Caption :=
        'Добре дошли в системата на студентски общежития!';
      StatusBar.Panels.Items[0].Text := ' Потребител : ' +
        DM.Connection.Properties.Item['User ID'].Value;
      StatusBar.Panels.Items[1].Text := ' БД : ' +
        DM.Connection.Properties.Item['Initial Catalog'].Value;
      StatusBar.Panels.Items[2].Text := ' Режим : Свързан';
      miShowWelcomeMessage.Enabled := True;
      miShowWelcomeMessage.Checked := True;
      miShowWelcomeMessage.Caption := 'Скрий поздравителен текст';
    except
      on E: Exception do Application.ShowException(E);
    end;
  end;

end;

procedure TMainForm.miLogInClick(Sender: TObject);
begin
  if not DM.Connection.Connected then
  begin
    var MyDatabase: String := 'StudentHostels';

    var MyUsername: String := '';

    var MyPassword: String := '';

    try
      if(LoginDialog(MyDatabase, MyUsername, MyPassword)) then
      begin
        if((MyUsername <> '') and (MyPassword <> '')) then
        begin
          DM.Connection.Open(Myusername, MyPassword);
          LabelDesktop.Color := $00B4D0B4;
          LabelDesktop.Caption :=
            'Добре дошли в системата на студентски общежития!';
          StatusBar.Panels.Items[0].Text := ' Потребител : ' +
            DM.Connection.Properties.Item['User ID'].Value;
          Statusbar.Panels.Items[1].Text := ' БД : ' +
            DM.Connection.Properties.Item['Initial Catalog'].Value;
          StatusBar.Panels.Items[2].Text := ' Режим : Свързан';
          miShowWelcomeMessage.Enabled := True;
          miShowWelcomeMessage.Checked := True;
          miShowWelcomeMessage.Caption := 'Скрий поздравителен текст';
        end;
      end

    except
      on E: Exception do Application.ShowException(E);
    end
    
  end

  else
  begin
    ShowMessage(
      'Потребител [' +
      DM.Connection.Properties.Item['User ID'].Value + ']' +
      ' вече има достъп до базата от данни [' +
      DM.Connection.Properties.Item['Initial Catalog'].Value + ']');
      
  end;
end;

procedure TMainForm.miLogOutClick(Sender: TObject);
begin
  if(DM.Connection.Connected) then
  begin
    if(MessageDlg(
      'Сигурни сте, че искате да излезете от системата?',
      mtConfirmation, mbYesNo, 0) = mrYes) then
    begin
      try
        DM.Connection.Close();
        LabelDesktop.Color := $00DEE7E;
        LabelDesktop.Caption := '';
        StatusBar.Panels.Items[0].Text := ' Потребител : ';
        StatusBar.Panels.Items[1].Text := ' БД : ';
        StatusBar.Panels.Items[2].Text := ' Режим : Несвързан';
        miShowWelcomeMessage.Enabled := False;
        miShowWelcomeMessage.Checked := False;
        miShowWelcomeMessage.Caption :=
          'Покажи / Скрий поздравителен текст';
        
      except
        on E: Exception do Application.ShowException(E);
      end;
    end
  end
  else
  begin
    ShowMessage('Потребителят няма достъп до базата от данни');
  end;
end;

procedure TMainForm.miCloseClick(Sender: TObject);
begin
  Self.Close();
end;

procedure TMainForm.miSettlementsClick(Sender: TObject);
begin
  var f:  TCDSForm := TCDSForm.Create(Self);
  f.BitBtnOk.Visible := False;
  f.BitBtnCancel.Kind := bkClose;
  f.BitBtnCancel.Caption := 'Затвори';
  f.ShowModal();
  f.Free();
end;

procedure TMainForm.miNomenclaturesClick(Sender: TObject);
begin
  var f: TNomenclaturesForm := TNomenclaturesForm.Create(Self);
  f.ShowModal();
  f.Free();
end;

procedure TMainForm.miSearchClick(Sender: TObject);
begin
  var f: TSearchPersonForm := TSearchPersonForm.Create(Self);
  f.ShowModal();
  f.Free();
end;

procedure TMainForm.miPersonsClick(Sender: TObject);
begin
  var f: TPersonsForm := TPersonsForm.Create(Self);
  f.BitBtnOk.Visible := False;
  f.BitBtnCancel.Kind := bkClose;
  f.BitBtnCancel.Caption := 'Затвори';
  f.ShowModal();
  f.Free();
end;

procedure TMainForm.miStudentsClick(Sender: TObject);
begin
  var f: TStudentsForm := TstudentsForm.Create(Self);
  f.ShowModal();
  f.Free();
end;

procedure TMainForm.miHostelsRoomsInvertoryClick(Sender: TObject);
begin
  var f: THostelsRoomsInventoryForm :=
          THostelsRoomsInventoryForm.Create(Self);
  f.BitBtnOk.Visible := False;
  f.BitBtnCancel.Kind := bkClose;
  f.BitBtnCancel.Caption := 'Затвори';
  f.ShowModal();
  f.Free();
end;

procedure TMainForm.miAccFormsClick(Sender: TObject);
begin
  var f: TAccFormsForm := TAccFormsForm.Create(Self);
  f.ShowModal();
  f.Free();
end;

procedure TMainForm.miSetDesktopColorClick(Sender: TObject);
begin
  ColorDialog.Color := LabelDesktop.Color;
  if(ColorDialog.Execute()) then
  begin
    if(ColorDialog.Color <> LabelDesktop.Color) then
    begin
      LabelDesktop.Color := ColorDialog.Color;
    end;
  end;
end;

procedure TMainForm.miShowWelcomeMessageClick(Sender: TObject);
begin
  if(not miShowWelcomeMessage.Checked) then
  begin
    miShowWelcomeMessage.Checked := True;
    miShowWelcomeMessage.Caption := 'Скрий поздравителен текст';
    LabelDesktop.Caption :=
      'Добре дошли в системата на студентски общежития!';
  end
  else
  begin
    miShowWelcomeMessage.Checked := False;
    miShowWelcomeMessage.Caption := 'Покажи поздравителен текст';
    LabelDesktop.Caption := '';
  end;
end;

procedure TMainForm.miHelpContentClick(Sender: TObject);
begin
  ShowMessage('Пoмощната система е в процес на разработване!');
end;

procedure TMainForm.miHelpAboutClick(Sender: TObject);
begin
  var f: TDeveloperForm := TDeveloperForm.Create(Self);
  f.ShowModal();
  f.Free();
end;

end.

unit DeveloperUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TDeveloperForm = class(TForm)
    ProgramIcon: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    Comments: TLabel;
    Button1: TButton;
    Copyright: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeveloperForm: TDeveloperForm;

implementation

{$R *.dfm}

end.

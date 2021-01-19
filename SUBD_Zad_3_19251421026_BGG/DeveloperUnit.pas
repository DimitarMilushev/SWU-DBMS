unit DeveloperUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TDeveloperForm = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    OKButton: TButton;
    ProductName: TLabel;
    Label1: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    Version: TLabel;
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeveloperForm: TDeveloperForm;

implementation

{$R *.dfm}

uses CDSUnit, DataModuleUnit;
procedure TDeveloperForm.OKButtonClick(Sender: TObject);
begin
Close;
end;

end.

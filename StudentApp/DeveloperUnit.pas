unit DeveloperUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TDeveloperForm = class(TForm)
    Image: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    ProductName: TLabel;
    Verison: TLabel;
    Comments: TLabel;
    Copyright: TLabel;
    OkButton: TBitBtn;
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

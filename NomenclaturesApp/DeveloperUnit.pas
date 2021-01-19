unit DeveloperUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TDeveloperForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    BitBtnClose: TBitBtn;
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

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Zapisat: TButton;
    Vypis: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Memo1: TMemo;
    Label1: TLabel;
    Teplota: TLabel;
    procedure ZapisatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Teplota: array[1..31,] of integer;




implementation

{$R *.dfm}



procedure TForm1.ZapisatClick(Sender: TObject);

begin
Teplota[spinedit1.value]:= spinedit2.value ;
memo1.add.lines
end;

end.

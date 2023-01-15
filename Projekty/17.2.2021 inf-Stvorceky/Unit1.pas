unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure vykreslovacs(okolko:integer);
    procedure vykreslovack(okolko:integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
vykreslovacs(spinedit1.Value);
//vykreslovack(10)
end;

procedure tform1.vykreslovack(okolko: Integer);
var
x,y,sirka:integer;
begin
image1.Canvas.Ellipse(x,y,x+300,y+300);
end;

procedure tform1.vykreslovacs(okolko: Integer);
 var
 x,y,sirka:integer;
begin
y:=image1.Height;
x:=0;
sirka:=10;
while x+sirka<image1.width do
  begin
  image1.Canvas.Rectangle(x,y,x+sirka,y-sirka);
  x:=x+sirka;
  sirka:=sirka+okolko;
  end;
end;

end.

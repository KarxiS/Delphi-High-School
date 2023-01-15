unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;
  type
  tsuradnice= (x,y,sirka);
type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure upravovac(cosom,x,y,sirka:integer); //priraduje a generuje
    procedure generuj;
  end;
 const
 n=10;
var
  Form1: TForm1;
   s:array [1..n,tsuradnice,tcolor] of integer;
implementation

{$R *.dfm}

procedure tform1.generuj;
var
I:integer;
begin
 image1.Canvas.Brush.Color:=clWhite;
 image1.Canvas.Rectangle(-1,-1,image1.Width+1,image1.Height+1);
for I := 1 to n do
  image1.Canvas.Rectangle(s[I,tsuradnice.x],s[I,tsuradnice.y],s[I,tsuradnice.x]+s[I,tsuradnice.sirka],s[I,tsuradnice.y]+s[I,tsuradnice.sirka]);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i:integer;
begin


  for I := 1 to n do
  begin
   s[I,tsuradnice.x]:=s[I,tsuradnice.x]+15;
   //s[I,tsuradnice.y]:=s[I,tsuradnice.y]+15;
   //s[I,tsuradnice.sirka]:=s[I,tsuradnice.sirka]+15;
   generuj;

  end;

end;

procedure tform1.upravovac(cosom:integer ; x: Integer; y: Integer; sirka: Integer) ;
begin

s[cosom,tsuradnice.x]:=x;
s[cosom,tsuradnice.y]:=y;
s[cosom,tsuradnice.sirka]:=sirka;



end;
procedure TForm1.Button1Click(Sender: TObject);
var
i,sirka:integer;
begin
sirka:=15;
for I := 1 to n do
  begin
  s[I,tsuradnice.x]:=random(image1.Width-sirka);
  s[I,tsuradnice.y]:=random(image1.height-sirka);
  s[I,tsuradnice.sirka]:=30;
   generuj;
  end;








end;

end.

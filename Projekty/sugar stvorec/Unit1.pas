unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    PaintBox1: TPaintBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
denisgay,marekgay:textfile;
x,y,xz,yz,pocitadlo:integer;


begin
paintbox1.Canvas.Brush.Color:=clwhite;
 paintbox1.Canvas.Rectangle(0,0,paintbox1.Width,paintbox1.Height);
pocitadlo:=0;
assignfile(denisgay,'vstup.txt');
reset(denisgay);
assignfile(marekgay,'vystup.txt');
     rewrite(marekgay);
  while not EOF(denisgay) do
    begin
     readln(denisgay,x,y,xz,yz);
     if  (x<0) or (y<0) or (xz>paintbox1.Width) or (yz>paintbox1.Height) then
     else
     begin
     if (x-xz)=(y-yz) then
     begin

      writeln(marekgay,x,' ',y,' ',xz,' ',yz);
     paintbox1.canvas.Brush.Color:=clred
     end
      else
      begin
      paintbox1.canvas.Brush.Color:=clyellow;
      end;
       paintbox1.Canvas.Rectangle(x,y,xz,yz);
       inc(pocitadlo);

     end;

    end;
     memo1.Text:=inttostr(pocitadlo);
     closefile(marekgay);
 closefile(denisgay);
end;

end.

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function stret(cx,cy,mx,my,sirka:integer):boolean;
  end;

var
  Form1: TForm1;
  yc,xm,sirka:integer;
  xc:integer=-1;
  ym:integer=-1;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var
i:integer;

begin
  if (xc=-1) and (ym=-1) then
  begin
    sirka:=100;
    //cerveny
   //xc:=random(image1.Width);

      image1.Canvas.Brush.Color:=clred;
     yc:=random(image1.Height-sirka);
    xc:=0;
    image1.Canvas.Ellipse(xc,yc,xc+sirka,yc+sirka);
    //modry
    image1.Canvas.Brush.Color:=clblue;
    xm:=random(image1.Width-sirka);
    ym:=0;
    image1.Canvas.Ellipse(xm,ym,xm+sirka,ym+sirka);


  end

  else
  begin    //kreslenie
  //cerv
   if xc>image1.Width then xc:=0;
   image1.Canvas.Brush.Color:=clwhite;
  image1.Canvas.Rectangle(-1,-1,image1.Width+1,image1.Height+1);

  image1.Canvas.Brush.Color:=clred;
  image1.Canvas.Ellipse(xc,yc,xc+sirka,yc+sirka);
  xc:=xc+sirka;
  //mod
   if ym>image1.height then ym:=0;
  image1.Canvas.Brush.Color:=clblue;
  image1.Canvas.Ellipse(xm,ym,xm+sirka,ym+sirka);
  ym:=ym+sirka;


  end;

  stret(xc,yc,xm,ym,sirka);
end;

function tform1.stret(cx: Integer; cy: Integer; mx: Integer; my: Integer;sirka:integer):boolean;
var
bod1,bod2:integer;
zaciatokc,zaciatokm:tpoint;
koniecc,koniecm:tpoint;
begin
 //cerveny
 zaciatokc.X:=cx+(sirka div 2);
 zaciatokc.y:=cy+(sirka div 2);

 koniecc.X:=cx+sirka;
 koniecc.Y:=cy+sirka;

 //modry
 zaciatokm.X:=mx+(sirka div 2);
 zaciatokm.Y:=my+(sirka div 2);
 koniecc.X:=mx+sirka;
 koniecc.Y:=my+sirka;

 {
  }


 { if ((zaciatokc.Y<koniecm.Y) and (zaciatokc.Y>zaciatokm.Y))
  OR
     ((koniecc.y>zaciatokm.y) and (koniecc.y>koniecm.y))

   then
    }
   if ((zaciatokc.X<koniecm.X) and (zaciatokc.X>zaciatokm.X))     //podmienky na x
  OR
     (koniecc.X>zaciatokm.X) and (koniecc.X>koniecm.X)
  then




 begin
 button1.Caption:='yay';

 end

else
begin
 button1.Caption:='not yay';
end;




end;

end.

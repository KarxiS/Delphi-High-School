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
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
image1.Canvas.Brush.Color:=clAqua ;
//pozadieAtrava
image1.Canvas.Rectangle(-1,-1,image1.width+1,image1.Height+1);
 image1.Canvas.Brush.Color:=clGreen ;
image1.Canvas.Rectangle(image1.Width+1,image1.Height+1,-1,image1.Height-30);

//dom
image1.Canvas.brush.Color:=rgb(218,165,32)  ;
image1.Canvas.Rectangle(+100,image1.Height-30,300,image1.Height-150);
image1.Canvas.MoveTo(80,image1.Height-130);
image1.Canvas.LineTo(200,image1.Height-250);
image1.Canvas.MoveTo(320,image1.Height-130);
image1.Canvas.LineTo(200,image1.Height-250);
image1.Canvas.brush.Color:=rgb(139,69,19);
image1.Canvas.Polygon([Point(200,image1.Height-250),Point(100,image1.Height-150),Point(300,image1.Height-150)]);
//okno +dvere,okna
image1.Canvas.Rectangle(185,image1.height-30,215,image1.Height-90);
image1.Canvas.Brush.Color:=clBlack;
image1.Canvas.Ellipse(210,image1.Height-60,205,image1.Height-50);
 image1.Canvas.Brush.Color:=clWhite;
 //okna
image1.Canvas.Rectangle(120,image1.Height-140,170,image1.Height-80);
image1.Canvas.Rectangle(280,image1.Height-140,230,image1.Height-80);

image1.Canvas.MoveTo(145,image1.Height-140);
image1.Canvas.LineTo(145,image1.Height-80);
image1.Canvas.MoveTo(255,image1.Height-140);
image1.Canvas.LineTo(255,image1.Height-80);

image1.Canvas.MoveTo(120,image1.Height-110);
image1.Canvas.LineTo(170,image1.Height-110);

image1.Canvas.MoveTo(280,image1.Height-110) ;
image1.Canvas.LineTo(230,image1.Height-110);

//dame stromy?  jablko tiez
  image1.Canvas.Brush.Color:=RGB(153,76,0) ;
 image1.Canvas.rectangle(500,image1.Height-30,550,image1.Height-200);
; image1.Canvas.Brush.Color:=RGB(0,255,0) ;
 image1.Canvas.Rectangle(450,image1.Height-250,600,image1.Height-140);
 image1.Canvas.Brush.Color:=RGB(255,0,0);
 image1.canvas.Ellipse(505,image1.Height-245,490,image1.Height-230);

 //na ochladenie
 image1.Canvas.brush.Color:=clWhite;
 image1.Canvas.Rectangle(700,image1.Height-30,image1.Width+1,image1.Height+1);
 image1.Canvas.Ellipse(750,image1.Height-30,830,image1.Height-110);
 image1.Canvas.Ellipse(760,image1.Height-110,820,image1.Height-170);
 image1.Canvas.Ellipse(770,image1.Height-170,810,image1.Height-210);
 image1.Canvas.brush.Color:=clBlack;
 image1.Canvas.Ellipse(776,image1.Height-204,787,image1.Height-193);
 image1.Canvas.Ellipse(806,image1.Height-204,795,image1.Height-193);
 image1.Canvas.Brush.Color:=clRed;
 image1.Canvas.Polygon([Point(790,image1.Height-190),Point(780,image1.Height-180),Point(800,image1.Height-180)]);
 image1.Canvas.brush.Color:=clBlack;
 image1.Canvas.Ellipse(785,image1.height-135,795,image1.height-145);
   image1.Canvas.Ellipse(785,image1.height-65,795,image1.height-75);
 image1.Canvas.Brush.Color:=clYellow;
   image1.Canvas.Ellipse(0,0,100,100);
   image1.Canvas.TextOut(image1.Width-50,0,'KarolSugar');






end;

end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    FElipsa: TRect;
    FP1, FP2, FP3, FP4, FP5: TPoint;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  FncTvary {TeeProcs, TeCanvas};


procedure TForm1.FormCreate(Sender: TObject);
begin
  FElipsa := rect(10,60,300,245);
  FP1 := Point(180, 20);
  FP2 := Point(350, 20);
  FP3 := Point(350, 300);
  FP4 := Point(250, 350);
  FP5 := Point(180, 300);
end;

procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  P: TPoint;
  R: TRect;
begin
  P.X := X;
  P.Y := Y;
  // elipsa
  if PointInEllipse(P, FElipsa) then
    Label1.Caption := 'Elipsa'
  else
  // polygon
  if PointInPolygon(P, [FP1, FP2, FP3, FP4, FP5]) then
    Label1.Caption := 'Polygon'
  else
  // obdlznik
  if PointInPolygon(P, [Point(100, 100), Point(500, 100), Point(500, 320), Point(100, 320)]) then
    Label1.Caption := 'Obdlåžnik'
  else
    Label1.Caption := '???';
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  with PaintBox1.Canvas do
  begin
    // obdlznik
    Brush.Color := clYellow;
    Rectangle(100, 100, 500, 320);
    // polygon
    Brush.Color := clRed;
    Polygon([FP1, FP2, FP3, FP4, FP5]);
    // elipsa
    Brush.Color := clBlue;
    Ellipse(FElipsa);
  end;
end;

end.

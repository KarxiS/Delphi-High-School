unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure VykreslenieBodov;
    procedure PosunBodov;
  public
    { Public declarations }
  end;

const
  Pocet = 30;

var
  Form1: TForm1;
  Bod: array[1..Pocet] of TPoint;
  Farba: array[1..Pocet] of Integer;

implementation

{$R *.dfm}

procedure TForm1.VykreslenieBodov;
var
  i: Integer;
begin
  with Image1.Canvas do
  begin
    Brush.Color := clWhite;
    FillRect(Rect(0,0,Image1.Width, Image1.Height));
    for i := 1 to Pocet do
    begin
      Brush.Color := Farba[i];
      Ellipse(Bod[i].X, Bod[i].Y, Bod[i].X +12, Bod[i].Y+12);
    end;
  end;
end;

procedure TForm1.PosunBodov;

  procedure PosunX(A: Integer);
  var
    i: Integer;
  begin
    for i := 1 to Pocet do
      Bod[i].X := Bod[i].X + A;
  end;

  procedure PosunY(A: Integer);
  var
    i: Integer;
  begin
    for i := 1 to Pocet do
      Bod[i].Y := Bod[i].Y + A;
  end;

begin
  case RadioGroup1.ItemIndex of
    0:    PosunY(-SpinEdit1.Value);
    1:    PosunY(SpinEdit1.Value);
    2:    PosunX(-SpinEdit1.Value);
    3:    PosunX(SpinEdit1.Value);
  end;
  VykreslenieBodov;
end;



procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to Pocet do
  begin
    Bod[i].X := Random(700);
    Bod[i].Y := Random(300);
    case Random(7) of
      0:  Farba[i] := clRed;
      1:  Farba[i] := clLime;
      2:  Farba[i] := clBlue;
      3:  Farba[i] := clYellow;
      4:  Farba[i] := clAqua;
      5:  Farba[i] := clGreen;
      6:  Farba[i] := clGray;
    else
      Farba[i] := clWhite;
    end;
  end;
  VykreslenieBodov;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  PosunBodov;
end;


end.

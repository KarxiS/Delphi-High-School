unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    boa: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure stvorec(x,y,dlzka:integer);
    procedure riadok(x,y,dlzka,pocet:integer);
    procedure stlpec(x,y,dlzka,pocet:integer);
    procedure K(x,y,vyska:integer);
    procedure A(x,y,vyska:integer);
    procedure R(x,y,vyska:integer);
    procedure O(x,y,vyska:integer);
    procedure L(x,y,vyska:integer);

  end;
var
  Form1: TForm1;


implementation

{$R *.dfm}
 //call prodedury
procedure Tform1.stvorec(x,y,dlzka:integer);
var
  stvrtka:integer;
begin
  boa.Canvas.Brush.Color:=Random(256*256*265);
  stvrtka:=dlzka div 4;
  boa.Canvas.Rectangle(x,y,x+dlzka,y+dlzka);
  boa.Canvas.Brush.Color:=clWhite;
  boa.Canvas.Rectangle(x+stvrtka,y+stvrtka,x+stvrtka*3,y+stvrtka*3);
end;

procedure TForm1.riadok(x: Integer; y: Integer; dlzka: Integer; pocet: Integer);
var
  I: Integer;
begin
  for I := 0 to pocet-1 do
    begin
    stvorec(x+dlzka*I,y,dlzka);
    end;

end;

procedure TForm1.stlpec(x: Integer; y: Integer; dlzka: Integer; pocet: Integer);
var
  I: Integer;
begin
  for I := 0 to pocet-1 do
    begin
      stvorec(x,y+dlzka*I,dlzka);
    end;
end;

  //K
procedure Tform1.K(x: Integer; y: Integer; vyska: Integer);
var
i:integer;
begin

  stlpec(x,y,vyska,7);
  for i := 0 to 3 do
  begin
    //horna noha K
      stvorec((x+vyska)+(i*(vyska)),(y+vyska*3)+(i*(-vyska)),vyska);
    //dolna noha v K
      stvorec((x+vyska)+(i*vyska),(y+vyska*3)+(i*vyska),vyska);         //be jaky som programator

  end;
end;

  //A
procedure TForm1.A(x: Integer; y: Integer; vyska: Integer);
begin
  stlpec(x,y+vyska,vyska,6);
  stlpec(x+vyska*4,y+vyska,vyska,6);
  riadok(x+vyska,y,vyska,3) ;
  riadok(x+vyska,y+vyska*3,vyska,3) ;

end;

  //R
procedure Tform1.R(x: Integer; y: Integer; vyska: Integer);
var
i:integer;
begin
  stlpec(x,y,vyska,7);
  riadok(x,y,vyska,4);
  riadok(x,y+vyska*3,vyska,4);
  stlpec(x+vyska*4,y+vyska,vyska,2);
    for i := 0 to 3 do
  begin

    //dolna noha v r
      stvorec((x+vyska)+(i*vyska),(y+vyska*3)+(i*vyska),vyska);
  end;

end;

  //O
procedure TForm1.O(x: Integer; y: Integer; vyska: Integer);
begin
  stlpec(x,y+vyska,vyska,5);
  stlpec(x+vyska*4,y+vyska,vyska,5);
  riadok(x+vyska,y,vyska,3);
  riadok(x+vyska,y+vyska*6,vyska,3);
end;
  //L
procedure Tform1.L(x: Integer; y: Integer; vyska: Integer);
begin
  stlpec(x,y,vyska,7);
  riadok(x,y+vyska*6,vyska,5);
end;


//objektButtonProcedura
  //K
procedure TForm1.Button1Click(Sender: TObject);
begin
  k(Random(boa.width-spinedit1.Value*5),Random(boa.height-spinedit1.Value*7),spinedit1.value);
end;

  //A
procedure TForm1.Button2Click(Sender: TObject);
begin
  a(Random(boa.width-spinedit1.Value*5),Random(boa.height-spinedit1.Value*7),spinedit1.value);
end;

  //R
procedure TForm1.Button3Click(Sender: TObject);
begin
  r(Random(boa.width-spinedit1.Value*5),Random(boa.height-spinedit1.Value*7),spinedit1.value)
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  o(Random(boa.width-spinedit1.Value*5),Random(boa.height-spinedit1.Value*7),spinedit1.value)
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  l(Random(boa.width-spinedit1.Value*5),Random(boa.height-spinedit1.Value*7),spinedit1.value);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  pismeno:integer;
begin
  pismeno:=spinedit1.Value*6;
  k(0,0,spinedit1.value) ;
  a(pismeno,0,spinedit1.value) ;
  r(pismeno*2,0,spinedit1.value) ;
  o(pismeno*3,0,spinedit1.value) ;
  l(pismeno*4,0,spinedit1.value);
end;

end.

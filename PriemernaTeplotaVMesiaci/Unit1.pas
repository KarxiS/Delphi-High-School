unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Teplota: array[1..31] of Integer;

implementation

{$R *.dfm}

  
procedure TForm1.Button1Click(Sender: TObject);
var
  d, t: Integer;
begin
   d := SpinEdit1.Value;
   t := SpinEdit2.Value;
   Teplota[d] := t;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
  Sucet: Integer;
  Priemer: real;
  S: String;
begin
  Sucet := 0;
  Memo1.Clear;
  for i := 1 to 31 do
  begin
    S := IntToStr(i);
    if i <10 then
      S := '  '+ S;
    Memo1.Lines.Add(S + '.         ' + intToStr(Teplota[i]) + '°C');
    Sucet := Sucet + Teplota[i];
  end;
  Priemer := Sucet / 31;
  str(Priemer:4:1, S);
  Memo1.Lines.Add('Priemerná teplota za mesiac je ' + S + '°C');
end;


end.



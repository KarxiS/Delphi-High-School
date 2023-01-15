unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pole: array [1..100] of integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
i,randomik,scitavanie:integer;
begin
for I := 1 to spinedit1.Value do
    begin
    randomik:=random(100);
    pole[I]:=randomik;
    if pole[i]>spinedit2.value then
      begin
      memo1.Lines.Add(inttostr(randomik)+' je vacsie ako '+inttostr(spinedit1.value)+' s poradim '+inttostr(I));
      scitavanie:=scitavanie+pole[I];
      if pole[i] mod 10=0 then
        begin
         pole[i]:=pole[i]+100;
         memo1.Lines.Add('zmenene pole '+inttostr(pole[i]));
        end;
      end;

    end;

    memo1.Lines.Add('sucet tychto cisel je '+inttostr(scitavanie));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
randomik,I:integer;

npole: array [1..100] of integer;
begin

for I := 1 to spinedit1.Value do
    begin
    randomik:=random(100);
    pole[I]:=randomik;


    end;
    memo1.Lines.SaveToFile('vystup.txt');
end;

end.

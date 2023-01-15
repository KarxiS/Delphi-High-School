unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
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
const
n=30;
var
pole:array[1..n] of byte;
i:integer;
begin
 memo1.Clear;
for I := 1 to n do
 begin

 pole[I]:=random(11)+15;

 end;

for I := 1 to n do
  begin
  memo1.Lines.Add(inttostr(pole[I]))
  end;

end;



end.

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Pocet: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
  if spinedit1.Value >0 then
     edit1.text:= 'cislo '+InttoStr(spinedit1.Value)+' je kladne'
  else
    edit1.Text:= 'cislo '+InttoStr(spinedit1.Value)+' je zaporne';

end;


procedure TForm1.Button2Click(Sender: TObject);
var
s:string;
begin
  case spinedit1.value of
    3,4,5:   S:='jar';
    6,7,8:  S:='leto'    ;
    9,10,11:  S:='jesen';
    12,1,2: S:='zima';


  else

  edit1.Text:= InttoStr(spinedit1.Value)+ ' je neplatny mesiac' ;
   exit;


  end;
  edit1.Text:= InttoStr(spinedit1.Value)+' je v '+s ;


end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
begin

memo1.text := 'Vypisujem cislo od 1 do '+IntToStr(spinedit1.Value);
for I := 1 to spinedit1.Value do
begin

  memo1.Lines.Add(InttoStr(I));

end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  I: Integer;
begin
memo1.Lines.Add('Cislo delitelne 0 a'+inttostr(spinedit1.Value) );
for I := 1 to spinedit1.Value do
begin

  if ((i) mod 7=0) or (i mod (spinedit2.Value)=0) then
  begin

  memo1.Lines.Add(Inttostr(i));
  end;


end;



end;

end.

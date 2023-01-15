unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls,system.math;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Button4: TButton;
    Edit1: TEdit;
    Label3: TLabel;
    Button5: TButton;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    Button6: TButton;
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
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
procedure TForm1.Button2Click(Sender: TObject);
function dec2spinsustavy(cislo: Integer):string;
 begin
    while cislo>0 do
     begin
      result:=Inttostr(cislo mod spinedit1.Value)+result ;
      cislo:=cislo div spinedit1.Value;
     end;
    end;

begin
memo1.Lines.Add('prevod cisla '+Inttostr(spinedit2.Value)+' do '+inttostr(spinedit1.Value)+': '+dec2spinsustavy(spinedit2.Value))

end;
procedure TForm1.Button3Click(Sender: TObject);
function dec2bin(cislo: Integer):string;
  begin
    while cislo>0 do
     begin
      result:=Inttostr(cislo mod 2)+result ;
      cislo:=cislo div 2;
      end;
     end;

begin
memo1.Lines.Add('binarna: '+dec2bin(spinedit2.value));
end;

procedure TForm1.Button4Click(Sender: TObject);

function bin2dec(cislo: string):string;
var
i:integer;
sucet,mocnina:real;

  begin
  mocnina:=-1;
  sucet:=0;
    for I := length(cislo) downto 1 do
     begin
     mocnina:=mocnina+1;
     if cislo[i]='1' then
        sucet:=sucet+power(2,mocnina)
      else
      continue;
     end;
         result:=floattostr(sucet);
  end;


begin
memo1.Lines.Add((bin2dec('010101')));

end;

procedure TForm1.Button5Click(Sender: TObject);

function hex2dec(cislo: string):integer;
var
i,c:integer;

  begin
  result:=0;
  c:=0;

   for I := 1 to length(cislo) do

      begin
        case cislo[i] of
        '0'..'9':c:=strtoInt(cislo[I]);
        'A':c:=10;
        'B':c:=11;
        'C':c:=12;
        'D':c:=13;
        'E':c:=14;
        'F':c:=15;
        end;
        result:=result*16+c;
       end;
  end;

begin
memo1.Lines.Add(inttostr(hex2dec('1ABC')));
end;

procedure TForm1.Button6Click(Sender: TObject);
function x2dec(cislo: string;sus:integer):string;
var
i:integer;
sucet,mocnina:real;

  begin
  mocnina:=-1;
  sucet:=0;
    for I := length(cislo) downto 1 do
     begin
     mocnina:=mocnina+1;
     if cislo[i]='0' then
      continue
      else
      sucet:=sucet+power(round(sus),mocnina)*strtofloat(cislo[i]) ;

     end;
         result:=floattostr(sucet);
  end;

begin
 memo1.Lines.Add(x2dec(edit1.Text,spinedit3.Value))
end;

procedure TForm1.Button1Click(Sender: TObject);
function dec2hex(cislo: Integer):string;
  begin
    while cislo>0 do
     begin
      case (cislo mod 16) of
      0..9:result:=Inttostr(cislo)+result;
      10:result:='A'+result;
      11:result:='B'+result;
      12:result:='C'+result;
      13:result:='D'+result;
      14:result:='E'+result;
      15:result:='F'+result;
      end;
      cislo:=cislo div 16;
     end;
     end;
begin
 memo1.Lines.Add('sestnastkova: '+dec2hex(spinedit2.value));
end;








end.

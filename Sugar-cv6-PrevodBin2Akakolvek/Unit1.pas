unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  function dec2spinsustavy(cislo:integer):string;
  function dec2bin(cislo: Integer):string;
  function dec2hex(cislo: Integer):string;
  function hex2dec(hex:string):integer;

  end;
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
memo1.Lines.Add('prevod cisla '+Inttostr(spinedit2.Value)+' do '+inttostr(spinedit1.Value)+': '+dec2spinsustavy(spinedit2.Value))

end;

function tform1.hex2dec(hex:string):integer;
var
  cifra,suma:integer;
  I:integer;

  begin
    suma:=0 ;
    for I := 1 to length(hex) do
    begin
      case hex[I] of
        '0'..'9':cifra:=StrToint(hex[i]);
        'A':cifra:=10;
        'B':cifra:=11;
        'C':cifra:=12;
        'D':cifra:=13;
        'E':cifra:=14;
        'F':cifra:=15;
      end;
      suma:=suma*16+cifra;
    end;
    result:=suma;
  end;

procedure TForm1.Button3Click(Sender: TObject);
begin
memo1.Lines.Add('binarna: '+dec2bin(spinedit2.value));
end;

function tform1.dec2bin(cislo: Integer):string;
var
zvysok:integer;
  begin
    while cislo>0 do
     begin
      result:=Inttostr(cislo mod 2)+result ;
      cislo:=cislo div 2;
      end;
     end;

function tform1.dec2spinsustavy(cislo: Integer):string;
 begin
    while cislo>0 do
     begin
      result:=Inttostr(cislo mod spinedit1.Value)+result ;
      cislo:=cislo div spinedit1.Value;
     end;
    end;

function tform1.dec2hex(cislo: Integer):string;
var
zvysok:integer;
  begin
    while cislo>0 do
     begin
      zvysok:=cislo mod 16 ;
      case zvysok of
      0..9:result:=Inttostr(zvysok)+result;
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

procedure TForm1.Button1Click(Sender: TObject);
begin

 memo1.Lines.Add('sestnastkova: '+dec2hex(spinedit2.value));
end;
end.

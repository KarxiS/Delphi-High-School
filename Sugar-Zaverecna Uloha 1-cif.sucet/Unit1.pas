unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,math;

type
  TForm1 = class(TForm)
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Memo1: TMemo;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;
  fvstup:textfile;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
I,cifra1,cifra2:integer;
cislo:string;
sucet:integer;
begin
cislo:=inttostr(spinedit1.Value);
sucet:= 0;

    cifra1:=strtoint(cislo[1]+cislo[2]);
    cifra2:=strtoint(cislo[3]+cislo[4]);


    if ((cifra1+cifra2)*(cifra1+cifra2))=spinedit1.Value then
    begin
     memo1.Lines.Add('zvlastne cislo je '+cislo);
     memo1.Lines.Add('ciferny sucet je '+inttostr(cifra1)+' a '+inttostr(cifra2));


    end;


    for I := 1 to 4 do
    begin

    sucet:=sucet+strtoint(cislo[i]);
    end;
    memo1.Lines.Add('Ciferny sucet '+inttostr(sucet));
    memo1.Lines.Add('');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i:integer;
cifra1,cifra2:integer;
cislostr:string;

begin
AssignFile(fvstup, 'Vystup.txt');
    Rewrite(fvstup);
    memo1.Lines.Add('');
    memo1.Lines.Add('vypisujem vsetky');
  for I := 1000 to 9999 do
  begin
   cislostr:=inttostr(I);



    cifra1:=strtoint(cislostr[1]+cislostr[2]);
    cifra2:=strtoint(cislostr[3]+cislostr[4]);


    if ((cifra1+cifra2)*(cifra1+cifra2))=I then
    begin

     memo1.Lines.Add('zvlastne cislo je '+cislostr);
     memo1.Lines.Add('cifry su '+inttostr(cifra1)+' a '+inttostr(cifra2));
     memo1.Lines.Add('ciferny sucet je '+inttostr(cifra1+cifra2));
     memo1.Lines.Add('');
    WriteLn(fvstup, 'zvlastne cislo '+cislostr);
    writeln(fvstup,'Ciferny sucet je '+inttostr(cifra1)+'+'+inttostr(cifra2));
    writeln(fvstup,' ');

    end;

  end;
  CloseFile(fvstup);
end;





end.

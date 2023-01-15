unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    VypisVstup: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure VypisVstupClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  function zistiznaky(veta:string):string;
  function zistislova(veta:string):string;
  function menicpismen(veta,pismeno:string):string;
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var
riadok:string;
txt:textfile;
  begin
  assignfile(txt,'vstup.txt');
  reset(txt);
   //label3.Caption:=zistiznaky('LOL');
  while not EOF(txt) do
   begin
    readln(txt,riadok);
    memo1.Lines.add(menicpismen(riadok,edit1.Text));
   end;
  end;

function tform1.menicpismen(veta,pismeno: string):string;
var
i:integer;
begin
for I := 1 to length(veta) do
  begin
  if veta[i]=pismeno then veta[i]:='*';

  end;
 result:=veta;


end;
procedure TForm1.VypisVstupClick(Sender: TObject);
var
riadok:string;
txt:textfile;
pocet:integer;
  begin
  assignfile(txt,'vstup.txt');
  reset(txt);
  pocet:=0;
  //label3.Caption:=zistiznaky('LOL');
  while not EOF(txt) do
    begin
      readln(txt,riadok);
      memo1.Lines.Add(riadok);
      inc(pocet);
      label1.Caption:=(inttostr(pocet));
      memo1.Lines.Add('------ Pocet znakov '+zistiznaky(riadok)+'------');
      memo1.Lines.Add('------ Pocet slov '+zistislova(riadok)+'------');
      memo1.Lines.Add('');
    end;
    end;


function tform1.zistiznaky(veta: string):string;
 var
 i:integer;
 pocetznakov:integer;
  begin
  pocetznakov:=0;
    for I := 1 to length(veta) do
      begin
        inc(pocetznakov);
      end;
    result:=inttostr(pocetznakov);
  end;
function tform1.zistislova(veta: string):string;
var
pocetslov,i:integer;
begin
pocetslov:=0;
for I := 1 to length(veta) do
      begin
        if (veta[i]=' ') then inc(pocetslov);
      end;
result:=inttostr(pocetslov+1);
end;

end.

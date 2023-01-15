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
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    function delitelne(cislo,delitel:integer):boolean ;
    procedure Button2Click(Sender: TObject);
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
var
I:integer;
fvstup,fvystup:textfile;
cislo:string;

begin
I:=0;
assignfile(fvstup,ExtractFilePath(Application.ExeName) + 'vstup.txt');
assignfile(fvystup,ExtractFilePath(Application.ExeName) + 'vystup.txt');

reset(fvstup);
rewrite(fvystup);
while NOT (EOF(fvstup)) do
  begin
  readln(fvstup,cislo);
  if delitelne(strtoint(cislo),spinedit1.Value)
  then
    begin
      memo1.Lines.Add('cislo '+cislo+' je delitelne '+inttostr(spinedit1.value));
      writeln(fvystup,cislo);
      inc(I);

    end;


                                               // else memo1.Lines.Add('cislo '+cislo+' nie je delitelne '+inttostr(spinedit1.value))

   end;
   writeln(fvystup,'pocet cisel '+inttostr(I));
   closefile(fvstup);
   closefile(fvystup);
   memo1.Lines.Add('pocet cisel '+inttostr(I))
end;

function tform1.delitelne(cislo,delitel: Integer):boolean;
begin
if (cislo mod delitel )=0 then
result:=true
else
result:=false

end;

procedure TForm1.Button1Click(Sender: TObject);

begin
if delitelne(strtoint(edit1.Text),spinedit1.Value) then memo1.Lines.Add('cislo '+edit1.Text+' je delitelne '+inttostr(spinedit1.value))
                                                    else memo1.Lines.Add('cislo '+edit1.Text+' nie je delitelne '+inttostr(spinedit1.value))
end;

end.

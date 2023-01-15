unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
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
var
denisgay:textfile;
cele,meno,priezvisko,cislo,hladat:string;
begin
assignfile(denisgay,'kontakty.txt');
reset(denisgay);
hladat:=edit1.Text;
  while NOT EOF(denisgay) do
    begin
    read(denisgay,Meno);
    read(denisgay,priezvisko);
    read(denisgay,cislo);
    readln(denisgay);

    if pos(hladat,meno+priezvisko)>0 then
      memo1.Lines.Add(meno+priezvisko);
     //cislo:=copy(cele,pos('09',cele));
     memo1.Lines.add(cislo);
    end;
  closefile(denisgay);
end;

end.

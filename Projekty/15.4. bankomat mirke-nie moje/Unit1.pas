unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TBankovka=record
  jedno:integer;
  dve:integer;
  pat:integer;
  end;

  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


    function jednotky(cislo:string):Tbankovka;
    procedure desiatky(cislo:string);
    function stovky(cislo:string):Tbankovka;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
cislo,stovka:string;
I,II,kolko:integer;
begin
memo1.Clear;
 cislo:=edit1.Text;
 kolko:=0;
  for I := length(cislo) downto 1 do
   begin
   kolko:=kolko+1;
      case kolko of
            1:begin
                with jednotky(cislo[i]) do
                begin
                memo1.Lines.Add('jednotiek '+inttostr(jedno));
                memo1.Lines.Add('dvojek '+inttostr(dve));
                memo1.Lines.Add('Patiek '+inttostr(pat));

                end;

              end;

            2: begin
               with jednotky(cislo[i]) do
                begin
                memo1.Lines.Add('desiatok '+inttostr(jedno));
                memo1.Lines.Add('dvadsiatok '+inttostr(dve));
                memo1.Lines.Add('Patdesiatok '+inttostr(pat));

                end;
              end
          else
        begin



                for II := 1 to length(cislo)-2 do

              begin
              stovka:=stovka+cislo[II];
                end;

                with stovky(cislo) do
                begin
               memo1.Lines.Add('stoviek '+inttostr(jedno));
             memo1.Lines.Add('dvastoviek '+inttostr(dve));
             memo1.Lines.Add('Patstoviek '+inttostr(pat));
             exit;
             end;
          end;

        end;
   end;
end;

function tform1.jednotky(cislo: string):Tbankovka;
  var
  jedno,dvoj,pat,zvysok:integer;
  cisloint:integer;
  begin
  cisloint:=strtoint(cislo);
  pat:=cisloint div 5;
  zvysok:=cisloint mod 5;
  dvoj:=zvysok div 2;
  zvysok := zvysok mod 2;
  jedno:=zvysok;
  result.jedno:=jedno;
  result.dve:=dvoj;
  result.pat:=pat;



  end;

procedure tform1.desiatky(cislo: string);
begin

end;

function tform1.stovky(cislo: string):Tbankovka;
  var
  jedno,dvoj,pat,zvysok:integer;
  cisloint:integer;
  begin
  cisloint:=strtoint(cislo);

  pat:=cisloint div 500;
  zvysok:=cisloint mod 500;
  dvoj:=zvysok div 200;
  zvysok := zvysok mod 200;
  jedno:=zvysok div 100;
  result.jedno:=jedno;
  result.dve:=dvoj;
  result.pat:=pat;



  end;


end.

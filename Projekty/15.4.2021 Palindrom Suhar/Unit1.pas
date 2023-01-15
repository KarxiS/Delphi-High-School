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
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function palindrom(slovo:string):boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
slovo:string;
i,pocetznakov,minznak,maxznak:integer;
begin
pocetznakov:=0;
maxznak:=0;
minznak:=0;

  memo1.Clear;
  slovo:=edit1.Text;
  memo1.Lines.Add('pocet znakov: '+inttostr(length(slovo)));
  with memo1.Lines do
  begin
  if length(slovo) mod 2=0 then Add('je parny')
                            else add('neparny');

 // add(slovo[1]);


   for I := 1 to length(slovo) do
   begin
     if slovo[i]=edit2.text then
       begin
            inc(pocetznakov);
             maxznak:=I;
            if pocetznakov=1 then minznak:=i;

       end;

   end;
    //add(inttostr(pocetznakov));
     add('najvacsia pozicia '+inttostr(maxznak));
     add('najmensia pozicia '+inttostr(minznak));


       if palindrom(slovo) then add('je palindrom')
                            else add('neni palindrom');
  end;



end;

function tform1.palindrom(slovo: string):boolean;
 var
 I,dlzka:integer;
 slovo2,zaloha:string;
  begin
  dlzka:=length(slovo);
  zaloha:=slovo;
  slovo2:=slovo;
  for I := 1 to (dlzka div 2) do
    begin

    slovo[i]:=slovo[dlzka+1-I];
     slovo[dlzka+1-I]:= zaloha[i]

    end;
   memo1.Lines.Add(slovo);
    if slovo2=slovo then result:=true
                    else result:=false;



  end;

end.

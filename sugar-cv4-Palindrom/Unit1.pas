unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
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

function tform1.palindrom(slovo: string):boolean;
var
I:integer;
vymena:char;
  begin
  for I := 1 to length(slovo) div 2 do
    begin


      vymena:=slovo[I];
      slovo[I]:=Slovo[length(slovo)-i+1];
      slovo[length(slovo)-i+1]:=vymena;



    end;
    if slovo=edit1.text then

        result:=true

        else

        result:=false;

      Memo1.Lines.Add(' ');

  end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if palindrom(edit1.Text) then memo1.lines.Add('je to palindrom')
                          else memo1.Lines.Add('neni palindrom')

end;










{var
slovo:string ;
I:integer;
vymena:char;
begin
 //prve
 slovo:=Edit1.Text;
 for I := 1 to length(slovo) do
    begin
 memo1.Lines.Add(slovo[I]);
    end;
    Memo1.Lines.Add(' ');

    //druhe
 for I := length(slovo) downto 0 do
    begin

 memo1.Lines.Add(slovo[I]);
    end;
    Memo1.Lines.Add(' ');
    slovo:=Edit1.Text;
 for I := 1 to length(slovo) div 2 do
    begin


      vymena:=slovo[I];
      slovo[I]:=Slovo[length(slovo)-i+1];
      slovo[length(slovo)-i+1]:=vymena;
      memo1.Lines.Add(slovo);


    end;
    if slovo=edit1.text then
      begin
        memo1.Lines.Add('je to palindrom');
        end
        else
        begin
        memo1.Lines.Add('nie je to palindrom') ;
        end;
      Memo1.Lines.Add(' ');
    vymena:=slovo[1];
    slovo[1]:=slovo[length(slovo)];

    vymena:=slovo[length(slovo)];
 end;


}
end.

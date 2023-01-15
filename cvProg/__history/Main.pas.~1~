unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    ImageList1: TImageList;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);



  private
    { Private declarations }
    function fnarodnost(cislo:integer):string;
  public
    { Public declarations }

  end;



var
  Form2: TForm2;
   pocitadlo:byte;

implementation

{$R *.dfm}
uses zapis,udaje;



procedure TForm2.Button1Click(Sender: TObject);
begin
form1.show;
end;
procedure TForm2.Button2Click(Sender: TObject);
begin
label1.Caption:='pocet ziakov:0';
memo1.Clear;
pocitadlo:=0;
end;

procedure TForm2.Button3Click(Sender: TObject);
 var
 i:integer;
begin
memo1.clear;
     for I := 1 to pocitadlo do
     with zoznamziakov[pocitadlo] do
     begin
   memo1.lines.Add(InttoStr(I)+'. ziak');  //vypis kolkaty ziak
   memo1.lines.Add('');
  memo1.lines.Add('meno a priezvisko: '+Meno.Meno+' '+Meno.Priezvisko); //meno
  memo1.lines.Add('datum narodenia: '+InttoStr(DatumNar.Den)+'.'+
  InttoStr(DatumNar.Mesiac)+'.'+InttoStr(DatumNar.Rok));  //datumnar


 // memo1.Lines.Add('Narodnost: '+ fnarodnost(narodnost));   //narodnost


  if zoznamziakov[I].Pohlavie=pMuz then memo1.Lines.Add('Pohlavie: muz')
                                    else memo1.Lines.Add('Pohlavie: Zena');

  memo1.lines.Add('');
     end;
end;


end.

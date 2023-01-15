unit Vlastnosti;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, datatvary, Vcl.ExtCtrls ;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Sirka: TEdit;
    Xko: TEdit;
    Yko: TEdit;
    hrubkapera: TEdit;
    Label7: TLabel;
    Vyska: TEdit;
    Zmena: TButton;
    farbavypln: TColorBox;
    Label8: TLabel;
    Farbapero: TColorBox;
    Panel1: TPanel;
    cosom: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    //function zapisvlastnosti(list:tlist;item:integer):boolean;
    function zapisvlastnosti2(tvar:ttvar):boolean;
  end;

var
  Form2: TForm2;
  lol:ttvar;
implementation

{$R *.dfm}

 {
function tform2.zapisvlastnosti(list:tlist;item:integer):boolean;
//var
//zoznamtvarov:tzoznamtvarov;
//flist:tlist;
begin
//flist:=zoznamtvarov.liist;
//zoznamtvarov.Create;
lol:=list.Items[item];
cosom.caption:=lol.Nazov;
yko.Text:=inttostr(lol.hore);
xko.Text:=inttostr(lol.Vlavo);
sirka.Text:=inttostr(lol.Sirka);
vyska.Text:=inttostr(lol.Vyska);
farbapero.selected:=lol.FarbaCiary;
farbavypln.Selected:=lol.Farba;
hrubkapera.Text:=inttostr(lol.HrubkaCiary);
result:=ShowModal=mrOk;

end;
   }

 function tform2.zapisvlastnosti2(tvar:ttvar):boolean;

  begin
  cosom.Caption:=tvar.Nazov;
    yko.Text:=inttostr(tvar.hore);
    xko.Text:=inttostr(tvar.Vlavo);
    sirka.Text:=inttostr(tvar.Sirka);
    vyska.Text:=inttostr(tvar.Vyska);
    farbapero.selected:=tvar.FarbaCiary;
    farbavypln.Selected:=tvar.Farba;
    hrubkapera.Text:=inttostr(tvar.HrubkaCiary);
    lol:=tvar;
  result:=ShowModal=mrOk;

    lol.hore:=strtoint(yko.Text);
  lol.Vlavo:=strtoint(xko.Text);
  lol.Sirka:=strtoint(sirka.Text);
  lol.Vyska:=strtoint(vyska.Text);
  lol.FarbaCiary:=farbapero.selected;
  lol.Farba:=farbavypln.Selected;
  lol.HrubkaCiary:=strtoint(hrubkapera.Text);


  end;

end.

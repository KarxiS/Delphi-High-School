unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Samples.Spin;

type
  TForm3 = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Panel1: TPanel;
    Zapisat: TButton;
    Zrusit: TButton;
    ComboBox1: TComboBox;
    ImageList1: TImageList;
    procedure ZapisatClick(Sender: TObject);

    procedure ZrusitClick(Sender: TObject);
  private
    { Private declarations }
    procedure osobatest(uprava:integer);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
 uses zapis,udaje;
procedure TForm3.ZapisatClick(Sender: TObject);
begin
osobatest(uprava);
form3.Close;
end;

procedure TForm3.ZrusitClick(Sender: TObject);
begin
form3.Close;
end;

procedure tform3.osobatest;

  var
I:integer;
  begin


     with zoznamziakov[uprava] do
         begin
         if (edit1.Text='') or (edit2.Text='') then
         begin
         Messagedlg('bratm chyba meno alebo priezvisko:', mtError, [mbOk], 0);

         end
         else
         begin
                  //meno hej?
            meno.meno:=edit1.text;    //zapis do ..? nejakeho recordu ci co dop icc
            meno.priezvisko:=edit2.text;
                  //ze rok
            DatumNar.den:=spinedit1.Value;
            DatumNar.mesiac:=spinedit2.Value;
            DatumNar.rok:=spinedit3.Value;
                  //pohlavie
             case radiogroup1.itemindex of
                0:zoznamziakov[pocitadlo].Pohlavie:=pMuz;        //muz
                1:zoznamziakov[pocitadlo].Pohlavie:=pZena;       //zena
              end;
                   //narodnost
            narodnost:=pnarodnost(combobox1.itemindex);
            // je to aktualne, vymazat pre bezneho pouzivatela? admin dokaze dohladat .
            schovat:=false;

            Messagedlg('Upraveny ziak kod:'+inttostr(uprava), mtConfirmation, [mbOk], 0);
         end;
         end;



    end;

end.

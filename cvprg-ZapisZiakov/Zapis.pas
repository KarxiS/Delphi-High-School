unit Zapis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin, System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Zapisat: TButton;
    Zrusit: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    ImageList1: TImageList;
    procedure ZapisatClick(Sender: TObject);

    procedure osobatest;
    procedure ZrusitClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
     var
      Form1: TForm1;

implementation
uses main,udaje;
{$R *.dfm}
procedure tform1.osobatest;

var
I:integer;
  begin

     for I := 1 to pocitadlo do
     with zoznamziakov[pocitadlo] do
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
         end;



    end;

procedure TForm1.ZapisatClick(Sender: TObject);
begin
    pocitadlo:=pocitadlo+1;
    main.form2.Label1.Caption:='pocet ziakov='+Inttostr(pocitadlo);
    osobatest;


end;
procedure TForm1.ZrusitClick(Sender: TObject);
begin
form1.Close;
end;

end.

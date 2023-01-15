unit Unit1;

interface

uses
  Windows, Messages, SysUtils, System.UITypes, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.WinXCalendars, Vcl.ComCtrls, Vcl.Samples.Spin;
const
  MaxPocet = 100;

type
  TTrieda = (tr1a, tr1b, tr1c, tr2a, tr2b, tr2c, tr3a, tr3b, tr3c, tr4a, tr4b, tr4c, tr4d);
  TPohlavie = (phMuz, phZena);
  TNarodnost = (nrSlo, nrCes, nrMad, nrPol, nrRus, nrRom, nrUkr, nrIna);



  TOsoba = record
    Meno: String;
    Priezvisko: String;
    DatumNarodenia: TDateTime;
    Pohlavie: TPohlavie;
    Narodnost: TNarodnost;
    Trieda: TTrieda;
    

  end;
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox4: TComboBox;
    Label5: TLabel;
    ComboBox5: TComboBox;
    Label6: TLabel;
    ComboBox6: TComboBox;
    Memo1: TMemo;
    Button2: TButton;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    SpinEdit1: TSpinEdit;
    Label9: TLabel;
    SpinEdit2: TSpinEdit;
    Button3: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure VpisanieZiaka;
    procedure VypisanieZiaka;
    procedure VymazanieZiaka(pozicia: Integer);
    procedure PridanieNaPoz(pozicia: Integer);
    function PohlavieToStr(pohlavie: TPohlavie):String;
    function TriedaToStr(trieda: TTrieda):String;
    function NarToStr(nar: TNarodnost):String;
    { Public declarations }
  end;

var
  Form1: TForm1;

  ZoznamZiakov: array[1..MaxPocet] of TOsoba;
  Osoba: TOsoba;
  pocetZiakov: Integer = 0;


implementation

function TForm1.NarToStr(nar: TNarodnost):String;
begin
  case nar of
    nrSlo: result:= 'Slovenská';
    nrCes: result:= 'Èeská';
    nrMad: result:= 'Maïarská';
    nrPol: result:= 'Po¾ská';
    nrRus: result:= 'Rusínská';
    nrRom: result:= 'Rómska';
    nrUkr: result:= 'Ukrajinská';
    nrIna: result:= 'Iná';
  end;
end;

function TForm1.TriedaToStr(trieda: TTrieda):String;
begin
  case trieda of
    tr1a: result:= '1.A';
    tr1b: result:= '1.B';
    tr1c: result:= '1.C';
    tr2a: result:= '2.A';
    tr2b: result:= '2.B';
    tr2c: result:= '2.C';
    tr3a: result:= '3.A';
    tr3b: result:= '3.B';
    tr3c: result:= '3.C';
    tr4a: result:= '4.A';
    tr4b: result:= '4.B';
    tr4c: result:= '4.C';
    tr4d: result:= '4.D';


  end;
end;

function TForm1.PohlavieToStr(pohlavie: TPohlavie):String;
begin
  case pohlavie of
    phMuz: result:= 'Muž';
    phZena: result:= 'Žena';
  end;
end;


{$R *.dfm}
procedure TForm1.VpisanieZiaka;
begin
  inc(pocetZiakov);
  with ZoznamZiakov[pocetZiakov] do
  begin
    Meno := Edit1.Text;
    Priezvisko := Edit2.Text;
    Narodnost := TNarodnost(ComboBox5.ItemIndex);
    Trieda := TTrieda(ComboBox6.ItemIndex);
    Pohlavie := TPohlavie(ComboBox4.ItemIndex);
    DatumNarodenia := TDateTime(DateTimePicker1.Date);
  end;
end;

procedure Tform1.VypisanieZiaka;
var
I,cisloZiaka: Integer;
begin
  if pocetZiakov = 0 then
  begin
    Memo1.Clear;
    Memo1.Lines[0]:=('V databáze sa nenachádzajú žiadny žiaci!');
  end
  else
    begin
      Memo1.Lines.Clear;
      cisloZiaka:= 1;
      for I := 1 to pocetZiakov do
      begin
      with Memo1.Lines, zoznamZiakov[cisloZiaka] do
        begin
        Add(Meno+' '+Priezvisko);
        Add('Pohlavie: '+PohlavieToStr(Pohlavie));
        Add('Dátum Narodenia: '+DateToStr(DatumNarodenia));
        Add('Národnos: '+NarToStr(Narodnost));
        Add('Trieda: '+TriedaToStr(Trieda));
        Add('_______________________');
        cisloZiaka:=cisloZiaka+1;
        end;
      end;
    end;
end;

procedure Tform1.VymazanieZiaka(pozicia: Integer);
var
I:integer;
begin
 if (pozicia >= 1) and (pozicia <= pocetZiakov) then
  begin
    for I := pozicia to pocetZiakov -1 do
      ZoznamZiakov[i]:= ZoznamZiakov[i+1];
    dec(pocetZiakov);
  end;
end;

procedure Tform1.PridanieNaPoz(pozicia: Integer);
var
i:Integer;
begin
  if (pocetZiakov < MaxPocet) and (pozicia >= 1) and (pozicia <= pocetZiakov +1) then
  begin
    for I :=  pocetZiakov downto pozicia do
      ZoznamZiakov[i+1] := ZoznamZiakov[i];
    with ZoznamZiakov[pozicia] do
      begin
        Meno := Edit1.Text;
        Priezvisko := Edit2.Text;
        Narodnost := TNarodnost(ComboBox5.ItemIndex);
        Trieda := TTrieda(ComboBox6.ItemIndex);
        Pohlavie := TPohlavie(ComboBox4.ItemIndex);
        DatumNarodenia := TDateTime(DateTimePicker1.Date);
      end;
  end;
    Inc(pocetZiakov);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('Nebolo zadané meno žiaka.',mtWarning,[mbOk],0,mbOk)
  else if Edit2.Text = '' then MessageDlg('Nebolo zadané priezvisko žiaka.',mtWarning,[mbOk],0,mbOk)
  else
    begin
      if (CheckBox1.Checked = False) or (SpinEdit2.Value = 0) then VpisanieZiaka
      else if SpinEdit2.Value > 0 then PridanieNaPoz(SpinEdit2.Value);
      Label8.Caption:=IntToStr(pocetZiakov);
      Edit1.Clear;
      Edit2.Clear;
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  VypisanieZiaka;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
VymazanieZiaka(SpinEdit1.Value);
Label8.Caption:=IntToStr(pocetZiakov);
VypisanieZiaka;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
  SpinEdit2.Enabled:=True
  else
  SpinEdit2.Enabled:=False;
end;

end.

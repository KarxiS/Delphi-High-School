unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    lbPocet: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  DataEvd, F_Zapis;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if ZapisOsoby then
    lbPocet.Caption := 'PoËet ûiakov = ' + IntToStr(PocetOsob);
end;

procedure TForm1.Button3Click(Sender: TObject);

  function TxtPohlavie(ph: TPohlavie): String;
  begin
    if ph = phMuz then
      Result := 'muû'
    else
      Result := 'ûena';
  end;

  function TxtDatumNar(ADen, AMesiac, ARok: Integer): String;
  begin
    Result := 'D·tum narodenia: ' + IntToStr(ADen) + '.' +IntToStr(AMesiac) + '.' +IntToStr(ARok);
  end;

  function TxtNarodnost(nr: TNarodnost): String;
  begin
    case nr of
      nrSlovenska:  Result := 'Slovensk·';
      nrMadarska: Result := 'MaÔarsk·';
      nrPolska: Result := 'Polsk·';
      nrCeska: Result := '»esk·';
      nrUkrajinska: Result := 'Ukrajinsk·';
      nrNemecka: Result := 'Nemeck·';
      nrRomska: Result := 'RÛmska';
    else
      Result := 'in·'
    end;
    Result := 'N·rodnosù: ' + Result;
  end;

var
  i: Integer;
begin
  Memo1.Lines.Clear;
  for i  := 1 to PocetOsob do
    with ZoznamOsob[i] do
    begin
      Memo1.Lines.Add(Meno + ' ' + Priezvisko);
      Memo1.Lines.Add(TxtPohlavie(Pohlavie));
      Memo1.Lines.Add(TxtDatumNar(DatumNarodenia.Den, DatumNarodenia.Mesiac, DatumNarodenia.Rok));
      Memo1.Lines.Add(TxtNarodnost(Narodnost));

      Memo1.Lines.Add('');
      Memo1.Lines.Add('');
    end;
end;

end.

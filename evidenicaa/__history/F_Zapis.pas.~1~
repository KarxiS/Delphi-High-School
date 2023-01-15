unit F_Zapis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Samples.Spin;

type
  TFormZapisOsoby = class(TForm)
    Label1: TLabel;
    edMeno: TEdit;
    edPriezvisko: TEdit;
    Label2: TLabel;
    gbDatum: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edDen: TSpinEdit;
    edMesiac: TSpinEdit;
    edRok: TSpinEdit;
    gbPohlavie: TGroupBox;
    rbMuz: TRadioButton;
    rbZena: TRadioButton;
    edNarodnost: TComboBox;
    Label6: TLabel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    Panel1: TPanel;
    procedure btnOkClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure ZmazatData;
  public
    { Public declarations }
  end;

var
  FormZapisOsoby: TFormZapisOsoby;


function ZapisOsoby: Boolean;

implementation

{$R *.dfm}

uses
  DataEvd;


function ZapisOsoby: Boolean;
begin
  FormZapisOsoby.ZmazatData;
  Result := FormZapisOsoby.ShowModal = mrOk;
end;

procedure TFormZapisOsoby.btnOkClick(Sender: TObject);
begin
  if edPriezvisko.Text <> '' then
  begin
    Inc(PocetOsob);
    with ZoznamOsob[PocetOsob] do
    begin
      Meno := edMeno.Text;
      Priezvisko := edPriezvisko.Text;
      DatumNarodenia.Den := edDen.Value;
      DatumNarodenia.Mesiac := edMesiac.Value;
      DatumNarodenia.Rok := edRok.Value;
      if rbMuz.Checked then
        Pohlavie := phMuz
      else
        Pohlavie := phZena;
      Narodnost := TNarodnost(edNarodnost.ItemIndex);
    end;
  end;
end;


procedure TFormZapisOsoby.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (edPriezvisko.Text = '') and (ModalResult = mrOk) then
  begin
    CanClose := False;
    MessageDlg('Priezvisko musÌ byù zadanÈ', mtError, [mbOk], 0);
  end;

end;

procedure TFormZapisOsoby.ZmazatData;
begin
  edMeno.Text := '';
  edPriezvisko.Text := '';
  edDen.Value := 1;
  edMesiac.Value := 1;
  rbMuz.Checked := True;

  edNarodnost.ItemIndex := 0;
end;

end.

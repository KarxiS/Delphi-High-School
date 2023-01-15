unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin, DataTvary,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    FarbaV: TColorBox;
    Label1: TLabel;
    FarbaO: TColorBox;
    Label2: TLabel;
    sHrubka: TSpinEdit;
    Label3: TLabel;
    sVlavo: TSpinEdit;
    Label4: TLabel;
    sHore: TSpinEdit;
    sSirka: TSpinEdit;
    sVyska: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FZoznamTvarov:TZoznamTvarov;
    BPoloha:ttvar;

    { Private declarations }
  public
    function zapiscislo(item:byte):boolean;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function tform2.zapiscislo(item: Byte):boolean;
begin
  Bpoloha:= FZoznamTvarov.GetTvar(item);
  sVlavo.Value:= Bpoloha.Vlavo;
  sHore.Value:= Bpoloha.Hore;
  sSirka.Value:= Bpoloha.Sirka;
  SVyska.Value:= Bpoloha.Vyska;
  FarbaV.Selected:= Bpoloha.Farba;
  FarbaO.Selected:= Bpoloha.FarbaCiary;
  sHrubka.Value:= Bpoloha.HrubkaCiary;

  result:= showmodal=mrOk;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  bpoloha.Vlavo:= sVlavo.Value;
  Bpoloha.Hore:= sHore.Value;
  Bpoloha.Sirka:= sSirka.Value;
  Bpoloha.Vyska:= sVyska.Value;
  Bpoloha.Farba:= FarbaV.Selected;
  Bpoloha.FarbaCiary:= FarbaO.Selected;
  Bpoloha.HrubkaCiary:= sHrubka.Value;
  Form2.Close;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  form2.Close;
end;

end.

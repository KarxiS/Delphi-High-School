unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type





  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses unit2;
procedure TForm1.Button1Click(Sender: TObject);
var
sDatum: TDatum;
begin
sdatum:=tdatum.create;
  sDatum.Den:=spinedit1.value;
  sdatum.mesiac:=spinedit2.value;
  Sdatum.rok:=spinedit3.value;
  memo1.Lines.Add(Sdatum.StrDatum);

 sdatum.Free;
end;


end.

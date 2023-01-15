unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if SpinEdit1.Value < 0 then
    Edit1.Text := IntToStr(SpinEdit1.Value) + ' je záporné èíslo'
  else
    Edit1.Text := IntToStr(SpinEdit1.Value) + ' je kladné èíslo';

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  S: String;
begin
  case SpinEdit1.Value of
    3,4,5:     S := 'jar';
    6,7,8:     S := 'leto';
    9,10,11:   S := 'jeseò';
    12,1,2:    S := 'zima';
  else
    Edit1.Text := IntToStr(SpinEdit1.Value) + '  nie je mesiac v roku';
    Exit;
  end;
  Edit1.Text := IntToStr(SpinEdit1.Value) + '. mesiac je ' + S;
end;



procedure TForm1.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Èísla od 1 do ' + IntToStr(SpinEdit1.Value));
  for i := 1 to SpinEdit1.Value do
  begin
    Memo1.Lines.Add(IntToStr(i));
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Èísla delitelné èíslom 7 alebo ' + IntToStr(SpinEdit2.Value));
  for i := 1 to SpinEdit1.Value do
  begin
    if ((i mod 7) = 0) or ((i mod SpinEdit2.Value) = 0)  then
    begin
      Memo1.Lines.Add(IntToStr(i));
    end;
  end;
end;

end.



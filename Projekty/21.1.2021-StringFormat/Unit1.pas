unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function vymazslovo(slovo:string):string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
vymazslovo(edit1.Text);

end;

function tform1.vymazslovo(slovo: string):string;
 var
ret1,ret2,ret3:string;
begin
ret1:='ahoj';
ret2:='svet';
ret3:=ret1+' '+ret2;
label1.caption:=ret3;
label2.Caption:=inttostr(pos(' ',ret3));
insert('pekny',ret3,pos(' ',ret3)+1);
label1.Caption:=ret3;
delete(ret3,pos(slovo,ret3),length(slovo)+1);

end;

end.

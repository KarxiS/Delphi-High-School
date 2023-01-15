unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    CheckListBox1: TCheckListBox;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure zobrazrc;

  end;


var
  Form1: TForm1;
  fvstup:textfile;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
rc:string;
d,m,r:integer;
kod:string;
begin
  //zobrazrc;
  assignfile(fvstup,'vstup.txt');
  reset(fvstup);
  while NOT (EOF(fvstup)) do
  begin
    readln(fvstup,rc);
    r:=strtoint(copy(rc,1,2));
    m:=strtoint(copy(rc,3,2));
    d:=strtoint(copy(rc,5,2));

    if length(rc)=11 then kod:=copy(rc,pos('/',rc)+1,4)
                      else kod:=copy(rc,pos('/',rc)+1,3);
    if m>12 then m:=m-50;
    if (r<54) AND (length(kod)=4) then r:=r+2000
                                else r:=r+1900;
    memo1.Lines.Add(rc+' '+inttostr(d)+'.'+inttostr(m)+'.'+inttostr(r))

  end;
  closefile(fvstup);
end;

procedure tform1.zobrazrc;
var
rc:string;
begin

  assignfile(fvstup,'vstup.txt');
  reset(fvstup);
  while NOT (EOF(fvstup)) do
  begin
    readln(fvstup,rc);
    memo1.Lines.Add(rc);
  end;
  closefile(fvstup);
end;
end.

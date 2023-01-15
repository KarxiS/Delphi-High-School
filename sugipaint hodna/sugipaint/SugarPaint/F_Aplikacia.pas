unit F_Aplikacia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, DataTvary, vlastnosti, system.types,
  Vcl.Samples.Spin, Vcl.Buttons, Vcl.Menus, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  IDETheme.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ToolWin,
  Vcl.ActnCtrls ;

type


  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CheckListBox1: TCheckListBox;
    Splitter1: TSplitter;
    Panel3: TPanel;
    PaintBox1: TPaintBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    ActionManager1: TActionManager;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    ImageList1: TImageList;
    Subor1: TMenuItem;
    var1: TMenuItem;
    Farba1: TMenuItem;
    aaObdlznik: TAction;
    aaElipsa: TAction;
    aaKriz: TAction;
    aaSipka: TAction;
    fBiela: TAction;
    fModra: TAction;
    fRuzova: TAction;
    TvarNastavenie: TAction;
    ActionToolBar1: TActionToolBar;
    Ulozit1: TMenuItem;
    Load1: TMenuItem;
    Vymazat1: TMenuItem;
    Obdlznik1: TMenuItem;
    Kriz1: TMenuItem;
    Elipsa1: TMenuItem;
    Sipka1: TMenuItem;
    Modra1: TMenuItem;
    Ruzova1: TMenuItem;
    Biela1: TMenuItem;
    Obdlznik2: TMenuItem;
    Elipsa2: TMenuItem;
    Kriz2: TMenuItem;
    Sipka2: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    //procedure btnObdlznikClick(Sender: TObject);

   //procedure TrojuholnikClick(Sender: TObject);
   // procedure krizClick(Sender: TObject);
   // procedure SipkaClick(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2MouseEnter(Sender: TObject);
    procedure Button2MouseLeave(Sender: TObject);
    procedure aaObdlznikExecute(Sender: TObject);
    procedure aaElipsaExecute(Sender: TObject);
    procedure aaKrizExecute(Sender: TObject);
    procedure aaSipkaExecute(Sender: TObject);
//    procedure KtoreEditovat(Sender: TObject; Shift: TShiftState; X,
 // Y: Integer );
    procedure TvarNastavenieExecute(Sender: TObject);
    procedure aaObdlznikUpdate(Sender: TObject);
    procedure aaElipsaUpdate(Sender: TObject);
    procedure aaKrizUpdate(Sender: TObject);
    procedure aaSipkaUpdate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure fModraExecute(Sender: TObject);
    procedure fRuzovaExecute(Sender: TObject);
    procedure fBielaExecute(Sender: TObject);
    procedure Ulozit1Click(Sender: TObject);
    procedure Load1Click(Sender: TObject);
  private
    FZoznamTvarov: TZoznamTvarov;
    fdruhtvaru:tdruhtvaru;
    dovolmi:boolean;
  public
    { Public declarations }
   function urcovac:integer;
  end;

var
  Form1: TForm1;
  atvar:ttvar;
  ttfarba:TColor;
implementation

{$R *.dfm}

function tform1.urcovac:integer;
var
Point:tpoint;
I:integer;
begin
GetCursorPos(point);
//point.X:=50;
//point.Y:=50;
label2.Caption:=inttostr(point.X);
  for I := 0 to flist.Count-1 do
    if (atvar.Vlavo>point.X) or ((atvar.Vlavo+atvar.Sirka)<point.X) then if  (atvar.hore>point.Y) or ((atvar.hore+atvar.vyska)<point.Y)then checklistbox1.Checked[I] ;
   //skusam vypln

 end;




procedure TForm1.Button1Click(Sender: TObject);
var
lol:ttvar;
  begin
  // if
  form2.zapisvlastnosti(checklistbox1.itemindex); //then
  paintbox1.Invalidate;
  end;

procedure TForm1.Button2Click(Sender: TObject);
begin
urcovac;
end;

procedure TForm1.Button2MouseEnter(Sender: TObject);
begin
//button2.

end;

procedure TForm1.Button2MouseLeave(Sender: TObject);
begin
//button2.Color:=clWhite
end;

procedure TForm1.CheckListBox1ClickCheck(Sender: TObject);
var
atvar:ttvar;
  begin
   atvar:= fzoznamtvarov.Gettvar(checklistbox1.ItemIndex);
   atvar.Zobrazit:=checklistbox1.Checked[Checklistbox1.ItemIndex];
   paintbox1.Invalidate;
  end;



procedure TForm1.fBielaExecute(Sender: TObject);
begin
ttfarba:=clWhite;
end;

procedure TForm1.fModraExecute(Sender: TObject);
begin
ttfarba:=clBlue;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FZoznamTvarov := TZoznamTvarov.Create;
  fdruhtvaru:=tvneurceny;
  doublebuffered:=true;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FZoznamTvarov.Free;
end;


procedure TForm1.fRuzovaExecute(Sender: TObject);
begin
 ttfarba:=clFuchsia;
end;



procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  begin
  if  Button = mbLeft  then
    begin
    if fdruhtvaru<> tvneurceny then
      begin
      atvar:=fzoznamtvarov.PridatTvar(fdruhtvaru);
      atvar.Hore:=Y;
      atvar.Vlavo:=X;
      atvar.Farba:=ttfarba;
      atvar.HrubkaCiary:=3;
      atvar.FarbaCiary:=clBlack;
      dovolmi:=true;
     end;
    end;
  end;

procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer );

begin
if dovolmi then
 begin
 atvar.Sirka:=x-atvar.Vlavo;
 atvar.Vyska:=y-atvar.Hore;
 paintbox1.invalidate;

    if atvar.Sirka=0 then atvar.Sirka:=20;
   if atvar.vyska=0 then atvar.vyska:=20;


 end;

 label1.caption:=inttostr(x)+';'+inttostr(y);
end;

procedure TForm1.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if (fdruhtvaru<> tvneurceny) and (Button = mbLeft)  then
      begin

      ///if (atvar.Sirka<20) and (atvar>0) then atvar.Sirka:=20;
      //if atvar.Vyska<20 then  atvar.Vyska:=20;
        checklistbox1.items.Add(atvar.Nazov);
        checklistbox1.Checked[Checklistbox1.Count-1]:=true;
        checklistbox1.itemindex:=checklistbox1.Count-1;
      fdruhtvaru:=tvneurceny;
      paintbox1.Cursor:=crDefault;
      paintbox1.Invalidate;
      dovolmi:=false;
      end;
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  FZoznamTvarov.NakresliTvary(PaintBox1.Canvas);


end;








procedure TForm1.TvarNastavenieExecute(Sender: TObject);

var
lol:ttvar;
  begin
  // if
  form2.zapisvlastnosti(checklistbox1.itemindex); //then
  paintbox1.Invalidate;
  end;


procedure TForm1.Ulozit1Click(Sender: TObject);
begin
 if savedialog1.Execute then
  begin
    fzoznamtvarov.UlozMi(SaveDialog1.FileName);
  end;
end;

procedure TForm1.Load1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    fzoznamtvarov.NacitajMi(OpenDialog1.FileName);
  end;
end;

procedure TForm1.aaElipsaExecute(Sender: TObject);
begin
fdruhtvaru:=tvElipsa;
Paintbox1.cursor:= crCross;
end;

procedure TForm1.aaElipsaUpdate(Sender: TObject);
begin
 aaElipsa.Checked:= (Fdruhtvaru=tvElipsa);
end;

procedure TForm1.aaKrizExecute(Sender: TObject);
begin
fdruhtvaru:=tvKriz;
Paintbox1.cursor:= crCross;
end;

procedure TForm1.aaKrizUpdate(Sender: TObject);
begin
 aaKriz.Checked:= (Fdruhtvaru=tvKriz);
end;

procedure TForm1.aaObdlznikExecute(Sender: TObject);
begin
fdruhtvaru:=tvObdlznik;
Paintbox1.cursor:= crCross;
end;

procedure TForm1.aaObdlznikUpdate(Sender: TObject);
begin
  aaObdlznik.Checked:= (Fdruhtvaru=tvObdlznik);
end;

procedure TForm1.aaSipkaExecute(Sender: TObject);
begin
fdruhtvaru:=tvSipka;
Paintbox1.cursor:= crCross;
end;

procedure TForm1.aaSipkaUpdate(Sender: TObject);
begin
aaSipka.Checked:= (Fdruhtvaru=tvSipka);
end;

end.

unit F_Aplikacia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, DataTvary,system.types,
  System.Actions, Vcl.ActnList, Vcl.ActnMan,
  System.ImageList, Vcl.ImgList, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ToolWin, Vcl.ActnCtrls;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    CheckListBox1: TCheckListBox;
    Panel3: TPanel;
    PaintBox1: TPaintBox;
    MainMenu1: TMainMenu;
    Subor1: TMenuItem;
    Tvar1: TMenuItem;
    Obdlznik1: TMenuItem;
    Elipsa1: TMenuItem;
    Trojuholnik1: TMenuItem;
    Kriz1: TMenuItem;
    Sipka1: TMenuItem;
    Nastavenie1: TMenuItem;
    PopupMenu1: TPopupMenu;
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    aaObdlznik: TAction;
    aaElipsa: TAction;
    aaTrojuholnik: TAction;
    aaKriz: TAction;
    aaSipka: TAction;
    aaNastavenie: TAction;
    Label1: TLabel;
    obdlznik2: TMenuItem;
    aaElipsa1: TMenuItem;
    aaTrojuholnik1: TMenuItem;
    aaKriz1: TMenuItem;
    aaSipka1: TMenuItem;
    ActionToolBar1: TActionToolBar;
    Farby1: TMenuItem;
    Modra1: TMenuItem;
    Zelena1: TMenuItem;
    Modra2: TMenuItem;
    aaCervena: TAction;
    aaZelena: TAction;
    aaModra: TAction;
    Farba1: TMenuItem;
    aaCervena1: TMenuItem;
    aaZelena1: TMenuItem;
    aaModra1: TMenuItem;
    vary1: TMenuItem;
    Nastavenie2: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Ulozit1: TMenuItem;
    Nacitat1: TMenuItem;
    aaUlozit: TAction;
    aaNacitat: TAction;
    Label2: TLabel;
    aaVymazatVsetko: TAction;
    Novy1: TMenuItem;
    Novy: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure aaTvarExecute(Sender: TObject);
    procedure aaNastavenieExecute(Sender: TObject);
    procedure aaCervenaExecute(Sender: TObject);
    procedure aaZelenaExecute(Sender: TObject);
    procedure aaModraExecute(Sender: TObject);
    procedure aaTvarUpdate(Sender: TObject);
    procedure aaUlozitExecute(Sender: TObject);
    procedure aaNacitatExecute(Sender: TObject);
    procedure aaVymazatVsetkoExecute(Sender: TObject);
  private
    FZoznamTvarov: TZoznamTvarov;
    FDruhTvaru: TDruhTvaru;
    Apoloha:Ttvar;
    FZmena:boolean;
    AFarba:TColor;
  public
    { Public declarations }
  end;


var
  Form1: TForm1;



implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FZoznamTvarov := TZoznamTvarov.Create;
  DoubleBuffered:= True;
  AFarba:= clWhite;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FZoznamTvarov.Free;
end;

procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
P:Tpoint;
begin
  if shift=[ssLeft]then
  begin
    if FDruhTvaru<>tvNeurceny then
    begin
      APoloha:= FZoznamTvarov.PridatTvar(FDruhTvaru);
      Apoloha.Farba:=AFarba;
      Apoloha.FarbaCiary:=clBlack;
      Apoloha.HrubkaCiary:= 2;
      APoloha.Vlavo:= X;
      APoloha.Hore:= Y;
      FZmena:= true;
    end;
  end;

  P.X:= X;
  P.Y:= Y;
  FZoznamTvarov.ZiskajTvar(P);
end;

procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if FZmena then
  begin
    Apoloha.Sirka:=  X - Apoloha.Vlavo;
    Apoloha.Vyska:= Y - Apoloha.Hore;
    Paintbox1.Invalidate;
  end;
  label1.Caption:= inttostr(X) +';'+ inttostr(Y);
end;

procedure TForm1.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if FZmena then
  begin
    with checklistbox1 do
    begin
      Items.Add(apoloha.Nazov);
      Checked[checklistbox1.Count-1]:=true;
      ItemIndex:= Count - 1;
    end;
    label2.Caption:=inttostr(checklistbox1.Count);
    AFarba:= clWhite;
    FDruhTvaru:= tvNeurceny;
    Paintbox1.Cursor:=crDefault;
    PaintBox1.Invalidate;
    FZmena:= False;
    end;
end;



procedure TForm1.aaNastavenieExecute(Sender: TObject);
begin
  form2.zapiscislo(checklistbox1.itemindex);
  paintbox1.Invalidate;
end;
procedure TForm1.CheckListBox1ClickCheck(Sender: TObject);
begin
  Apoloha:= fzoznamtvarov.GetTvar(checklistbox1.itemindex);
  Apoloha.Zobrazit:= Checklistbox1.Checked[Checklistbox1.ItemIndex];
  paintbox1.Invalidate;

end;

////////////////////////////////////////////////////////////

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  FZoznamTvarov.NakresliTvary(PaintBox1.Canvas);

end;

////////////////////////////////////////////////////////////

procedure TForm1.aaTvarExecute(Sender: TObject);
begin
  FDruhtvaru:=TDruhTvaru(TAction(Sender).Tag);
  Paintbox1.cursor:= crCross;
end;

procedure TForm1.aaTvarUpdate(Sender: TObject);
begin
  TAction(Sender).Checked:=(FdruhTvaru=TDruhTvaru(TAction(Sender).Tag));
end;

procedure TForm1.aaUlozitExecute(Sender: TObject);
begin
  if SaveDialog1.Execute then
    begin
      FZoznamTvarov.UlozitVsetko(SaveDialog1.FileName);
    end;
end;

procedure TForm1.aaNacitatExecute(Sender: TObject);
var
i:integer;
begin
  if OpenDialog1.Execute then
  begin
    FZoznamTvarov.ZmazatVsetko;
    FZoznamTvarov.NacitatVsetko(OpenDialog1.FileName);
    Checklistbox1.Clear;
    for I := 0 to FZoznamTvarov.PocetTvarov-1 do
    begin
      Apoloha:= FZoznamtvarov.GetTvar(i);
      checklistbox1.Items.Add(apoloha.Nazov);
      Checklistbox1.Checked[checklistbox1.Count-1]:=apoloha.Zobrazit;
      Checklistbox1.ItemIndex:= checklistbox1.Count - 1;
    end;
    label2.Caption:= inttostr(checklistbox1.Count);
    paintbox1.Invalidate;
  end;
end;

procedure TForm1.aaVymazatVsetkoExecute(Sender: TObject);
begin
  FZoznamTvarov.ZmazatVsetko;
  Checklistbox1.Clear;
  Label2.Caption:= inttostr(checklistbox1.Count);
  Paintbox1.Invalidate;

end;

procedure TForm1.aaCervenaExecute(Sender: TObject);
begin
  AFarba:= clRed;
end;

procedure TForm1.aaZelenaExecute(Sender: TObject);
begin
  AFarba:= clGreen;
end;

procedure TForm1.aaModraExecute(Sender: TObject);
begin
  AFarba:=clBlue;
end;

end.

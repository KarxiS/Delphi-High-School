unit DataTvary;

interface

uses
  Classes, Graphics, types;

type
  TDruhTvaru = (tvNeurceny, tvObdlznik, tvElipsa, tvTrojuholnik, tvKriz, tvSipka);

  TTvar = class(TObject)
  private
    FDruhTvaru: TDruhTvaru;
    FFarba: TColor;
    FVlavo:integer;
    fsirka:integer;
    fhore:integer;
    fvyska:integer;
    ffarbaciary:tcolor;
    fhrubkaciary:integer;
    fnazov:string;
    fzobrazit:boolean;


  protected
   function getnazov:string;virtual;

  public
    constructor Create(druh:tdruhtvaru);
    procedure ulozitdata(subor:TFilestream);virtual;
    procedure nacitatdata(subor:tfilestream);virtual;
    procedure Nakreslit(ACanvas: TCanvas); virtual;
    property DruhTvaru: TDruhTvaru read FDruhTvaru write FDRUHTvaru;
    property Farba: TColor read ffarba write ffarba;
    property FarbaCiary: TColor read ffarbaciary write ffarbaciary ;
    property Hore: Integer read FHore write FHore;
    property HrubkaCiary: integer read fhrubkaciary write fhrubkaciary;
    property Nazov: String read getnazov write fnazov;
    property Sirka: Integer read FSirka write FSirka;
    property Vlavo: Integer read FVlavo write FVlavo;
    property Vyska: Integer read FVyska write FVyska;
    property Zobrazit: Boolean read fzobrazit write fzobrazit;

  end;

  TObdlznik = class(TTvar)
  private
    function getnazov:string;override;
  public


    procedure Nakreslit(ACanvas: TCanvas); override;
  end;

  TElipsa = class(TTvar)
  private
    function getnazov:string;override;
  public
   procedure Nakreslit(ACanvas: TCanvas); override;
  end;

  TTrojuholnik = class(TTvar)
  private
    function getnazov:string;override;
  public
   procedure Nakreslit(ACanvas: TCanvas); override;
  end;

  TKriz = class(TTvar)
  private
    function getnazov:string;override;
  public
   procedure Nakreslit(ACanvas: TCanvas); override;
  end;

  tSipka = class(TTvar)
  private
    function getnazov:string;override;
  public
   procedure Nakreslit(ACanvas: TCanvas); override;
  end;

  TZoznamTvarov = class(TObject)
  private

  public

    constructor Create;
    destructor Destroy; override;
    function GetTvar(AIndex: Integer): TTvar;
    procedure OdstranitTvar(AIndex: Integer);
    function PridatTvar(ADruhTvaru: TDruhTvaru): TTvar;
    procedure NakresliTvary(ACanvas: TCanvas);
    procedure ZmazatVsetko;
    procedure UlozMi(ANazovSuboru: String);
    procedure NacitajMi(ANazovSuboru: String);
  end;


  var
  FList: TList;

implementation


constructor TTvar.Create(druh:tdruhtvaru);
begin
FDruhTvaru := druh;
  FFarba := clYellow;
  FVlavo:=100;
  FSirka:=20;
  FHore:=50;
  fvyska:=20;
  fzobrazit:=true;
  ffarbaciary:=clBlack;
  fhrubkaciary:=2;

end;
function ttvar.getnazov;
begin
  result:= 'neurceny';
end;


procedure tzoznamtvarov.NacitajMi(ANazovSuboru: string);
var
astream:tfilestream;
i:integer;
atvar:ttvar;
acanvas:tcanvas;
begin
astream:=tfilestream.Create(anazovsuboru,fmcreate);

 tzoznamtvarov.Create;
for I := 0 to flist.Count-1 do
  begin
  atvar.nacitatdata(astream);
  flist[i]:=atvar;


  end;
  ATvar.Nakreslit(ACanvas);
end;

  procedure tzoznamtvarov.UlozMi(anazovsuboru:string);
var
astream:tfilestream;
i:integer;
atvar:ttvar;
acanvas:tcanvas;
  begin


      astream := TFileStream.Create(anazovsuboru, fmCreate);     // unit System.Classes
      for I := 0 to flist.Count-1 do
        begin
         atvar:=flist[i] ;
         atvar.ulozitdata(astream);

        end;


   astream.Free;


  end;

procedure ttvar.nacitatdata(subor: TFileStream);
begin





end;

procedure ttvar.ulozitdata(subor: TFileStream);
begin

end;

procedure TTvar.Nakreslit(ACanvas: TCanvas);
begin

end;

function tobdlznik.getnazov;
begin
  result:= 'obdlznik';
  self.nazov:='obdlznik';
end;
procedure TObdlznik.Nakreslit(ACanvas: TCanvas);
begin
if FZobrazit=true then
  begin
    acanvas.Pen.Width:=fhrubkaciary;
  acanvas.Pen.Color:=ffarbaciary;
  ACanvas.Brush.Color := FFarba;
  ACanvas.Rectangle(FVlavo, FHore, FVlavo+Fsirka, fhore+fvyska);
   end;

end;

function ttrojuholnik.getnazov;
begin
  result:= 'trojuholnik';
  self.nazov:='trojuholnik';
end;


procedure TTrojuholnik.Nakreslit(ACanvas: TCanvas);
var
P1,P2,P3:Tpoint;
begin
  if FZobrazit=true then
  begin
  P1.X:=fvlavo;
  P1.Y:=fhore+fvyska;

  P2.X:=fvlavo+fsirka;
  P2.Y:=fhore+fvyska;

  P3.X:=fvlavo+sirka div 2;
  P3.Y:=fhore;
  acanvas.Pen.Width:=fhrubkaciary;
  acanvas.Pen.Color:=ffarbaciary;
  ACanvas.Brush.Color:=FFarba;
  ACanvas.Polygon([P1,P2,P3]);
  end;
end;

function tkriz.getnazov;
begin
  result:= 'kriz';
  self.nazov:='kriz';
end;

procedure TKriz.Nakreslit(ACanvas: TCanvas);
var
p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12:Tpoint;
begin
if FZobrazit=true then
  begin
  p1.X:=fvlavo;
  p1.y:=fhore+(vyska div 3);

  p2.X:=fvlavo;
  p2.y:=fhore+(vyska div 3)*2;

  p3.X:=fvlavo+(fsirka div 3);
  p3.y:=fhore+((fvyska div 3 )*2) ;

  p4.X:=fvlavo+(fsirka div 3);
  p4.y:=fhore+fvyska;

  p5.X:=fvlavo+((fsirka div 3)*2);
  p5.y:=fhore+fvyska;

  p6.X:= fvlavo+(fsirka div 3)*2;
  p6.y:=fhore+(fvyska div 3 )*2 ;

  p7.X:=fvlavo+fsirka;
  p7.y:=fhore+(fvyska div 3 )*2 ;

  p8.X:=fvlavo+fsirka;
  p8.y:=fhore+fvyska div 3;

  p9.X:=fvlavo+(fsirka div 3)*2;
  p9.y:=fhore+(vyska div 3);

  p10.X:=fvlavo+(fsirka div 3)*2;
  p10.y:=fhore;

  p11.X:=fvlavo+fsirka div 3;
  p11.y:=fhore;

  p12.X:=fvlavo+fsirka div 3;
  p12.y:=fhore+fvyska div 3;
    acanvas.Pen.Width:=fhrubkaciary;
  acanvas.Pen.Color:=ffarbaciary;
  ACanvas.Brush.Color:=FFarba;
  ACanvas.Polygon([p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12]);
  end;
end;

function tsipka.getnazov;
begin
  result:= 'sipka';
  self.nazov:='sipka';
end;

procedure TSipka.Nakreslit(ACanvas: TCanvas);
 var
p1,p2,p3,p4,p5,p6,p7:tpoint;
begin
if FZobrazit=true then
  begin
  p1.X:=fvlavo;
  p1.y:=fhore+fvyska div 4;                        //150=sirka

  p2.X:=fvlavo;
  p2.y:=fhore+(fvyska div 4)*3;

  p3.X:=fvlavo+(fsirka div 4)*3;
  p3.y:=fhore+(fvyska div 4)*3;

  p4.X:=fvlavo+(fsirka div 4)*3;
  p4.y:=fhore+fvyska;

  p5.X:=fvlavo+fsirka;
  p5.y:=fhore+fvyska div 2;

  p6.X:=fvlavo+(fsirka div 4)*3;
  p6.y:=fhore;

  p7.X:=fvlavo+(fsirka div 4)*3;
  p7.y:=fhore+fvyska div 4;
    acanvas.Pen.Width:=fhrubkaciary;
  acanvas.Pen.Color:=ffarbaciary;
  ACanvas.Brush.Color:=FFarba;
  ACanvas.Polygon([p1,p2,p3,p4,p5,p6,p7]);
  end;
end;

function telipsa.getnazov;
begin
  result:= 'elipsa';
  self.nazov:='elipsa';
end;

procedure TElipsa.Nakreslit(ACanvas: TCanvas);
begin
if FZobrazit=true then
  begin
  ACanvas.Brush.Color:= FFarba;
    acanvas.Pen.Width:=fhrubkaciary;
  acanvas.Pen.Color:=ffarbaciary;
  ACanvas.Ellipse(vlavo,hore,vlavo+sirka,hore+vyska);
  end;

end;




{$Region 'TZoznamTvarov                                                       '}

constructor TZoznamTvarov.Create;
begin
  inherited Create;
  FList := TList.Create;
end;

destructor TZoznamTvarov.Destroy;
begin
  ZmazatVsetko;
  FList.Free;
  inherited Destroy;
end;

function TZoznamTvarov.GetTvar(AIndex: Integer): TTvar;
begin
 result:=flist.Items[aindex];
end;

procedure TZoznamTvarov.OdstranitTvar(AIndex: Integer);
begin

end;

function TZoznamTvarov.PridatTvar(ADruhTvaru: TDruhTvaru): TTvar;
begin
  case ADruhTvaru of
    tvObdlznik:      Result := TObdlznik.Create(tvobdlznik);
    tvElipsa:      Result := TElipsa.Create(tvElipsa);
    tvTrojuholnik:      Result := TTrojuholnik.Create(tvTrojuholnik);
    tvKriz:      Result := TKriz.Create(tvKriz);
    tvSipka:      Result := TSipka.Create(tvSipka);


  else
    Result := nil;
    Exit;
  end;
   FList.Add(Result);


end;

procedure TZoznamTvarov.NakresliTvary(ACanvas: TCanvas);
var
  i: Integer;
  ATvar: TTvar;
begin
  for i := 0 to FList.Count - 1 do
  begin
    ATvar := FList.Items[i];

    ATvar.Nakreslit(ACanvas);

  end;
end;

procedure TZoznamTvarov.ZmazatVsetko;
begin

end;

{$EndRegion}


end.

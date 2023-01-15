unit DataTvary;

interface

uses
  Types,Classes, Graphics,System.SysUtils, fncTvary;

type
  TDruhTvaru = (tvNeurceny, tvObdlznik, tvElipsa, tvTrojuholnik, tvKriz, tvSipka);

  TTvar = class(TObject)
  private
    FDruhTvaru: TDruhTvaru;
    FFarba: TColor;
    FFarbaCiary:TColor;
    FHore: Integer;
    FSirka: Integer;
    FVlavo: Integer;
    FVyska: Integer;
    FHrubkaCiary:Byte;
    FZobrazit: boolean;
    FNazov:String;
    //FPocetTvarov: integer;

  protected
    function GetNazov: String; virtual;
  public
    constructor Create(Druh:TDruhTvaru);
    function BodVTvare(P:Tpoint):boolean; virtual;
    procedure Nakreslit(ACanvas: TCanvas); virtual;
    procedure Ulozit(Astream:TFileStream); virtual;
    procedure Nacitat(Astream:TFileStream); virtual;
    property DruhTvaru: TDruhTvaru read FDruhTvaru write FDruhTvaru;
    property Farba: TColor read FFarba write FFarba;
    property FarbaCiary: TColor read FFarbaCiary write FFarbaCiary;
    property Hore: Integer read FHore write FHore;
    property HrubkaCiary: Byte read FHrubkaCiary write FHrubkaCiary;
    property Nazov: String read GetNazov write FNazov;
    property Sirka: Integer read FSirka write FSirka;
    property Vlavo: Integer read FVlavo write FVlavo;
    property Vyska: Integer read FVyska write Fvyska;
    property Zobrazit: boolean read FZobrazit write FZobrazit;
    //property PocetTvarov: Integer read FPocetTvarov write FPocetTvarov;
  end;

  TObdlznik = class(TTvar)
  private

  protected
    function GetNazov:string; override;
  public
    procedure Nakreslit(ACanvas: TCanvas); override;
    function BodVTvare(P:Tpoint):boolean; override;
  end;

  TElipsa = class(TTvar)
  private

  protected
    function GetNazov:string; override;
  public
    procedure Nakreslit(ACanvas: TCanvas); override;
    function BodVTvare(P:Tpoint):boolean; override;
  end;

  TTrojuholnik = class(TTvar)
  private

  protected
    function GetNazov:string; override;
  public
    procedure Nakreslit(ACanvas: TCanvas); override;
    function BodVTvare(P:Tpoint):boolean; override;
  end;

  TKriz = class(TTvar)
  private

  protected
    function GetNazov:string; override;
  public
    procedure Nakreslit(ACanvas: TCanvas); override;
    function BodVTvare(P:Tpoint):boolean; override;
  end;

  TSipka = class(TTvar)
  private

  protected
    function GetNazov:string; override;
  public
    procedure Nakreslit(ACanvas: TCanvas); override;
    function BodVTvare(P:Tpoint):boolean; override;
  end;

  TZoznamTvarov = class(TObject)
  private
    FList: TList;
    FPocetTvarov:Integer;
  public
    property PocetTvarov: Integer read FPocetTvarov write FPocetTvarov;
    constructor Create;
    destructor Destroy; override;
    function GetTvar(AIndex: Integer): TTvar;
    procedure OdstranitTvar(AIndex: Integer);
    function PridatTvar(ADruhTvaru: TDruhTvaru): TTvar;
    procedure NakresliTvary(ACanvas: TCanvas);
    procedure ZiskajTvar(P:Tpoint);
    procedure ZmazatVsetko;
    procedure UlozitVsetko(Nazov:string);
    procedure NacitatVsetko(Nazov:string);
  end;

//var
  //pocettvarov:integer;


implementation


constructor TTvar.Create(Druh:TDruhTvaru);
begin
  FDruhTvaru := druh;
  FFarba := Farba;
  FVyska := Vyska;
  FSirka := Sirka;
  FHore := Hore;
  FVlavo := Vlavo;
  FFarbaciary:= Farbaciary;
  FHrubkaCiary:= HrubkaCiary;
  Fzobrazit:= True;
  //FPocetTvarov:= PocetTvarov;
end;

procedure TTvar.Ulozit(Astream: TFileStream);
begin
  AStream.write(FDruhTvaru,SizeOf(FDruhTvaru));
  AStream.write(FFarba, SizeOf(FFarba));
  AStream.write(FVlavo, SizeOf(FVlavo));
  AStream.write(FHore, SizeOf(FHore));
  AStream.write(FSirka, SizeOf(FSirka));
  AStream.write(FVyska, SizeOf(FVyska));
  AStream.write(FFarbaciary, SizeOf(FFarbaciary));
  AStream.write(FHrubkaCiary, SizeOf(FHrubkaCiary));
  AStream.write(FZobrazit, sizeOf(FZobrazit));
end;

procedure TTvar.Nacitat(Astream: TFileStream);
begin
  //AStream.read(FDruhTvaru,SizeOf(FDruhTvaru));
  AStream.read(FFarba, SizeOf(FFarba));
  AStream.read(FVlavo, SizeOf(FVlavo));
  AStream.read(FHore, SizeOf(FHore));
  AStream.read(FSirka, SizeOf(FSirka));
  AStream.read(FVyska, SizeOf(FVyska));
  AStream.read(FFarbaciary, SizeOf(FFarbaciary));
  AStream.read(FHrubkaCiary, SizeOf(FHrubkaCiary));
  AStream.read(FZobrazit, sizeOf(FZobrazit));
end;

function TTvar.GetNazov: String;
begin
  result:= 'neurceny';
end;

procedure TTvar.Nakreslit(ACanvas: TCanvas);
begin

end;

function TTvar.BodVTvare(P: TPoint):boolean;
begin

end;

function TObdlznik.GetNazov:string;
begin
  result:= 'obdlznik';
  self.Nazov:= 'obdlznik';
end;

procedure TObdlznik.Nakreslit(ACanvas: TCanvas);
var
P1,P2,P3,P4:Tpoint;
begin
  if FZobrazit=true then
  begin
  P1.X:=FVlavo;
  P1.Y:=FHore;
  P2.X:=P1.X;
  P2.Y:=FHore + FVyska;
  P3.X:=FVlavo + FSirka;
  P3.Y:=P2.Y;
  P4.X:=FVlavo+FSirka;
  P4.Y:=P1.Y;
  ACanvas.Brush.Color := FFarba;
  ACanvas.Pen.Color:= FFarbaCiary;
  ACanvas.Pen.Width:= FHrubkaciary;
  ACanvas.Polygon([p1,p2,p3,p4]);
  end;
end;

function TObdlznik.BodVTvare(P: TPoint):boolean;
var
P1,P2,P3,P4:Tpoint;
begin
  P1.X:=FVlavo;
  P1.Y:=FHore;
  P2.X:=P1.X;
  P2.Y:=FHore + FVyska;
  P3.X:=FVlavo + FSirka;
  P3.Y:=P2.Y;
  P4.X:=FVlavo+FSirka;
  P4.Y:=P1.Y;
  result:= PointInPolygon(P,[P1,P2,P3,P4]);
end;



procedure TElipsa.Nakreslit(ACanvas: TCanvas);
begin
  if FZobrazit=true then
  begin
  ACanvas.Brush.Color:= FFarba;
  ACanvas.Pen.Color:= FFarbaCiary;
  ACanvas.Pen.Width:= FHrubkaciary;
  ACanvas.Ellipse(Fvlavo,Fhore,Fvlavo+FSirka,Fhore+FVyska);
  end;
end;

function TElipsa.BodVTvare(P: TPoint):boolean;
var
P1,P2:Tpoint;
begin
  P1.X:=FVlavo;
  P1.Y:=FHore;
  P2.X:=FVlavo+FSirka;
  P2.Y:=FHore + FVyska;
  //result:= PointInEllipse(P,[P1,P2]);
end;

function TElipsa.GetNazov:String;
begin
  result:= 'elipsa';
  self.Nazov:= 'elipsa';
end;

procedure TTrojuholnik.Nakreslit(ACanvas: TCanvas);
var
P1,P2,P3:Tpoint;
tretS:integer;
begin
  tretS:=Fsirka div 2;
  if FZobrazit=true then
  begin
  P1.X:=Fvlavo+trets;
  P1.Y:=Fhore;
  P2.X:=Fvlavo;
  P2.Y:=Fhore+Fvyska;
  P3.X:=Fvlavo+Fsirka;
  P3.Y:=Fhore+Fvyska;

  ACanvas.Brush.Color:=FFarba;
  ACanvas.Pen.Color:= FFarbaCiary;
  ACanvas.Pen.Width:= FHrubkaciary;
  ACanvas.Polygon([P1,P2,P3]);
  end;
end;

function TTrojuholnik.BodVTvare(P: TPoint):boolean;
var
P1,P2,P3:Tpoint;
trets:integer;
begin
  tretS:=Fsirka div 2;

  P1.X:=Fvlavo+trets;
  P1.Y:=Fhore;
  P2.X:=Fvlavo;
  P2.Y:=Fhore+Fvyska;
  P3.X:=Fvlavo+Fsirka;
  P3.Y:=Fhore+Fvyska;
  result:= PointInPolygon(P,[P1,P2,P3]);
end;

function TTrojuholnik.GetNazov:string;
begin
  result:= 'trojuholnik';
  self.Nazov:= 'trojuholnik';
end;

function TKriz.GetNazov:string;
begin
  result:= 'kriz';
  self.Nazov:= 'kriz';
end;

procedure TKriz.Nakreslit(ACanvas: TCanvas);
var
p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12:Tpoint;
tretS,tretV:integer;
begin
  tretS:=Fsirka div 3;
  tretV:=Fvyska div 3;
  if FZobrazit=true then
    begin
    p1.X:=Fvlavo+tretS;
    p1.y:=Fhore;
    p2.X:=p1.X;
    p2.y:=Fhore+TretV;
    p3.X:=Fvlavo;
    p3.y:=p2.y;
    p4.X:=Fvlavo;
    p4.y:=fhore+TretV*2;
    p5.X:=p1.X;
    p5.y:=p4.y;
    p6.X:=p1.X;
    p6.y:=fhore+Fvyska;
    p7.X:=fvlavo+TretS*2;
    p7.y:=p6.y;
    p8.X:=p7.X;
    p8.y:=p4.y;
    p9.X:=fvlavo+fsirka;
    p9.y:=p4.y;
    p10.X:=p9.X;
    p10.y:=p2.y;
    p11.X:=p7.X;
    p11.y:=p2.y;
    p12.X:=p7.X;
    p12.y:=fhore;

    ACanvas.Brush.Color:=FFarba;
    ACanvas.Pen.Color:= FFarbaCiary;
    ACanvas.Pen.Width:= FHrubkaciary;
    ACanvas.Polygon([p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12]);
    end;
end;

function TKriz.BodVTvare(P: TPoint):boolean;
var
p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12:Tpoint;
tretS,tretV:integer;
begin
  tretS:=Fsirka div 3;
  tretV:=Fvyska div 3;
  p1.X:=Fvlavo+tretS;
  p1.y:=Fhore;
  p2.X:=p1.X;
  p2.y:=Fhore+TretV;
  p3.X:=Fvlavo;
  p3.y:=p2.y;
  p4.X:=Fvlavo;
  p4.y:=fhore+TretV*2;
  p5.X:=p1.X;
  p5.y:=p4.y;
  p6.X:=p1.X;
  p6.y:=fhore+Fvyska;
  p7.X:=fvlavo+TretS*2;
  p7.y:=p6.y;
  p8.X:=p7.X;
  p8.y:=p4.y;
  p9.X:=fvlavo+fsirka;
  p9.y:=p4.y;
  p10.X:=p9.X;
  p10.y:=p2.y;
  p11.X:=p7.X;
  p11.y:=p2.y;
  p12.X:=p7.X;
  p12.y:=fhore;
  result:= PointInPolygon(P,[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12]);
end;

function TSipka.GetNazov:string;
begin
  result:='sipka';
  self.Nazov:= 'sipka';
end;

procedure TSipka.Nakreslit(ACanvas: TCanvas);
var
p1,p2,p3,p4,p5,p6,p7:tpoint;
tretS,tretV,pols:integer;
begin
  pols:=Fsirka div 2;
  tretS:=Fsirka div 3;
  tretV:=Fvyska div 3;
  if FZobrazit=true then
  begin
    p1.X:=fvlavo+pols;
    p1.y:=fhore;
    p2.X:=fvlavo;
    p2.y:=fhore+tretv;
    p3.X:=fvlavo+trets;
    p3.y:=p2.y;
    p4.X:=p3.X;
    p4.y:=fhore+fvyska;
    p5.X:=fvlavo+trets*2;
    p5.y:=p4.y;
    p6.X:=p5.X;
    p6.y:=p2.y;
    p7.X:=fvlavo+fsirka;
    p7.y:=p2.y;

    ACanvas.Brush.Color:=FFarba;
    ACanvas.Pen.Color:= FFarbaCiary;
    ACanvas.Pen.Width:= FHrubkaciary;
    ACanvas.Polygon([p1,p2,p3,p4,p5,p6,p7]);
  end;
end;

function TSipka.BodVTvare(P: TPoint):boolean;
var
p1,p2,p3,p4,p5,p6,p7:tpoint;
tretS,tretV,pols:integer;
begin
  pols:=Fsirka div 2;
  tretS:=Fsirka div 3;
  tretV:=Fvyska div 3;

  p1.X:=fvlavo+pols;
  p1.y:=fhore;
  p2.X:=fvlavo;
  p2.y:=fhore+tretv;
  p3.X:=fvlavo+trets;
  p3.y:=p2.y;
  p4.X:=p3.X;
  p4.y:=fhore+fvyska;
  p5.X:=fvlavo+trets*2;
  p5.y:=p4.y;
  p6.X:=p5.X;
  p6.y:=p2.y;
  p7.X:=fvlavo+fsirka;
  p7.y:=p2.y;
  result:= PointInPolygon(P,[p1,p2,p3,p4,p5,p6,p7]);
end;

{$Region 'TZoznamTvarov                                                       '}

constructor TZoznamTvarov.Create;
begin
  inherited Create;
  FList := TList.Create;
  FPocetTvarov:=PocetTvarov;
end;

destructor TZoznamTvarov.Destroy;
begin
  ZmazatVsetko;
  FList.Free;
  inherited Destroy;
end;

function TZoznamTvarov.GetTvar(AIndex: Integer): TTvar;
begin
result:=FList.Items[AIndex];
end;

procedure TZoznamTvarov.OdstranitTvar(AIndex: Integer);
begin

end;

procedure TZoznamTvarov.UlozitVsetko(Nazov: string);
var
  i:integer;
  AStream:  TFileStream;
  ATvar: TTvar;
begin
  AStream :=TFileStream.Create(Nazov, fmcreate);
  AStream.Write(Flist.Count, sizeOf(Flist.Count));
  for i := 0 to FList.Count - 1 do
  begin
    ATvar := FList.Items[i];
    ATvar.Ulozit(AStream);
  end;

  AStream.Free
end;

procedure TZoznamTvarov.NacitatVsetko(Nazov: string);
var
  i,cislo:integer;
  AStream:  TFileStream;
  ATvar: TTvar;
  FDruhTvaru:TDruhTvaru;
begin
  AStream :=TFileStream.Create(Nazov, fmOpenRead);
  AStream.read(FpocetTvarov, sizeOf(integer));
  //cislo:= ATvar.FPocetTvarov;
  for i := 0 to FPocetTvarov -1 do
  begin
    AStream.read(FDruhTvaru,SizeOf(FDruhTvaru));
    ATvar:= pridatTvar(FDruhTvaru);
    ATvar := FList.Items[i];
    ATvar.Nacitat(AStream);
  end;
  AStream.Free
end;

function TZoznamTvarov.PridatTvar(ADruhTvaru: TDruhTvaru): TTvar;
begin
  case ADruhTvaru of
    tvObdlznik:      Result := TObdlznik.Create(TvObdlznik);
    tvElipsa: Result:= TElipsa.Create(TvElipsa);
    tvTrojuholnik:  Result:= TTrojuholnik.Create(TvTrojuholnik);
    tvKriz: Result:= TKriz.Create(TvKriz);
    tvSipka:  Result:= TSipka.Create(TvSipka);

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

procedure TZoznamTvarov.ZiskajTvar(P: TPoint);
var
  i: Integer;
  ATvar: TTvar;
begin
  for i := FList.Count-1 downto 0 do
  begin
    ATvar := FList.Items[i];
    ATvar.BodVTvare(P);
    if ATvar.BodVTvare(p) then
    begin
      Atvar:= GetTvar(i);
      exit
    end;
  end;
end;

procedure TZoznamTvarov.ZmazatVsetko;
  var
  i: Integer;
  ATvar: TTvar;
begin
  for i := 0 to FList.Count - 1 do
  begin
    ATvar := FList.Items[i];
    ATvar.Free;
  end;
  FList.Clear;
end;


{$EndRegion}


end.

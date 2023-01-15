unit Unit2;

interface
  type
    tdatum=class(TObject)
    private
    FDen:byte;
    Fmesiac:byte;
    Frok:integer;
    procedure setden(den:byte);
    procedure setmesiac(mesiac:byte);
  protected
    function GetStrDatum:string;virtual;
  public
    constructor Create;
    property Den:byte read FDen       write SetDen;
    property mesiac:byte read FMesiac write setmesiac;
    property rok:integer read frok    write frok;
    property StrDatum: string read GetStrDatum;

  end;

 { tmojdatum=class(tdatum)
    protected
    function getstrdatum:string; override;
  end;   }

implementation

uses system.sysutils;

constructor tdatum.Create;
begin
  inherited create;
  den:=1;
  mesiac:=1;
  rok:=2000;
end;

function tdatum.GetStrDatum:string;
begin
  result:= inttostr(fden)+'.'+Inttostr(fmesiac)+'.'+inttostr(frok);
end;

procedure tdatum.setden(den: Byte);
begin
  if (den<1) or (den>31) then
  fden:=1
  else
  fden:=den;
end;

procedure tdatum.setmesiac(mesiac: Byte);
begin
  if (mesiac<1) or (mesiac>12) then
    fmesiac:=1
    else
    fmesiac:=mesiac;
end;



end.

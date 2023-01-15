unit Udaje;

interface

const
ZiaciMax = 100;


type
pnarodnost = (Americka,Ceska,Japonska,Slovenska,ine);

ppohlavie = (pMuz,pZena);

pmeno=record
  meno:string;
  priezvisko:string;
end;
pdatum=record
  den:byte;
  mesiac:byte;
  rok:word;
end;



rOsoba=record
  Meno:pmeno;
  Datumnar:pdatum;
  Pohlavie:ppohlavie;
  narodnost:pnarodnost;
  schovat:boolean;
end;

var
zoznamziakov: array[1..ziacimax] of rOsoba;
pocitadlo:integer=0;
pocitadlo2:integer=0;
pocetschovanych:integer=0;
uprava:integer;




implementation

end.

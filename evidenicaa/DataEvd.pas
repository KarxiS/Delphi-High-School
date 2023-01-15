unit DataEvd;

interface

const
  coMaxPocetOsob = 30;

type


  TPohlavie = (phMuz, phZena);
  TNarodnost = (nrSlovenska, nrMadarska, nrPolska, nrCeska, nrUkrajinska, nrNemecka, nrRomska, nrIna);

  TDatum = record
    Den: Byte;
    Mesiac: Byte;
    Rok: Integer;
  end;

  TOsoba= Record
    Meno: String;
    Priezvisko: String;
    DatumNarodenia: TDatum;
    Pohlavie: TPohlavie;
    Narodnost: TNarodnost;
  End;


var
  ZoznamOsob: array[1..coMaxPocetOsob] of TOsoba;
  PocetOsob: Integer = 0;

implementation

end.

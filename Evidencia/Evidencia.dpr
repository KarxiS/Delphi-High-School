program Evidencia;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  DataEvd in 'DataEvd.pas',
  F_Zapis in 'F_Zapis.pas' {FormZapisOsoby};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormZapisOsoby, FormZapisOsoby);
  Application.Run;
end.

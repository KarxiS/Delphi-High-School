program GrafickeTvary;

uses
  Forms,
  F_Aplikacia in 'F_Aplikacia.pas' {Form1},
  DataTvary in 'DataTvary.pas',
  Vlastnosti in 'Vlastnosti.pas' {Form2},
  PointIn in 'PointIn.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

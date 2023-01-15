program GrafickeTvary;

uses
  Forms,
  F_Aplikacia in 'F_Aplikacia.pas' {Form1},
  DataTvary in 'DataTvary.pas',
  Unit2 in 'Unit2.pas' {Form2},
  FncTvary in 'FncTvary.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

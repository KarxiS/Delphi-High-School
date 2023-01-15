program Project1;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form2},
  Udaje in 'Udaje.pas',
  Zapis in 'Zapis.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

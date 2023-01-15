program Project1;

uses
  Vcl.Forms,
  Unit1 in 'C:\Users\2karo\Desktop\InfSem\sugar-cv5\Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

unit F_Nastavenie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormNastavenie = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNastavenie: TFormNastavenie;

implementation

uses Unit3;

{$R *.dfm}

procedure TFormNastavenie.Button1Click(Sender: TObject);
begin
   Okno.ShowModal;
end;

end.

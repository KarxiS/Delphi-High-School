unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
case radiogroup1.ItemIndex of

       0:
      begin
      label1.Caption:= 'Warning Uzivatel!';
      MessageDlg('Oznam Test',mtWarning,[mbOK],0) ;

      end;

        1:
        begin
        label1.Caption:= 'Error Uzivatel!';
        MessageDlg('Oznam Test',mtError,[mbOK],0);

      end;



      end;

end;

end.

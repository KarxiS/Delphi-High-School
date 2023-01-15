unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TOkno = class(TForm)
    Panel1: TPanel;
    ColorBox1: TColorBox;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Edit1: TEdit;
    ListBox1: TListBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Okno: TOkno;

implementation

{$R *.dfm}

procedure TOkno.Button1Click(Sender: TObject);
begin
  Color := ColorBox1.Selected;
end;

end.

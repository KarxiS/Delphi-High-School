unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ColorBox1: TColorBox;
    colorbox2: TColorBox;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label6: TLabel;
    SpinEdit4: TSpinEdit;
    Button2: TButton;
    Label7: TLabel;
    SpinEdit5: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Luce(farba1,farba2:tcolor; x,y,max,pocetlucov:integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 luce(colorbox1.Selected,colorbox2.Selected,spinedit2.Value,spinedit3.Value,spinedit1.Value,spinedit4.Value);
 //luce(clblue,clgreen,50,50,50,10);
//luce(colorbox1.Color,colorbox2.color,spinedit1.Value,spinedit2.Value,spinedit3.Value,spinedit4.Value);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin                                              //1                               2
luce(colorbox1.Selected,colorbox2.Selected,random(image1.Width),random(image1.Height),spinedit3.Value,spinedit4.Value);
end;

procedure tform1.Luce(farba1: TColor; farba2: TColor; x: Integer; y: Integer; max: Integer;pocetlucov:integer);
var
i,II,xRandom,YMaxRandom,XMaxRandom:integer ;

begin
 //for I := 1 to 1 do
    begin
     for II := 1 to pocetlucov do
      begin
      with image1.Canvas do
        begin

        XMaxRandom:=random(max);
        YMaxRandom:=random(max);
        if ymaxrandom>max div 2 then pen.Color:=farba1 else pen.Color:=farba2;
        moveto(x,y);


        lineto((x+(max div 2))-xmaxrandom,y+(max div 2)-ymaxrandom) ;

               //((x+(max div 2))      -random(max)
        end;


      end;
    end;


    end;

end.

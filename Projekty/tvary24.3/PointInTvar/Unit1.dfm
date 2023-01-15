object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Bod v tvare'
  ClientHeight = 474
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 41
    Width = 778
    Height = 433
    Align = alClient
    OnMouseDown = PaintBox1MouseDown
    OnPaint = PaintBox1Paint
    ExplicitLeft = 144
    ExplicitTop = 96
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 480
    object Label1: TLabel
      Left = 24
      Top = 14
      Width = 18
      Height = 13
      Caption = '???'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end

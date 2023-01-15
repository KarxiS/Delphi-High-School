object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 597
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 40
    Width = 353
    Height = 353
  end
  object Button1: TButton
    Left = 367
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Generuj'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 367
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Vpravo'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 367
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Vlavo'
    TabOrder = 2
  end
end

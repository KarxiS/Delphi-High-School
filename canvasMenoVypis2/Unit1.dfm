object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 561
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object boa: TImage
    Left = 16
    Top = 24
    Width = 700
    Height = 500
  end
  object Label1: TLabel
    Left = 722
    Top = 293
    Width = 57
    Height = 13
    Caption = 'Daj si vysku'
  end
  object Button1: TButton
    Left = 722
    Top = 49
    Width = 75
    Height = 25
    Caption = 'K'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 722
    Top = 80
    Width = 75
    Height = 25
    Caption = 'A'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 722
    Top = 111
    Width = 75
    Height = 25
    Caption = 'R'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 722
    Top = 142
    Width = 75
    Height = 25
    Caption = 'O'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 722
    Top = 173
    Width = 75
    Height = 25
    Caption = 'L'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 722
    Top = 204
    Width = 133
    Height = 25
    Caption = 'Boa Setky Pismena'
    TabOrder = 5
    OnClick = Button6Click
  end
  object SpinEdit1: TSpinEdit
    Left = 722
    Top = 312
    Width = 103
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 20
  end
end

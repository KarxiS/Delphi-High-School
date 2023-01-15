object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 634
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 132
    Width = 50
    Height = 13
    Caption = 'Pocet cisel'
  end
  object Label2: TLabel
    Left = 312
    Top = 85
    Width = 50
    Height = 13
    Caption = 'Vacsie ako'
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 273
    Height = 281
    TabOrder = 0
  end
  object Button1: TButton
    Left = 312
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Generuj'
    TabOrder = 1
    OnClick = Button1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 312
    Top = 152
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 312
    Top = 104
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object Button2: TButton
    Left = 472
    Top = 176
    Width = 161
    Height = 49
    Caption = 'Uloz nove pole s random'
    TabOrder = 4
    OnClick = Button2Click
  end
end

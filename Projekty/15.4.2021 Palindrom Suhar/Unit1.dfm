object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 388
  ClientWidth = 493
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
    Left = 272
    Top = 45
    Width = 26
    Height = 13
    Caption = 'Slovo'
  end
  object Label2: TLabel
    Left = 272
    Top = 93
    Width = 55
    Height = 13
    Caption = 'Hladaj znak'
  end
  object Button1: TButton
    Left = 272
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Rob'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 64
    Width = 217
    Height = 217
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 272
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'abba'
  end
  object Edit2: TEdit
    Left = 272
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'a'
  end
end

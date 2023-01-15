object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pr'#237'klad 01'
  ClientHeight = 559
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 387
    Top = 59
    Width = 35
    Height = 13
    Caption = 'Delite'#318':'
  end
  object Button1: TButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = #268#237'slo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 104
    Width = 98
    Height = 25
    Caption = 'Ro'#269'n'#233' obdobie'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 224
    Top = 104
    Width = 90
    Height = 25
    Caption = 'Zoznam '#269#237'sel'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 336
    Top = 104
    Width = 169
    Height = 25
    Caption = 'Deliteln'#233' delite'#318'om alebo '#269#237'slom 7'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 200
    Width = 481
    Height = 329
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 24
    Top = 160
    Width = 481
    Height = 21
    TabOrder = 5
  end
  object SpinEdit1: TSpinEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 448
    Top = 56
    Width = 57
    Height = 22
    MaxValue = 100
    MinValue = 1
    TabOrder = 7
    Value = 5
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 241
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 208
    Top = 16
    Width = 20
    Height = 13
    Caption = 'cislo'
  end
  object Label2: TLabel
    Left = 217
    Top = 137
    Width = 107
    Height = 13
    Caption = 'Premena do x sustavy'
  end
  object Button1: TButton
    Left = 217
    Top = 93
    Width = 121
    Height = 22
    Caption = 'Premena do hex'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 185
    Height = 225
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 217
    Top = 153
    Width = 121
    Height = 22
    MaxValue = 16
    MinValue = 3
    TabOrder = 2
    Value = 3
  end
  object SpinEdit2: TSpinEdit
    Left = 217
    Top = 35
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object Button2: TButton
    Left = 217
    Top = 181
    Width = 121
    Height = 25
    Caption = 'premena do x'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 217
    Top = 63
    Width = 121
    Height = 24
    Caption = 'Premena do binarnej'
    TabOrder = 5
    OnClick = Button3Click
  end
end

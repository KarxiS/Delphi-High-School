object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 658
  ClientWidth = 1096
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
    Left = 64
    Top = 45
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Teplota: TLabel
    Left = 234
    Top = 45
    Width = 36
    Height = 13
    Caption = 'Teplota'
  end
  object Zapisat: TButton
    Left = 384
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Zapisat'
    TabOrder = 0
    OnClick = ZapisatClick
  end
  object Vypis: TButton
    Left = 64
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Vypis'
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 64
    Top = 64
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 234
    Top = 64
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object Memo1: TMemo
    Left = 64
    Top = 167
    Width = 321
    Height = 458
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
end

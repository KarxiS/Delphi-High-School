object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Priemern'#225' denn'#225' teplota za mesiac'
  ClientHeight = 611
  ClientWidth = 432
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
    Left = 20
    Top = 24
    Width = 69
    Height = 13
    Caption = 'De'#328' v mesiaci:'
  end
  object Label2: TLabel
    Left = 128
    Top = 24
    Width = 40
    Height = 13
    Caption = 'Teplota:'
  end
  object SpinEdit1: TSpinEdit
    Left = 20
    Top = 43
    Width = 69
    Height = 22
    MaxValue = 31
    MinValue = 1
    TabOrder = 0
    Value = 1
  end
  object SpinEdit2: TSpinEdit
    Left = 128
    Top = 43
    Width = 81
    Height = 22
    MaxValue = 50
    MinValue = -40
    TabOrder = 1
    Value = 0
  end
  object Button1: TButton
    Left = 232
    Top = 41
    Width = 75
    Height = 25
    Caption = 'Zap'#237'sa'#357
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 20
    Top = 96
    Width = 75
    Height = 25
    Caption = 'V'#253'pis'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 20
    Top = 127
    Width = 391
    Height = 458
    TabOrder = 4
  end
end

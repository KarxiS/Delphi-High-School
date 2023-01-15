object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 758
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object den: TLabel
    Left = 112
    Top = 53
    Width = 18
    Height = 13
    Caption = 'den'
  end
  object tep: TLabel
    Left = 344
    Top = 53
    Width = 16
    Height = 13
    Caption = 'tep'
  end
  object Button1: TButton
    Left = 488
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Zapis'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Vypis'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 80
    Top = 184
    Width = 417
    Height = 449
    TabOrder = 2
  end
  object SpinEdit1: TSpinEdit
    Left = 112
    Top = 72
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 344
    Top = 72
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 541
  ClientWidth = 590
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
    Left = 8
    Top = 20
    Width = 19
    Height = 13
    Caption = 'Den'
  end
  object Label2: TLabel
    Left = 128
    Top = 20
    Width = 32
    Height = 13
    Caption = 'Mesiac'
  end
  object Label3: TLabel
    Left = 232
    Top = 20
    Width = 18
    Height = 13
    Caption = 'Rok'
  end
  object Button1: TButton
    Left = 408
    Top = 152
    Width = 75
    Height = 25
    Caption = 'zapis'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 112
    Width = 345
    Height = 281
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 408
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
  end
  object SpinEdit1: TSpinEdit
    Left = 8
    Top = 56
    Width = 57
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 128
    Top = 56
    Width = 47
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
  object SpinEdit3: TSpinEdit
    Left = 232
    Top = 56
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 0
  end
end

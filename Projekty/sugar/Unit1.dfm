object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 533
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 184
    Top = 78
    Width = 107
    Height = 25
    Caption = 'Vypocitaj'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 56
    Top = 160
    Width = 235
    Height = 169
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 57
    Top = 109
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object Edit1: TEdit
    Left = 57
    Top = 82
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 184
    Top = 109
    Width = 107
    Height = 25
    Caption = 'Nacitaj a vypocitaj'
    TabOrder = 4
    OnClick = Button2Click
  end
end

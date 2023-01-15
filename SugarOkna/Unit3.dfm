object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 455
  ClientWidth = 442
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 176
    Top = 0
    Width = 266
    Height = 231
    Align = alCustom
    Color = clBackground
    ParentBackground = False
    TabOrder = 0
    object Button1: TButton
      Left = 192
      Top = 113
      Width = 75
      Height = 25
      Caption = 'Klik'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Panel2: TPanel
      Left = 1
      Top = 144
      Width = 264
      Height = 87
      Color = clGreen
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 56
        Width = 8
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 2
      Width = 185
      Height = 105
      Caption = 'RadioGroup1'
      Color = clTeal
      Items.Strings = (
        'Warning'
        'Error')
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
    end
  end
end

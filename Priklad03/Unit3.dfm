object Okno: TOkno
  Left = 0
  Top = 0
  Caption = 'Okno'
  ClientHeight = 321
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 73
    Align = alTop
    TabOrder = 0
    object ColorBox1: TColorBox
      Left = 24
      Top = 32
      Width = 145
      Height = 22
      Selected = clMoneyGreen
      Style = [cbStandardColors, cbExtendedColors]
      ItemHeight = 16
      TabOrder = 0
    end
    object Button1: TButton
      Left = 224
      Top = 30
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 382
    Height = 248
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'AAAA'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Edit1: TEdit
        Left = 40
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object ListBox1: TListBox
        Left = 40
        Top = 72
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'BBBB'
      ImageIndex = 1
      ExplicitLeft = 8
      object RadioButton1: TRadioButton
        Left = 120
        Top = 40
        Width = 113
        Height = 17
        Caption = 'RadioButton1'
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 120
        Top = 72
        Width = 113
        Height = 17
        Caption = 'RadioButton2'
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'CCCC'
      ImageIndex = 2
      ExplicitWidth = 281
      ExplicitHeight = 165
      object CheckBox1: TCheckBox
        Left = 48
        Top = 24
        Width = 97
        Height = 17
        Caption = 'CheckBox1'
        TabOrder = 0
      end
    end
  end
end

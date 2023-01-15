object FormZapisOsoby: TFormZapisOsoby
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Z'#225'pis osoby'
  ClientHeight = 412
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Meno:'
  end
  object Label2: TLabel
    Left = 200
    Top = 24
    Width = 51
    Height = 13
    Caption = 'Priezvisko:'
  end
  object Label6: TLabel
    Left = 16
    Top = 280
    Width = 51
    Height = 13
    Caption = 'N'#225'rodnos'#357
  end
  object edMeno: TEdit
    Left = 16
    Top = 43
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object edPriezvisko: TEdit
    Left = 200
    Top = 43
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object gbDatum: TGroupBox
    Left = 16
    Top = 160
    Width = 345
    Height = 97
    Caption = 'D'#225'tum narodenia'
    TabOrder = 3
    object Label3: TLabel
      Left = 24
      Top = 35
      Width = 23
      Height = 13
      Caption = 'De'#328':'
    end
    object Label4: TLabel
      Left = 128
      Top = 35
      Width = 36
      Height = 13
      Caption = 'Mesiac:'
    end
    object Label5: TLabel
      Left = 240
      Top = 35
      Width = 22
      Height = 13
      Caption = 'Rok:'
    end
    object edDen: TSpinEdit
      Left = 24
      Top = 51
      Width = 57
      Height = 22
      MaxValue = 31
      MinValue = 1
      TabOrder = 0
      Value = 1
    end
    object edMesiac: TSpinEdit
      Left = 128
      Top = 51
      Width = 57
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object edRok: TSpinEdit
      Left = 240
      Top = 51
      Width = 57
      Height = 22
      MaxValue = 2100
      MinValue = 1900
      TabOrder = 2
      Value = 2000
    end
  end
  object gbPohlavie: TGroupBox
    Left = 16
    Top = 88
    Width = 345
    Height = 41
    Caption = 'Pohlavie'
    TabOrder = 2
    object rbMuz: TRadioButton
      Left = 24
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Mu'#382
      TabOrder = 0
    end
    object rbZena: TRadioButton
      Left = 192
      Top = 16
      Width = 113
      Height = 17
      Caption = #381'ena'
      TabOrder = 1
    end
  end
  object edNarodnost: TComboBox
    Left = 16
    Top = 299
    Width = 164
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 4
    Text = 'Slovensk'#225
    Items.Strings = (
      'Slovensk'#225
      'Ma'#271'arsk'#225
      'Polsk'#225
      #268'esk'#225
      'Ukrajinsk'#225
      'Nemeck'#225' '
      'R'#243'mska '
      'In'#225)
  end
  object Panel1: TPanel
    Left = 0
    Top = 359
    Width = 379
    Height = 53
    Align = alBottom
    TabOrder = 5
    ExplicitTop = 440
    object btnOk: TBitBtn
      Left = 168
      Top = 12
      Width = 83
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancel: TBitBtn
      Left = 262
      Top = 12
      Width = 99
      Height = 25
      Caption = 'Zru'#353'i'#357
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end

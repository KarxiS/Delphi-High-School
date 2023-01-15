object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form2'
  ClientHeight = 276
  ClientWidth = 550
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
    Left = 24
    Top = 32
    Width = 30
    Height = 13
    Caption = 'Nazov'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 23
    Height = 13
    Caption = 'Sirka'
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 6
    Height = 13
    Caption = 'X'
  end
  object Label4: TLabel
    Left = 24
    Top = 184
    Width = 6
    Height = 13
    Caption = 'Y'
  end
  object Label5: TLabel
    Left = 328
    Top = 36
    Width = 53
    Height = 13
    Caption = 'Farba pera'
  end
  object Label6: TLabel
    Left = 328
    Top = 82
    Width = 58
    Height = 13
    Caption = 'hrubka pera'
  end
  object Label7: TLabel
    Left = 160
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Vyska'
  end
  object Label8: TLabel
    Left = 160
    Top = 33
    Width = 63
    Height = 13
    Caption = 'Farba vyplne'
  end
  object Sirka: TEdit
    Left = 24
    Top = 99
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Xko: TEdit
    Left = 24
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Yko: TEdit
    Left = 24
    Top = 203
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object hrubkapera: TEdit
    Left = 328
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Vyska: TEdit
    Left = 160
    Top = 99
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Zmena: TButton
    Left = 184
    Top = 233
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 5
  end
  object farbavypln: TColorBox
    Left = 160
    Top = 52
    Width = 121
    Height = 22
    TabOrder = 6
  end
  object Farbapero: TColorBox
    Left = 328
    Top = 54
    Width = 121
    Height = 22
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 24
    Top = 51
    Width = 121
    Height = 23
    TabOrder = 8
    object cosom: TLabel
      Left = 29
      Top = -1
      Width = 60
      Height = 24
      Caption = 'Invalid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end

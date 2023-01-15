object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Evidencia '#382'iakov'
  ClientHeight = 337
  ClientWidth = 583
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
    Width = 583
    Height = 57
    Align = alTop
    TabOrder = 0
    object lbPocet: TLabel
      Left = 344
      Top = 22
      Width = 80
      Height = 13
      Caption = 'Po'#269'et '#382'iakov = 0'
    end
    object Button1: TButton
      Left = 24
      Top = 17
      Width = 90
      Height = 25
      Caption = 'Z'#225'pis '#382'iaka'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 120
      Top = 17
      Width = 90
      Height = 25
      Caption = 'Vymaza'#357
      TabOrder = 1
    end
    object Button3: TButton
      Left = 216
      Top = 17
      Width = 97
      Height = 25
      Caption = 'V'#253'pis zoznamu'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 57
    Width = 583
    Height = 280
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
end

object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 428
  ClientWidth = 869
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
    Width = 869
    Height = 428
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 112
      Top = 75
      Width = 55
      Height = 13
      Caption = 'Brush Color'
    end
    object Label2: TLabel
      Left = 112
      Top = 115
      Width = 46
      Height = 13
      Caption = 'Pen Color'
    end
    object Label3: TLabel
      Left = 112
      Top = 155
      Width = 49
      Height = 13
      Caption = 'Pen Width'
    end
    object Label4: TLabel
      Left = 88
      Top = 251
      Width = 26
      Height = 13
      Caption = 'Vlavo'
    end
    object Label5: TLabel
      Left = 88
      Top = 312
      Width = 23
      Height = 13
      Caption = 'Hore'
    end
    object Label6: TLabel
      Left = 440
      Top = 251
      Width = 23
      Height = 13
      Caption = 'Sirka'
    end
    object Label7: TLabel
      Left = 440
      Top = 312
      Width = 28
      Height = 13
      Caption = 'Vyska'
    end
    object FarbaV: TColorBox
      Left = 256
      Top = 72
      Width = 145
      Height = 22
      TabOrder = 0
    end
    object FarbaO: TColorBox
      Left = 256
      Top = 112
      Width = 145
      Height = 22
      TabOrder = 1
    end
    object sHrubka: TSpinEdit
      Left = 256
      Top = 152
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object sVlavo: TSpinEdit
      Left = 208
      Top = 248
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
    object sHore: TSpinEdit
      Left = 208
      Top = 309
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 0
    end
    object sSirka: TSpinEdit
      Left = 552
      Top = 248
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object sVyska: TSpinEdit
      Left = 552
      Top = 309
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 0
    end
    object Button1: TButton
      Left = 598
      Top = 376
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 736
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Zrusit'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 667
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 32
    Top = 8
    Width = 609
    Height = 521
  end
  object Label1: TLabel
    Left = 647
    Top = 23
    Width = 25
    Height = 13
    Caption = 'Dlzka'
  end
  object Label2: TLabel
    Left = 647
    Top = 60
    Width = 42
    Height = 13
    Caption = 'X'
  end
  object Label3: TLabel
    Left = 647
    Top = 107
    Width = 25
    Height = 13
    Caption = 'Y'
  end
  object Label4: TLabel
    Left = 656
    Top = 147
    Width = 98
    Height = 13
    Caption = 'Farba Hornej Strany'
  end
  object Label5: TLabel
    Left = 656
    Top = 191
    Width = 96
    Height = 13
    Caption = 'Farba Dolnej Strany'
  end
  object Label6: TLabel
    Left = 656
    Top = 238
    Width = 58
    Height = 13
    Caption = 'Pocet Lucov'
  end
  object Label7: TLabel
    Left = 658
    Top = 285
    Width = 74
    Height = 13
    Caption = 'Pocet Objektov'
  end
  object Button1: TButton
    Left = 656
    Top = 360
    Width = 121
    Height = 25
    Caption = 'Generuj bez random'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ColorBox1: TColorBox
    Left = 656
    Top = 163
    Width = 121
    Height = 22
    Selected = clNavy
    TabOrder = 1
  end
  object colorbox2: TColorBox
    Left = 656
    Top = 210
    Width = 121
    Height = 22
    Selected = clPurple
    TabOrder = 2
  end
  object SpinEdit1: TSpinEdit
    Left = 656
    Top = 42
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 150
  end
  object SpinEdit2: TSpinEdit
    Left = 656
    Top = 79
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 150
  end
  object SpinEdit3: TSpinEdit
    Left = 656
    Top = 126
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 150
  end
  object SpinEdit4: TSpinEdit
    Left = 656
    Top = 257
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 10
  end
  object Button2: TButton
    Left = 656
    Top = 329
    Width = 121
    Height = 25
    Caption = 'Generuj s random X Y'
    TabOrder = 7
    OnClick = Button2Click
  end
  object SpinEdit5: TSpinEdit
    Left = 656
    Top = 301
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 2
  end
end

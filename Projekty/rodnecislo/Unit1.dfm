object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 293
  ClientWidth = 564
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
    Left = 40
    Top = 7
    Width = 51
    Height = 13
    Caption = 'rodne cislo'
  end
  object Label2: TLabel
    Left = 40
    Top = 109
    Width = 42
    Height = 13
    Caption = 'Vysledok'
  end
  object Edit1: TEdit
    Left = 40
    Top = 26
    Width = 185
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 40
    Top = 128
    Width = 201
    Height = 129
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object CheckListBox1: TCheckListBox
    Left = 296
    Top = 26
    Width = 217
    Height = 193
    ItemHeight = 13
    TabOrder = 2
  end
  object Button1: TButton
    Left = 40
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Zapis'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 232
    Width = 217
    Height = 25
    Caption = 'Vypis'
    TabOrder = 4
  end
end

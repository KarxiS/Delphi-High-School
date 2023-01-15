object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 507
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 325
    Width = 48
    Height = 13
    Caption = 'Pocet viet'
  end
  object Label5: TLabel
    Left = 192
    Top = 325
    Width = 84
    Height = 13
    Caption = 'Zmen znaky na * '
  end
  object Label6: TLabel
    Left = 200
    Top = 358
    Width = 3
    Height = 13
  end
  object VypisVstup: TButton
    Left = 8
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Vypis vety'
    TabOrder = 0
    OnClick = VypisVstupClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 450
    Height = 297
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 8
    Top = 344
    Width = 161
    Height = 41
    TabOrder = 2
    object Label1: TLabel
      Left = 56
      Top = 0
      Width = 6
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Edit1: TEdit
    Left = 192
    Top = 344
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'o'
  end
  object Button1: TButton
    Left = 192
    Top = 371
    Width = 81
    Height = 25
    Caption = 'Zmen pismenka'
    TabOrder = 4
    OnClick = Button1Click
  end
end

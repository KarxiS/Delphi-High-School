object FormNastavenie: TFormNastavenie
  Left = 400
  Top = 400
  BorderStyle = bsSingle
  Caption = 'Nastavenie parametrov'
  ClientHeight = 408
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 64
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 320
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 320
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Zru'#353'i'#357
    TabOrder = 2
    Kind = bkCancel
  end
  object Button1: TButton
    Left = 152
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end

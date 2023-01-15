object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 240
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 185
    Height = 225
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 199
    Top = 8
    Width = 137
    Height = 217
    Caption = 'Panel1'
    TabOrder = 1
    object label1: TLabel
      Left = 16
      Top = 17
      Width = 99
      Height = 13
      Caption = 'desiatkove cislo do x'
    end
    object Label2: TLabel
      Left = 0
      Top = 137
      Width = 131
      Height = 13
      Caption = 'Premena do x sustavy(3-9)'
    end
    object Button1: TButton
      Left = 8
      Top = 94
      Width = 121
      Height = 22
      Caption = 'Premena do hex'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 184
      Width = 113
      Height = 25
      Caption = 'premena do x sustavy'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 64
      Width = 121
      Height = 24
      Caption = 'Premena do binarnej'
      TabOrder = 2
      OnClick = Button3Click
    end
    object SpinEdit2: TSpinEdit
      Left = 8
      Top = 36
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
    object SpinEdit1: TSpinEdit
      Left = 8
      Top = 156
      Width = 121
      Height = 22
      MaxValue = 16
      MinValue = 3
      TabOrder = 4
      Value = 3
    end
  end
  object Panel2: TPanel
    Left = 342
    Top = 8
    Width = 139
    Height = 217
    Caption = 'Panel2'
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 17
      Width = 102
      Height = 13
      Caption = 'x cislo do desiatkovej'
    end
    object Label4: TLabel
      Left = 16
      Top = 137
      Width = 114
      Height = 13
      Caption = 'Premena z lubovolnej s.'
    end
    object Button4: TButton
      Left = 8
      Top = 64
      Width = 121
      Height = 24
      Caption = 'Binarne do 10tkovej'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object Button5: TButton
      Left = 8
      Top = 94
      Width = 121
      Height = 22
      Caption = 'Hex do 10tkovej'
      TabOrder = 2
      OnClick = Button5Click
    end
    object SpinEdit3: TSpinEdit
      Left = 8
      Top = 156
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
    object Button6: TButton
      Left = 8
      Top = 184
      Width = 121
      Height = 25
      Caption = 'x sustava do 10tkovej'
      TabOrder = 4
      OnClick = Button6Click
    end
  end
end

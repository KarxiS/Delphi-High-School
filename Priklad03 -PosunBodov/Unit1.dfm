object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Body'
  ClientHeight = 561
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 739
    Height = 354
    Align = alClient
    ExplicitTop = -6
    ExplicitWidth = 729
    ExplicitHeight = 344
  end
  object Panel1: TPanel
    Left = 0
    Top = 354
    Width = 739
    Height = 207
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 288
    ExplicitWidth = 729
    object Label1: TLabel
      Left = 168
      Top = 24
      Width = 79
      Height = 13
      Caption = 'Ve'#318'kos'#357' posunu:'
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 24
      Width = 121
      Height = 121
      Caption = 'Smer posunutia '
      ItemIndex = 1
      Items.Strings = (
        'Hore'
        'Dole'
        'V'#318'avo'
        'Vpravo')
      TabOrder = 0
    end
    object SpinEdit1: TSpinEdit
      Left = 168
      Top = 43
      Width = 79
      Height = 22
      Increment = 5
      MaxValue = 100
      MinValue = 1
      TabOrder = 1
      Value = 5
    end
    object Button1: TButton
      Left = 312
      Top = 40
      Width = 129
      Height = 25
      Caption = 'Posun'#250#357' body'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end

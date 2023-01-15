object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 267
  ClientWidth = 639
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
    Left = 69
    Top = 45
    Width = 57
    Height = 13
    Caption = 'Meno '#382'iaka:'
  end
  object Label2: TLabel
    Left = 48
    Top = 72
    Width = 78
    Height = 13
    Caption = 'Priezvisko '#382'iaka:'
  end
  object Label3: TLabel
    Left = 40
    Top = 99
    Width = 86
    Height = 13
    Caption = 'D'#225'tum narodenia:'
  end
  object Label4: TLabel
    Left = 82
    Top = 126
    Width = 44
    Height = 13
    Caption = 'Pohlavie:'
  end
  object Label5: TLabel
    Left = 71
    Top = 153
    Width = 55
    Height = 13
    Caption = 'N'#225'rodnos'#357':'
  end
  object Label6: TLabel
    Left = 92
    Top = 177
    Width = 34
    Height = 13
    Caption = 'Trieda:'
  end
  object Label7: TLabel
    Left = 368
    Top = 23
    Width = 121
    Height = 13
    Caption = 'Po'#269'et '#382'iakov v datab'#225'ze:'
  end
  object Label8: TLabel
    Left = 495
    Top = 23
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label9: TLabel
    Left = 301
    Top = 237
    Width = 116
    Height = 13
    Caption = 'Vymaza'#357' '#382'iaka z poz'#237'cie:'
  end
  object Button1: TButton
    Left = 198
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Prida'#357' '#382'iaka'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 128
    Top = 42
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'Jozef'
  end
  object Edit2: TEdit
    Left = 128
    Top = 69
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'Nov'#225'k'
  end
  object ComboBox4: TComboBox
    Left = 128
    Top = 123
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = 'Mu'#382
    Items.Strings = (
      'Mu'#382
      #381'ena')
  end
  object ComboBox5: TComboBox
    Left = 128
    Top = 150
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 4
    Text = 'slovensk'#225
    Items.Strings = (
      'slovensk'#225
      #269'esk'#225
      'ma'#271'arsk'#225
      'po'#318'sk'#225
      'rus'#237'nsk'#225
      'r'#243'mska'
      'ukrajinsk'#225
      'in'#225)
  end
  object ComboBox6: TComboBox
    Left = 128
    Top = 174
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 5
    Text = '1.A'
    Items.Strings = (
      '1.A'
      '1.B'
      '1.C'
      '2.A'
      '2.B'
      '2.C'
      '3.A'
      '3.B'
      '3.C'
      '4.A'
      '4.B'
      '4.C'
      '4.D')
  end
  object Memo1: TMemo
    Left = 288
    Top = 42
    Width = 307
    Height = 153
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object Button2: TButton
    Left = 481
    Top = 201
    Width = 99
    Height = 25
    Caption = 'Vyp'#237'sa'#357' zoznam'
    TabOrder = 7
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 128
    Top = 96
    Width = 145
    Height = 21
    Date = 37116.000000000000000000
    Time = 37116.000000000000000000
    TabOrder = 8
  end
  object SpinEdit1: TSpinEdit
    Left = 424
    Top = 234
    Width = 51
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 9
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 128
    Top = 201
    Width = 51
    Height = 22
    Enabled = False
    MaxValue = 0
    MinValue = 0
    TabOrder = 10
    Value = 0
  end
  object Button3: TButton
    Left = 481
    Top = 232
    Width = 99
    Height = 25
    Caption = 'Vymaza'#357
    TabOrder = 11
    OnClick = Button3Click
  end
  object CheckBox1: TCheckBox
    Left = 27
    Top = 203
    Width = 97
    Height = 17
    Caption = 'Prida'#357' na poz'#237'ciu:'
    TabOrder = 12
    OnClick = CheckBox1Click
  end
end

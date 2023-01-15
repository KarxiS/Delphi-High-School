object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 655
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 880
    Top = 99
    Height = 556
    Align = alRight
    MinSize = 100
    ExplicitLeft = 505
    ExplicitTop = 41
    ExplicitHeight = 428
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 883
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 288
      Top = 54
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 778
      Top = 23
      Width = 20
      Height = 13
      Caption = 'WIP'
    end
    object Button1: TButton
      Left = 653
      Top = 42
      Width = 75
      Height = 25
      Action = TvarNastavenie
      Caption = 'Vlastnosti'
      TabOrder = 0
    end
    object Button3: TButton
      Left = 496
      Top = 42
      Width = 75
      Height = 25
      Caption = 'Vymazat tvar'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 695
    Top = 99
    Width = 185
    Height = 556
    Align = alRight
    Constraints.MaxWidth = 300
    Constraints.MinWidth = 100
    TabOrder = 1
    object CheckListBox1: TCheckListBox
      Left = 1
      Top = 1
      Width = 183
      Height = 554
      OnClickCheck = CheckListBox1ClickCheck
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 99
    Width = 695
    Height = 556
    Align = alClient
    TabOrder = 2
    object PaintBox1: TPaintBox
      Left = 1
      Top = 1
      Width = 693
      Height = 554
      Align = alClient
      PopupMenu = PopupMenu1
      OnMouseDown = PaintBox1MouseDown
      OnMouseMove = PaintBox1MouseMove
      OnMouseUp = PaintBox1MouseUp
      OnPaint = PaintBox1Paint
      ExplicitLeft = -4
      ExplicitTop = 6
    end
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 883
    Height = 26
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
  object Button2: TButton
    Left = 734
    Top = 69
    Width = 75
    Height = 25
    Caption = 'WIP'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = aaObdlznik
            Caption = '&Obdlznik'
            ImageIndex = 0
            ShowCaption = False
          end
          item
            Action = aaElipsa
            Caption = '&Elipsa'
            ImageIndex = 2
            ShowCaption = False
          end
          item
            Action = aaKriz
            Caption = '&Kriz'
            ImageIndex = 1
            ShowCaption = False
          end
          item
            Action = aaSipka
            Caption = '&Sipka'
            ImageIndex = 4
            ShowCaption = False
          end
          item
            Action = aaTrojuholnik
            Caption = '&Trojuholnik'
            ImageIndex = 3
            ShowCaption = False
          end
          item
            Action = fRuzova
            Caption = '&Ruzova'
            ImageIndex = 6
            ShowCaption = False
          end
          item
            Action = fModra
            Caption = '&Modra'
            ImageIndex = 5
            ShowCaption = False
          end
          item
            Action = fBiela
            Caption = '&Biela'
            ImageIndex = 7
            ShowCaption = False
          end
          item
            Action = TvarNastavenie
            Caption = '&Nastavenia vybrateho objektu'
            ImageIndex = 8
          end>
        ActionBar = ActionToolBar1
      end
      item
        Visible = False
      end>
    Images = ImageList1
    Left = 744
    Top = 336
    StyleName = 'Platform Default'
    object aaObdlznik: TAction
      Caption = 'Obdlznik'
      ImageIndex = 0
      OnExecute = aaObdlznikExecute
      OnUpdate = aaObdlznikUpdate
    end
    object aaElipsa: TAction
      Caption = 'Elipsa'
      ImageIndex = 2
      OnExecute = aaElipsaExecute
      OnUpdate = aaElipsaUpdate
    end
    object aaKriz: TAction
      Caption = 'Kriz'
      ImageIndex = 1
      OnExecute = aaKrizExecute
      OnUpdate = aaKrizUpdate
    end
    object aaSipka: TAction
      Caption = 'Sipka'
      ImageIndex = 4
      OnExecute = aaSipkaExecute
      OnUpdate = aaSipkaUpdate
    end
    object aaTrojuholnik: TAction
      Caption = 'Trojuholnik'
      ImageIndex = 3
      OnExecute = aaTrojuholnikExecute
      OnUpdate = aaTrojuholnikUpdate
    end
    object fBiela: TAction
      Caption = 'Biela'
      ImageIndex = 7
      OnExecute = fBielaExecute
    end
    object fModra: TAction
      Caption = 'Modra'
      ImageIndex = 5
      OnExecute = fModraExecute
    end
    object fRuzova: TAction
      Caption = 'Ruzova'
      ImageIndex = 6
      OnExecute = fRuzovaExecute
    end
    object TvarNastavenie: TAction
      Caption = 'Nastavenia vybrateho objektu'
      ImageIndex = 8
      OnExecute = TvarNastavenieExecute
    end
    object vymazat: TAction
      Caption = 'vymazat'
      OnExecute = vymazatExecute
    end
    object Farby: TAction
      Caption = 'Farby'
      OnExecute = FarbyExecute
    end
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 664
    Top = 336
    object Subor1: TMenuItem
      Caption = 'Subor'
      object Ulozit1: TMenuItem
        Caption = 'Ulozit'
        OnClick = Ulozit1Click
      end
      object Load1: TMenuItem
        Caption = 'Load'
        OnClick = Load1Click
      end
      object Vymazat1: TMenuItem
        Caption = 'Vymazat'
        OnClick = vymazatExecute
      end
    end
    object var1: TMenuItem
      Caption = 'Tvar'
      object Obdlznik1: TMenuItem
        Action = aaObdlznik
      end
      object Kriz1: TMenuItem
        Action = aaKriz
      end
      object Elipsa1: TMenuItem
        Action = aaElipsa
      end
      object Sipka1: TMenuItem
        Action = aaSipka
      end
    end
    object Farba1: TMenuItem
      Caption = 'Farby'
      object Modra1: TMenuItem
        Action = fModra
      end
      object Ruzova1: TMenuItem
        Action = fRuzova
      end
      object Biela1: TMenuItem
        Action = fBiela
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList1
    Left = 664
    Top = 392
    object Obdlznik2: TMenuItem
      Action = aaObdlznik
    end
    object Elipsa2: TMenuItem
      Action = aaElipsa
    end
    object Kriz2: TMenuItem
      Action = aaKriz
    end
    object Sipka2: TMenuItem
      Action = aaSipka
    end
    object Farby1: TMenuItem
      Caption = 'Farby'
      object Modra2: TMenuItem
        Action = fModra
      end
      object Biela2: TMenuItem
        Action = fBiela
      end
      object Ruzova2: TMenuItem
        Action = fRuzova
      end
    end
  end
  object ImageList1: TImageList
    Left = 744
    Top = 392
    Bitmap = {
      494C010109001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000F7F6F5FFA7A7A7FFA5A5A5FFA3A3
      A3FFA0A0A0FF9E9E9EFF9B9B9BFF999999FF969696FF949494FF939393FF9191
      91FF8F8F8FFF8E8E8EFF8D8D8DFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFF9F7EEFFF9F6ECFFF8F4
      EAFF677EA6FF2F5BC9FF2D5AC9FF375EB7FF918D86FFA09D94FFBBB7ABFFDFDA
      CBFFF3EEDDFFF4EEDDFFF4EEDCFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFAF7EFFFF9F7EEFFE8E9
      E8FF3763C7FF3766EEFF2553E2FF1541BCFF3C6C95FF2C557FFF999A94FFABA7
      9CFFE8E3D3FFF4EFDEFFF4EEDDFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFAF8F1FFE5E9F1FF417B
      FFFF5588FAFF537FDEFF4070EEFF2D5AD8FF3F719AFF3F6F97FF36638BFF5A73
      8CFFC7C3B6FFEFEADAFFF3EEDDFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFBF9F2FF316EFCFF3674
      FEFF457EFEFF6E99F9FF3F69C7FF3D6FBAFF4275A0FF36658FFF396891FF3A69
      8FFFC2BEB3FFD0CBBEFFE1DBCDFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FF94B0F4FF2B68F8FF306D
      FCFFC6D4F3FFF9F6EDFFF8F5EBFF4279AAFF477DA9FF467AA5FF3A6A94FF3866
      8FFF7D8F9DFFCFCBBEFFD7D2C4FFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FF2660EEFF2562F3FF3971
      F7FFFAF8F0FFFAF7EFFFF9F6EDFF87A1B5FF4276A3FF477CA8FF467BA5FF3968
      93FF464B50FFA6A297FFDCD7CAFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FF2D63EAFF205CEEFFFBF9
      F4FFFBF8F2FFFAF8F0FFFAF7EFFFF9F6EDFF4D88B7FF4174A2FF467BA7FF4274
      A0FF847363FF564436FFA8A498FFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFA7BCF1FF1C57E9FFFCFA
      F5FFFBF9F3FFFBF8F2FFFAF8F0FFFAF7EFFFC4D0D4FF4174A2FF3D6B95FF2C48
      60FF9F8772FF88725EFF4F3E30FFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFDFCF9FF1C55E6FFE4EA
      F5FFFCFAF4FFFBF9F3FFFBF8F2FFFAF8F0FFF9F7EEFFF9F6ECFFB6B2A9FFFFFC
      F9FFC8B2A2FF9C846EFF846E5AFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFDFCFAFFFDFCF9FF2E62
      E7FFFCFAF6FFFCFAF4FFFBF9F3FFFBF8F2FFFAF7EFFFF9F7EEFFF9F6ECFF938E
      86FFF4E2D9FFC2AC9BFF9A826CFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFEFDFBFFFDFCFAFFFDFC
      F9FFA4BAF0FF2E64EAFFE2E7F3FFFBF9F3FFFAF8F1FFFAF7EFFFF9F7EEFFF9F6
      ECFFFEFEFDFFF0DED4FFBDA795FFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFEFDFCFFFEFDFBFFFDFC
      FAFFFDFCF8FFFCFBF7FF4E7BECFFFCFAF4FFFBF9F2FFFAF8F1FFFAF7EFFFF9F7
      EEFFB8B5ACFFFFFEFEFFECD9CEFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFEFEFDFFFEFDFCFFFEFD
      FBFFFDFCF9FFFDFCF8FFFCFBF7FFFCFAF6FFFBF9F4FFFBF9F2FFFAF8F1FFFAF7
      EFFFF9F6EDFF908B83FFFFFEFCFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFFFEFEFFFEFEFDFFFEFD
      FCFFFDFDFAFFFDFCF9FFFDFCF8FFFCFBF7FFFCFAF5FFFBF9F4FFFBF9F2FFFAF8
      F1FFFAF7EFFFF9F6EDFFA19A91FFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F6F5FFFFFFFEFFFFFEFEFFFEFE
      FDFFFEFDFBFFFDFDFAFFFDFCF9FFFDFCF8FFFCFBF6FFFCFAF5FFFBF9F4FFFBF9
      F2FFFAF8F0FFFAF7EFFFF9F6EDFFF7F6F5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFAB6A1AFFD7BA95FFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFAB6A1AFFAE6F22FFDCC3A3FFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFAB6A1AFFE7D7BCFFAE6F22FFDFC7
      ABFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFAB6A1AFFAB6A
      1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFCAA26EFFF7F3E6FFE4D2B4FFAB6B
      1CFFE3CEB5FFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFAB6A1AFFFBF9
      F3FFFAF8F1FFFAF7EFFFF9F7EEFFF9F6ECFFF8F4E9FFF7F3E7FFF7F3E6FFE1CC
      ABFFAC6D1FFFE6D3BDFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFAB6A1AFFFBFA
      F4FFFBF9F2FFFAF8F1FFFAF7EFFFF9F7EEFFF8F5EAFFF8F4E9FFF7F3E7FFF7F3
      E5FFDEC7A4FFAD6F22FFE9D8C5FFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFAB6A1AFFFCFA
      F5FFFBFAF4FFFBF9F2FFFAF8F1FFFAF7EFFFF9F6ECFFF8F5EAFFF8F4E9FFF7F3
      E7FFF7F3E5FFDCC29DFFAF7227FFECDECDFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFAB6A1AFFFDFC
      F8FFFCFBF7FFFCFAF5FFFBF9F4FFFBF9F2FFFAF7EFFFF9F6EDFFF9F6ECFFF8F5
      EAFFF8F4E8FFDABF9AFFB0742AFFEEE1D2FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFAB6A1AFFFDFC
      F9FFFDFCF8FFFCFBF7FFFCFAF5FFFBF9F4FFFAF8F0FFFAF7EFFFF9F6EDFFF9F5
      EBFFDFC7A5FFAE7124FFEBDCCAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFAB6A1AFFFEFD
      FAFFFDFCF9FFFDFCF8FFFCFBF6FFFCFAF5FFFBF9F2FFFAF8F0FFFAF7EFFFE3CE
      B1FFAC6D1FFFE7D5BFFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFAB6A1AFFAB6A
      1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFCCA573FFFBF9F2FFE7D7BEFFAB6B
      1CFFE3CEB5FFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFAB6A1AFFEEE1CFFFAE6F22FFDFC7
      ABFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFAB6A1AFFAE6F22FFD9BD9BFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFAB6A1AFFD3B38AFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
      FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AEFFFFC9AE
      FFFFC9AEFFFFC9AEFFFFC9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFEBB47EFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFE0C7AAFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFAF7227FFF9F3ECFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFC9A16CFFDDC2A2FFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFC59961FFAB6A1AFFAB6A1AFFAB6A
      1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A
      1AFFAB6A1AFFC3955CFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFAF8
      F0FFFAF7EEFFF9F6ECFFF8F4E9FFF7F3E7FFF7F2E5FFF5F1E2FFF5F0E0FFF4EF
      DDFFF4EEDCFFAB6A1AFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFE5D2B5FFBF8E52FFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFE8D5C0FFB7803DFFAB6A1AFFB7803DFFE8D5C0FFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFF6EEE4FFAF7227FFEBDDC8FFF9F5
      EBFFF8F4E9FFF7F4E8FFF6F2E5FFF6F1E3FFF5F1E2FFF5F0E0FFF5EFDFFFF3EC
      DBFFAB6B1CFFEFE1D1FFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFBF9
      F2FFFAF8F0FFFAF7EEFFF8F5EBFFF8F4E9FFF7F3E7FFF6F1E3FFF5F1E2FFF4EF
      DEFFF4EFDDFFAB6A1AFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFF3E8DCFFF8F5E9FFB47A32FFF5ECE2FFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFC09054FFC09053FFEBDEC8FFF7F3E6FFEBDCC3FFBF8E4FFFC090
      54FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFDCC09FFFCCA471FFF9F6
      EDFFF9F5EBFFF8F5EAFFF7F3E6FFF6F2E5FFF6F2E3FFF6F1E2FFF5F0E0FFD1AF
      7FFFCBA371FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFBFA
      F4FFFBF9F2FFFAF8F0FFF9F6ECFFF8F5EBFFF8F4E9FFF7F2E5FFF6F1E3FFF5F0
      E0FFF4EFDEFFAB6A1AFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFAF5
      EFFFBD8B4DFFB7803BFFD8BA93FFF9F6ECFFF8F5EBFFD6B88FFFBC894AFFDBBE
      9DFFF9F3ECFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFE6D2BAFFDABF99FFF9F6ECFFF8F4E9FFF7F3E7FFF6F2E4FFF5F0E1FFD7BA
      90FFE6D2BAFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFF1E5D7FFAC6D
      1FFFF4EDE0FFF9F6EDFFF8F5EAFFF8F4E8FFF7F3E7FFF7F2E5FFF6F2E3FFD4B3
      8AFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFCFB
      F6FFFBFAF4FFFBF9F2FFFAF7EEFFF9F6ECFFF8F5EBFFF7F3E7FFF7F2E5FFF5F1
      E2FFF5F0E0FFAB6A1AFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFDFC5A7FFAE71
      24FFE9DAC3FFFBF9F3FFFAF8F1FFFAF7EEFFF9F6ECFFF8F5EBFFE8D7BCFFCBA4
      70FFAD6F22FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFAE7124FFFAF8F0FFFAF7EEFFF8F5EBFFF8F4E9FFF7F3E6FFF6F1E2FFF5F0
      E1FFAF7227FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFD3B1
      87FFCDA877FFFAF7EFFFF9F6ECFFF8F5EAFFF8F4E8FFF7F3E7FFE9D8BFFFFBF6
      F2FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFDFC
      F9FFFDFBF7FFFCFBF6FFFBF9F2FFFAF8F0FFFAF7EEFFF8F5EBFFF8F4E9FFF7F2
      E5FFF6F1E3FFAB6A1AFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFF8F1
      EAFFBD8B4DFFB57D36FFD6B78FFFFAF7F0FFFAF7EEFFD7B991FFBC894AFFDBBE
      9DFFF9F3ECFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFD6B68EFFFBF9F2FFFAF8F0FFF9F6ECFFF8F5EBFFF7F3E7FFF6F2E4FFF6F1
      E2FFD2B182FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFDFA
      F7FFB67F3AFFDFC8A8FFF9F6EDFFF9F6ECFFF8F5EAFFF8F4E8FFC9A16CFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFEFD
      FBFFFDFCF9FFFDFBF7FFFBFAF4FFFBF9F2FFFAF8F0FFF9F6ECFFF8F5EBFFF7F3
      E7FFF7F2E5FFAB6A1AFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFF4EADFFFC89E69FFFAF8F1FFD7B890FFC69B64FFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFBF9F3FFFCFAF5FFFBF9F3FFFAF8F0FFFAF7EEFFF8F5EBFFF7F3E7FFF7F3
      E6FFF4EEDDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFEAD9C4FFBF8D4FFFFAF7EFFFF9F6EDFFF9F6ECFFE1CCADFFBA8645FFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFEFD
      FCFFFEFDFBFFFDFCF9FFFCFBF6FFFBFAF4FFFBF9F2FFFAF7EEFFF9F6ECFFF8F4
      E9FFF7F3E7FFAB6A1AFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFF3E8DCFFFBF9F3FFB67E38FFF3E8DCFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFEFCFAFFFFFEFDFFFFFEFDFFFFFE
      FDFFF2E9DDFFFCFBF7FFFCFAF5FFFBF9F2FFFAF8F0FFF9F6ECFFF8F4E9FFF7F3
      E7FFECE0CAFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFCBA371FFFAF8F1FFFAF7EFFFF9F7EEFFC29358FFE6D2BAFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFEFE
      FDFFFEFDFCFFFEFDFBFFFDFBF7FFFCFBF6FFFBFAF4FFFAF8F0FFFAF7EEFFF8F5
      EBFFF8F4E9FFAB6A1AFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFCBA472FFDBBE9DFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFE7D3BDFFFFFEFDFFFFFEFDFFFFFE
      FDFFD7B891FFFDFCF8FFFCFBF7FFFBF9F3FFFBF9F2FFFAF7EEFFF8F5EBFFF8F4
      E9FFD2B184FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFC89D67FFFAF7F0FFAB6B1CFFEFE1D1FFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFAB6A
      1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A1AFFAB6A
      1AFFAB6A1AFFAB6A1AFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFAF7227FFF9F3ECFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFCDA777FFFFFEFDFFFFFEFDFFFFFE
      FDFFAF7227FFFDFCFAFFFDFCF8FFFCFAF5FFFBF9F3FFFAF8F0FFF9F6ECFFF8F5
      EBFFAF7227FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFC3955CFFD5B58BFFCAA26FFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFE0C7AAFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFB8823FFFFFFEFDFFFFFEFDFFFFFE
      FDFFE7D3BDFFDDC2A1FFFDFCFAFFFCFBF7FFFCFAF5FFFBF9F2FFFAF7EEFFDABE
      98FFE7D3BDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFF4EADFFFB2782FFFF6EEE4FFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFAF7227FFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFC29459FFC09054FFF0E6D6FFFCFBF7FFEFE3D2FFC09054FFC294
      59FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFF4EADFFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFEBB47EFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEEDDCFFFEED
      DCFFFEEDDCFFFEEDDCFFFEEDDCFFEBB47EFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFE9D7C2FFB7803DFFAB6A1AFFB7803DFFE8D5C0FFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFDDDCDB00DAA36DFFDAA36DFFDAA3
      6DFFDAA36DFFDAA36DFFDAA36DFFDAA36DFFDAA36DFFDAA36DFFDAA36DFFDAA3
      6DFFDAA36DFFDAA36DFFDAA36DFFDAA36DFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFF424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object SaveDialog1: TSaveDialog
    Filter = 'udaje tvarov|*.tvr|vsetky koncovky|*.*'
    Left = 664
    Top = 288
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.tvr'
    Filter = 'Udaje tvarov|*.tvr|Vsetky koncovky|*.*'
    Left = 744
    Top = 288
  end
end

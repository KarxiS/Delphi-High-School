object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form2'
  ClientHeight = 619
  ClientWidth = 663
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
    Left = 336
    Top = 96
    Width = 166
    Height = 33
    Caption = 'pocet ziakov='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 93
    Width = 97
    Height = 36
    Caption = 'zapis ziaka'
    ImageIndex = 1
    Images = ImageList1
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 119
    Top = 94
    Width = 100
    Height = 36
    Caption = 'vymaz vsetko'
    ImageIndex = 0
    Images = ImageList1
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 225
    Top = 93
    Width = 89
    Height = 36
    Caption = 'vypisat zoznam'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 160
    Width = 637
    Height = 441
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 8
    Top = 33
    Width = 306
    Height = 55
    TabOrder = 4
    object Label2: TLabel
      Left = 0
      Top = 11
      Width = 49
      Height = 13
      Caption = 'Kod ziaka:'
    end
    object Label3: TLabel
      Left = 71
      Top = 0
      Width = 180
      Height = 24
      Caption = 'Vymazat jednotlivca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button4: TButton
      Left = 222
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Vymazat'
      TabOrder = 0
      OnClick = Button4Click
    end
    object SpinEdit1: TSpinEdit
      Left = 0
      Top = 30
      Width = 121
      Height = 22
      MaxValue = 30
      MinValue = 1
      TabOrder = 1
      Value = 0
    end
    object Button5: TButton
      Left = 127
      Top = 30
      Width = 89
      Height = 26
      Caption = 'upravit ziaka'
      TabOrder = 2
      OnClick = Button5Click
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 30
    Width = 30
    Bitmap = {
      494C01010200080004001E001E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000780000001E00000001002000000000004038
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000004000000090000000B0000000E0000000F0000000E0000000E0000
      000C000000090000000500000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010014000000020000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D275827A5010301230000
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
      0000000000000000000000000000000000000000000000000000000000010000
      021A00004491000074BC000093D40000A1DE000093D4000074BC000016540000
      021A000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000F1F461F9458C458F6142D14770000
      000D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000321000035800000
      94D50000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000CDFA0000
      94D5000035800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000100172451249E5CCD5CFC5ED25EFF449A44DA0710
      0747000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000007000096D60000D3FE0000
      D5FF0000D5FF0000D5FF0000D5FF0000D3FE0000D5FF0000D5FF0000D5FF0000
      D5FF0000D3FE00001D5E00000007000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020502282F692FB45ED05EFE5ED25EFF5ED25EFF5ED25EFF2D64
      2DB0010401250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000110000529E0000D1FD0000D5FF0000C7F70000
      69B30000011500000001000000000000000000000000000000010000124B0000
      64AF0000C5F60000D5FF0000D1FD0000529E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000811084A3E8C3ED05ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF58C4
      58F7183518810000001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000428E0000D1FD0000D5FF0000CDFA00002E780000
      0009000000000000000000000000000000000000000000000000000000000000
      000A00001D5F0000D5FF0000D5FF0000D1FD0000000700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      001751B351EC5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED2
      5EFF4BA84BE40A170A5600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000C5F50000D5FF0000D5FF0000D5FF00006AB40000
      021E000000000000000000000000000000000000000000000000000000000000
      000000000000000090D20000D5FF0000D5FF00001D5F00000000000000000000
      000000000000000000000000000000000000000000000000000A09150952377C
      37C45ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED2
      5EFF5ED25EFF397E39C600000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000035800000D5FF0000C5F600002E780000D5FF0000D5FF0000
      D5FF0000031F0000000000000000000000000000000000000000000000000000
      0000000000000000000000001E600000C7F70000D5FF00003580000000000000
      000000000000000000000000000000010013091509522D662DB257C257F55ED2
      5EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF59C659F84FB14FEA5ED25EFF5ED2
      5EFF5ED25EFF5CCE5CFD0102011E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000021B000094D50000D5FF000068B20000000A00006EB70000D5FF0000
      D5FF00006CB60000031F00000000000000000000000000000000000000000000
      000000000000000000000000000A000063AE0000D5FF000093D40000021B0000
      00000000000000000000152E15783C863CCC59C659F85ED25EFF5ED25EFF5ED2
      5EFF5ED25EFF5ED25EFF5ED25EFF5ED05EFE2B602BAC1D411D8F5ED25EFF5ED2
      5EFF5ED25EFF5ED25EFF1632167E000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000017550000CDFA0000C9F800001551000000000000031F00006EB70000
      D5FF0000D5FF00006CB60000031F000000000000000000000000000000000000
      00000000000000000000000000000000124C0000D5FF0000CDFA000017550000
      00000000000000000000091509524AA54AE25ED25EFF5ED25EFF5ED25EFF5ED2
      5EFF5ED25EFF5ED25EFF5ED25EFF347534BF0308033202040227469E46DD5ED2
      5EFF5ED25EFF5ED25EFF4DAC4DE70C1C0C5F0000000800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0009000074BC0000D5FF00004E9B000000000000000000000000000000000000
      031F0000D5FF0000D5FF0000D5FF0000031F0000000000000000000000000000
      0000000000000000000000000000000000000000D5FF0000D5FF000074BC0000
      00000000000000000000000000000813084E4DAE4DE85ED25EFF5ED25EFF5ED2
      5EFF5ED25EFF5ED25EFF367A36C2040A04390000000200000001142C14755CCD
      5CFC5ED25EFF5ED25EFF5ED25EFF419241D50710074700000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0115000093D40000D5FF00002B73000000000000000000000000000000000000
      000000006EB70000D5FF0000D5FF00006CB60000031F00000000000000000000
      0000000000000000000000000000000000000000D5FF0000D5FF000093D40000
      0000000000000000000000000000000000010C1D0C5F54BC54F15ED25EFF5ED2
      5EFF5CCE5CFD306B30B60308033400000002000000000000000000010016397F
      39C65ED25EFF5ED25EFF5ED25EFF5ED25EFF367A36C204090436000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      021D0000A1DE0000D5FF00001D5E000000000000000000000000000000000000
      00000000031F00006EB70000D5FF0000D5FF00006CB60000031F000000000000
      0000000000000000000000000000000000000000D5FF0000D5FF0000A1DE0000
      00000000000000000000000000000000000000000003142D14775AC85AF95ED2
      5EFF1F451F930103012200000000000000000000000000000000000000000915
      095156C156F45ED25EFF5ED25EFF5ED25EFF5ED05EFE2D642DB00205022A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0115000093D40000D5FF00002971000000000000000000000000000000000000
      000000000000000000000000031F0000D5FF0000D5FF0000D5FF0000031F0000
      0000000000000000000000000000000000000000D5FF0000D5FF000093D40000
      000000000000000000000000000000000000000000000000000A1E451E923371
      33BB0000000D0000000000000000000000000000000000000000000000000000
      00072452249F5ED25EFF5ED25EFF5ED25EFF5ED25EFF5CCB5CFB265526A30000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0009000074BC0000D5FF00004B98000000000000000000000000000000000000
      000000000000000000000000000000006EB70000D5FF0000D5FF00006CB60000
      031F000000000000000000000000000000000000D5FF0000D5FF000074BC0000
      00000000000000000000000000000000000000000000000000000000000A0000
      000D000000000000000000000000000000000000000000000000000000000000
      00000205022A469D46DC5ED25EFF5ED25EFF5ED25EFF5ED25EFF5AC85AF90103
      011F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000044910000D5FF000088CC000001130000000000000000000000000000
      00000000000000000000000000000000031F00006EB70000D5FF0000D5FF0000
      6CB60000031F0000000000000000000001150000D5FF0000D5FF000044910000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F220F685ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF214A
      21980102011E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000021B000094D50000D5FF000063AE0000000A00000000000000000000
      000000000000000000000000000000000000000000000000031F0000D5FF0000
      D5FF0000D5FF0000021E0000000A000068B20000D5FF000094D50000021B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000C5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF59C6
      59F8234E239C0103012200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000035800000D5FF0000C7F700001D5F00000000000000000000
      000000000000000000000000000000000000000000000000000000006EB70000
      D5FF0000D5FF000069B300002E780000C5F60000D5FF00003580000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000469D46DC5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED2
      5EFF5ACA5AFA295B29A80205022B000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000003220000D5FF0000D5FF0000A1DE00000000000000000000
      00000000000000000000000000000000000000000000000000000000031F0000
      6EB70000D5FF0000D1FD0000CBF90000D5FF000094D500000322000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C1C0C5E57C357F55ED25EFF5ED25EFF5ED25EFF5ED2
      5EFF5ED25EFF5CCE5CFD337133BB050B053D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000428E0000D1FD0000D5FF0000A1DE00001D5F0000
      000A000000000000000000000000000000000000000000000000000000000000
      000800002E780000D5FF0000D5FF0000D1FD0000000700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000071F461F935ED05EFE5ED25EFF5ED25EFF5ED2
      5EFF5ED25EFF5ED25EFF5ED25EFF419041D30000000C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000110000529E0000D1FD0000D5FF0000C5F60000
      63AE000001120000000100000000000000000000000000000001000014500000
      69B30000C7F70000D5FF0000D1FD0000529E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000010018347534BE5ED25EFF5ED25EFF5ED2
      5EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF1C3E1C8C01040124000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000110000428E0000D5FF0000D5FF0000
      D5FF000088CC00004B980000297100001D5E00002A7200004E9B0000C7F70000
      D5FF0000D5FF0000C5F60000428E000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003080332449A44DA5ED25EFF5ED2
      5EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5CCD5CFC397E39C60C1C0C5E0001
      0015000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000321000035800000
      96D60000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000CDFA0000
      96D6000035800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000813084D4FB24FEA5ED2
      5EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF58C458F62553
      25A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      021A00004491000075BD000093D40000A2DF000093D4000075BD000017550000
      021A000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000010E1F0E635ED2
      5EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED25EFF5ED05EFE387D38C50812
      084D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000100000009000001150000021D0000011500000009000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000355BD
      55F25ED25EFF5ED25EFF5ED25EFF5ED25EFF59C659F8275727A40205022B0000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001025
      106B52B752EE5ED25EFF5ED25EFF5ED25EFF1C3E1C8C0002001A000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00020A180A57469D46DC5ED25EFF53BA53F00001001300000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050B053B367836C01C3D1C8B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000780000001E0000000100010000000000E00100000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 555
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnResize = Button1Click
  PixelsPerInch = 96
  TextHeight = 13
  object Kreslenie: TPageControl
    Left = 8
    Top = 8
    Width = 401
    Height = 377
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Image'
      object Image1: TImage
        Left = -4
        Top = -8
        Width = 397
        Height = 361
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Paintbox'
      ImageIndex = 1
      object PaintBox1: TPaintBox
        Left = -4
        Top = -7
        Width = 396
        Height = 360
        OnPaint = PaintBox1Paint
      end
    end
  end
  object Panel1: TPanel
    Left = 96
    Top = 391
    Width = 217
    Height = 143
    TabOrder = 1
    object Button1: TButton
      Left = 7
      Top = 104
      Width = 82
      Height = 25
      Caption = 'Generuj Image'
      TabOrder = 0
      OnClick = Button1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 7
      Top = 9
      Width = 185
      Height = 89
      Caption = 'Tvar'
      Items.Strings = (
        'stvorec'
        'obdlznik'
        'elipsa')
      TabOrder = 1
      OnClick = PaintBox1Paint
    end
    object Button2: TButton
      Left = 112
      Top = 104
      Width = 81
      Height = 25
      Caption = 'Farba'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end

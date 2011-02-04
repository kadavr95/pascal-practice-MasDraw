object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 579
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object img: TImage
    Left = 416
    Top = 8
    Width = 382
    Height = 499
  end
  object sgd: TStringGrid
    Left = 8
    Top = 8
    Width = 393
    Height = 499
    ColCount = 3
    TabOrder = 0
  end
  object edta: TEdit
    Left = 8
    Top = 544
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edta'
  end
  object edtb: TEdit
    Left = 135
    Top = 544
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edtb'
  end
  object edtx: TEdit
    Left = 262
    Top = 544
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edtx'
  end
  object edty: TEdit
    Left = 389
    Top = 544
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'edty'
  end
  object edtr: TEdit
    Left = 516
    Top = 544
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'edtr'
  end
  object btn: TButton
    Left = 363
    Top = 513
    Width = 75
    Height = 25
    Caption = 'btn'
    TabOrder = 6
    OnClick = btnClick
  end
end

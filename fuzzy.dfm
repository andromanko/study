object Form4: TForm4
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'FuzzyLogic'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 120
    Width = 33
    Height = 13
    Caption = 'Вход 1'
  end
  object Label2: TLabel
    Left = 288
    Top = 40
    Width = 33
    Height = 13
    Caption = 'Вход 2'
  end
  object Label3: TLabel
    Left = 432
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Выход'
  end
  object Label4: TLabel
    Left = 152
    Top = 8
    Width = 305
    Height = 13
    Caption = 'Звено нечеткого логического вывода объезда препятствия'
  end
  object Label5: TLabel
    Left = 424
    Top = 48
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label6: TLabel
    Left = 424
    Top = 72
    Width = 6
    Height = 13
    Caption = '1'
  end
  object Label7: TLabel
    Left = 424
    Top = 96
    Width = 6
    Height = 13
    Caption = '2'
  end
  object Label8: TLabel
    Left = 424
    Top = 120
    Width = 6
    Height = 13
    Caption = '3'
  end
  object Label9: TLabel
    Left = 424
    Top = 144
    Width = 6
    Height = 13
    Caption = '4'
  end
  object StringGrid1: TStringGrid
    Left = 144
    Top = 88
    Width = 65
    Height = 73
    ColCount = 1
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ScrollBars = ssNone
    TabOrder = 0
  end
  object StringGrid2: TStringGrid
    Left = 216
    Top = 56
    Width = 193
    Height = 25
    ColCount = 3
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ScrollBars = ssNone
    TabOrder = 1
  end
  object StringGrid3: TStringGrid
    Left = 216
    Top = 88
    Width = 193
    Height = 73
    ColCount = 3
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ScrollBars = ssNone
    TabOrder = 2
  end
  object StringGrid4: TStringGrid
    Left = 440
    Top = 40
    Width = 65
    Height = 121
    ColCount = 1
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ScrollBars = ssNone
    TabOrder = 3
  end
end

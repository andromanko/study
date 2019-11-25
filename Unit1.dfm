object Form1: TForm1
  Left = 195
  Top = 107
  Width = 810
  Height = 627
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = -8
    Width = 400
    Height = 400
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object Label4: TLabel
    Left = 616
    Top = 8
    Width = 117
    Height = 13
    Caption = 'Скорость крейсерская'
  end
  object Label5: TLabel
    Left = 608
    Top = 48
    Width = 126
    Height = 13
    Caption = 'критическое расстояние'
  end
  object Label7: TLabel
    Left = 624
    Top = 120
    Width = 3
    Height = 13
    Caption = 'I'
  end
  object Label8: TLabel
    Left = 664
    Top = 120
    Width = 5
    Height = 13
    Caption = 'J'
  end
  object Label3: TLabel
    Left = 632
    Top = 32
    Width = 101
    Height = 13
    Caption = 'расстояние до цели'
  end
  object Label12: TLabel
    Left = 272
    Top = 400
    Width = 34
    Height = 13
    Caption = 'режим'
  end
  object Label14: TLabel
    Left = 304
    Top = 464
    Width = 62
    Height = 29
    Caption = 'Time:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 368
    Top = 464
    Width = 13
    Height = 29
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label24: TLabel
    Left = 632
    Top = 96
    Width = 99
    Height = 13
    Caption = 'Погреш. Угла  град'
  end
  object Label25: TLabel
    Left = 624
    Top = 64
    Width = 108
    Height = 13
    Caption = 'точность прибытия м'
  end
  object Label26: TLabel
    Left = 616
    Top = 80
    Width = 114
    Height = 13
    Caption = 'расст до мнимой цели'
  end
  object Label53: TLabel
    Left = 224
    Top = 432
    Width = 137
    Height = 13
    Caption = 'Скорость мгновенная, м/с'
  end
  object Label54: TLabel
    Left = 144
    Top = 400
    Width = 56
    Height = 20
    Caption = 'Демо N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label56: TLabel
    Left = 200
    Top = 400
    Width = 6
    Height = 13
    Caption = 'o'
  end
  object Button1: TButton
    Left = 8
    Top = 432
    Width = 73
    Height = 25
    Caption = 'PAUSE'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 768
    Top = 592
    Width = 33
    Height = 8
    Caption = 'START+'
    TabOrder = 0
    OnClick = Button3Click
  end
  object Button6: TButton
    Left = 88
    Top = 432
    Width = 129
    Height = 25
    Caption = 'ROBOT Parameters'
    TabOrder = 3
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 464
    Width = 75
    Height = 25
    Caption = 'STOP'
    TabOrder = 1
    OnClick = Button7Click
  end
  object GroupBox1: TGroupBox
    Left = 408
    Top = 8
    Width = 193
    Height = 153
    Caption = 'Настройка рабочего пространства'
    TabOrder = 4
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 130
      Height = 13
      Caption = 'Координаты:     X            Y'
    end
    object Label2: TLabel
      Left = 88
      Top = 112
      Width = 58
      Height = 13
      Caption = 'TargetAngle'
    end
    object Label13: TLabel
      Left = 8
      Top = 128
      Width = 129
      Height = 13
      Caption = 'расстояние мнимая цель'
    end
    object Button2: TButton
      Left = 8
      Top = 104
      Width = 49
      Height = 17
      Caption = 'SetTarget'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Edit8: TEdit
      Left = 80
      Top = 32
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object Edit9: TEdit
      Left = 136
      Top = 32
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object Button5: TButton
      Left = 96
      Top = 80
      Width = 89
      Height = 17
      Caption = 'ClearWorkSpace'
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button8: TButton
      Left = 64
      Top = 56
      Width = 121
      Height = 17
      Caption = 'SetStartRobotPosition'
      TabOrder = 4
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 8
      Top = 32
      Width = 49
      Height = 17
      Caption = 'Load'
      TabOrder = 5
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 8
      Top = 56
      Width = 49
      Height = 17
      Caption = 'Save'
      TabOrder = 6
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 8
      Top = 80
      Width = 81
      Height = 17
      Caption = 'Line'
      TabOrder = 7
      OnClick = Button11Click
    end
    object Edit20: TEdit
      Left = 144
      Top = 128
      Width = 25
      Height = 21
      TabOrder = 8
      Text = '1.5'
      OnChange = Edit20Change
    end
    object Edit21: TEdit
      Left = 136
      Top = 104
      Width = 33
      Height = 21
      TabOrder = 9
      Text = '0'
      OnChange = Edit21Change
    end
  end
  object Button4: TButton
    Left = 88
    Top = 464
    Width = 129
    Height = 25
    Caption = 'WorkSpaceEdit'
    TabOrder = 5
    OnClick = Button4Click
  end
  object CheckBox1: TCheckBox
    Left = 608
    Top = 144
    Width = 57
    Height = 17
    Caption = 'Цель'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object CSpinEdit3: TCSpinEdit
    Left = 736
    Top = 8
    Width = 41
    Height = 22
    TabStop = True
    MaxValue = 100
    ParentColor = False
    TabOrder = 7
    Value = 1
  end
  object Edit10: TEdit
    Left = 736
    Top = 48
    Width = 33
    Height = 21
    TabOrder = 8
    Text = '0.1'
  end
  object CheckBox2: TCheckBox
    Left = 680
    Top = 160
    Width = 105
    Height = 17
    Caption = 'критич. уровень'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object Edit11: TEdit
    Left = 312
    Top = 400
    Width = 89
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 10
    Text = 'Target'
  end
  object Edit13: TEdit
    Left = 632
    Top = 120
    Width = 25
    Height = 21
    TabOrder = 11
    Text = '0'
  end
  object Edit14: TEdit
    Left = 672
    Top = 120
    Width = 25
    Height = 21
    TabOrder = 12
    Text = '0'
  end
  object Edit18: TEdit
    Left = 736
    Top = 32
    Width = 33
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 13
    Text = '0'
  end
  object GroupBox2: TGroupBox
    Left = 408
    Top = 0
    Width = 169
    Height = 57
    Caption = 'Координаты робота'
    TabOrder = 14
    object Label6: TLabel
      Left = 24
      Top = 16
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label9: TLabel
      Left = 64
      Top = 16
      Width = 7
      Height = 13
      Caption = 'Y'
    end
    object Label10: TLabel
      Left = 96
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Угол'
    end
    object Label11: TLabel
      Left = 136
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Руль'
    end
    object Edit15: TEdit
      Left = 8
      Top = 32
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit16: TEdit
      Left = 48
      Top = 32
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object Edit17: TEdit
      Left = 88
      Top = 32
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object Edit22: TEdit
      Left = 128
      Top = 32
      Width = 33
      Height = 21
      TabOrder = 3
      Text = '0'
    end
  end
  object GroupBox3: TGroupBox
    Left = 408
    Top = 48
    Width = 169
    Height = 121
    Caption = 'Состояние датчиков'
    TabOrder = 15
    object Label16: TLabel
      Left = 56
      Top = 40
      Width = 48
      Height = 13
      Caption = 'передние'
    end
    object Label17: TLabel
      Left = 8
      Top = 104
      Width = 32
      Height = 13
      Caption = 'левые'
    end
    object Label18: TLabel
      Left = 128
      Top = 104
      Width = 38
      Height = 13
      Caption = 'правые'
    end
    object Edit1: TEdit
      Left = 48
      Top = 16
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 88
      Top = 16
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object Edit3: TEdit
      Left = 16
      Top = 32
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object Edit4: TEdit
      Left = 120
      Top = 32
      Width = 33
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object Edit5: TEdit
      Left = 8
      Top = 56
      Width = 33
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object Edit6: TEdit
      Left = 8
      Top = 80
      Width = 33
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Edit7: TEdit
      Left = 128
      Top = 56
      Width = 33
      Height = 21
      TabOrder = 6
      Text = '0'
    end
    object Edit12: TEdit
      Left = 128
      Top = 80
      Width = 33
      Height = 21
      TabOrder = 7
      Text = '0'
    end
  end
  object Button13: TButton
    Left = 224
    Top = 464
    Width = 73
    Height = 25
    Caption = 'About'
    TabOrder = 16
    OnClick = Button13Click
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 496
    Width = 393
    Height = 97
    Caption = 'Программа'
    TabOrder = 17
    object Label19: TLabel
      Left = 152
      Top = 8
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label20: TLabel
      Left = 200
      Top = 8
      Width = 7
      Height = 13
      Caption = 'Y'
    end
    object Label21: TLabel
      Left = 240
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Angle'
    end
    object Label22: TLabel
      Left = 8
      Top = 32
      Width = 26
      Height = 13
      Caption = 'Цель'
    end
    object Label23: TLabel
      Left = 8
      Top = 56
      Width = 72
      Height = 13
      Caption = 'Промеж. цель'
    end
    object Edit23: TEdit
      Left = 136
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit24: TEdit
      Left = 184
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object Edit25: TEdit
      Left = 232
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object Edit26: TEdit
      Left = 136
      Top = 48
      Width = 41
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object Edit27: TEdit
      Left = 184
      Top = 48
      Width = 41
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object CSpinEdit1: TCSpinEdit
      Left = 88
      Top = 24
      Width = 41
      Height = 22
      TabStop = True
      MaxValue = 10
      ParentColor = False
      TabOrder = 5
      OnChange = CSpinEdit1Change
    end
    object CSpinEdit2: TCSpinEdit
      Left = 88
      Top = 48
      Width = 41
      Height = 22
      TabStop = True
      MaxValue = 10
      ParentColor = False
      TabOrder = 6
      OnChange = CSpinEdit2Change
    end
    object Button14: TButton
      Left = 232
      Top = 48
      Width = 57
      Height = 17
      Caption = 'Load'
      TabOrder = 7
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 232
      Top = 72
      Width = 57
      Height = 17
      Caption = 'Save'
      TabOrder = 8
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 296
      Top = 24
      Width = 89
      Height = 17
      Caption = 'SetTarget'
      TabOrder = 9
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 296
      Top = 48
      Width = 89
      Height = 17
      Caption = 'SetPromTarget'
      TabOrder = 10
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 8
      Top = 72
      Width = 217
      Height = 17
      Caption = 'START PROGRAM'
      TabOrder = 11
      OnClick = Button18Click
    end
  end
  object Edit19: TEdit
    Left = 736
    Top = 64
    Width = 33
    Height = 21
    TabOrder = 18
    Text = '0.05'
    OnChange = Edit19Change
  end
  object Edit28: TEdit
    Left = 736
    Top = 80
    Width = 33
    Height = 21
    TabOrder = 19
    Text = '1'
  end
  object CheckBox3: TCheckBox
    Left = 688
    Top = 176
    Width = 73
    Height = 17
    Caption = 'ФОРСАЖ'
    TabOrder = 20
  end
  object CheckBox4: TCheckBox
    Left = 608
    Top = 160
    Width = 65
    Height = 17
    Caption = 'Ориент'
    TabOrder = 21
    OnClick = CheckBox4Click
  end
  object CheckBox5: TCheckBox
    Left = 608
    Top = 176
    Width = 73
    Height = 17
    Caption = 'пром.цели'
    Checked = True
    State = cbChecked
    TabOrder = 22
  end
  object Edit29: TEdit
    Left = 736
    Top = 96
    Width = 33
    Height = 21
    TabOrder = 23
    Text = '5'
    OnChange = Edit29Change
  end
  object Button12: TButton
    Left = 88
    Top = 400
    Width = 49
    Height = 25
    Caption = 'DEMO'
    TabOrder = 24
    OnClick = Button12Click
  end
  object GroupBox5: TGroupBox
    Left = 408
    Top = 192
    Width = 385
    Height = 129
    Caption = 'Правила ухода от столкновений'
    TabOrder = 25
    object Label27: TLabel
      Left = 144
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Right, m'
    end
    object Label28: TLabel
      Left = 16
      Top = 64
      Width = 32
      Height = 13
      Caption = 'Left, m'
    end
    object Label29: TLabel
      Left = 288
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Steer, rad'
    end
    object Label36: TLabel
      Left = 288
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label37: TLabel
      Left = 288
      Top = 48
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label38: TLabel
      Left = 288
      Top = 64
      Width = 6
      Height = 13
      Caption = '2'
    end
    object Label39: TLabel
      Left = 288
      Top = 80
      Width = 6
      Height = 13
      Caption = '3'
    end
    object Label40: TLabel
      Left = 288
      Top = 96
      Width = 6
      Height = 13
      Caption = '4'
    end
    object Label51: TLabel
      Left = 352
      Top = 32
      Width = 25
      Height = 13
      Caption = 'Right'
    end
    object Label52: TLabel
      Left = 352
      Top = 96
      Width = 18
      Height = 13
      Caption = 'Left'
    end
    object StringGrid1: TStringGrid
      Left = 72
      Top = 56
      Width = 49
      Height = 49
      ColCount = 1
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 0
    end
    object StringGrid2: TStringGrid
      Left = 128
      Top = 32
      Width = 153
      Height = 17
      ColCount = 3
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 1
    end
    object StringGrid3: TStringGrid
      Left = 128
      Top = 56
      Width = 153
      Height = 49
      ColCount = 3
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 2
    end
    object StringGrid4: TStringGrid
      Left = 296
      Top = 32
      Width = 49
      Height = 81
      ColCount = 1
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 3
    end
    object CheckBox6: TCheckBox
      Left = 16
      Top = 32
      Width = 97
      Height = 17
      Caption = 'коррекция'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object Edit30: TEdit
      Left = 16
      Top = 80
      Width = 33
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Edit31: TEdit
      Left = 192
      Top = 8
      Width = 33
      Height = 21
      TabOrder = 6
      Text = '0'
    end
    object Edit32: TEdit
      Left = 344
      Top = 8
      Width = 33
      Height = 21
      TabOrder = 7
      Text = '0'
    end
  end
  object GroupBox6: TGroupBox
    Left = 408
    Top = 320
    Width = 385
    Height = 121
    Caption = 'Правила следования левой стене'
    TabOrder = 26
    object Label30: TLabel
      Left = 8
      Top = 72
      Width = 56
      Height = 13
      Caption = 'FrontLeft, m'
    end
    object Label31: TLabel
      Left = 168
      Top = 16
      Width = 55
      Height = 13
      Caption = 'RearLeft, m'
    end
    object Label34: TLabel
      Left = 288
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Steer, rad'
    end
    object Label41: TLabel
      Left = 288
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label42: TLabel
      Left = 288
      Top = 48
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label43: TLabel
      Left = 288
      Top = 64
      Width = 6
      Height = 13
      Caption = '2'
    end
    object Label44: TLabel
      Left = 288
      Top = 80
      Width = 6
      Height = 13
      Caption = '3'
    end
    object Label45: TLabel
      Left = 288
      Top = 96
      Width = 6
      Height = 13
      Caption = '4'
    end
    object StringGrid5: TStringGrid
      Left = 72
      Top = 56
      Width = 49
      Height = 49
      ColCount = 3
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 0
    end
    object StringGrid6: TStringGrid
      Left = 128
      Top = 32
      Width = 153
      Height = 17
      ColCount = 3
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 1
    end
    object StringGrid7: TStringGrid
      Left = 128
      Top = 56
      Width = 153
      Height = 49
      ColCount = 3
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 2
    end
    object StringGrid8: TStringGrid
      Left = 296
      Top = 32
      Width = 49
      Height = 81
      ColCount = 1
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 3
    end
    object Edit33: TEdit
      Left = 16
      Top = 88
      Width = 33
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object Edit34: TEdit
      Left = 232
      Top = 8
      Width = 33
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Edit35: TEdit
      Left = 344
      Top = 8
      Width = 33
      Height = 21
      TabOrder = 6
      Text = '0'
    end
  end
  object GroupBox7: TGroupBox
    Left = 408
    Top = 440
    Width = 385
    Height = 129
    Caption = 'Правила следования правой стене'
    TabOrder = 27
    object Label32: TLabel
      Left = 8
      Top = 72
      Width = 63
      Height = 13
      Caption = 'FrontRight, m'
    end
    object Label33: TLabel
      Left = 152
      Top = 16
      Width = 62
      Height = 13
      Caption = 'RearRight, m'
    end
    object Label35: TLabel
      Left = 288
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Steer, rad'
    end
    object Label46: TLabel
      Left = 288
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label47: TLabel
      Left = 288
      Top = 48
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label48: TLabel
      Left = 288
      Top = 64
      Width = 6
      Height = 13
      Caption = '2'
    end
    object Label49: TLabel
      Left = 288
      Top = 80
      Width = 6
      Height = 13
      Caption = '3'
    end
    object Label50: TLabel
      Left = 288
      Top = 96
      Width = 6
      Height = 13
      Caption = '4'
    end
    object StringGrid9: TStringGrid
      Left = 72
      Top = 56
      Width = 49
      Height = 49
      ColCount = 3
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 0
    end
    object StringGrid10: TStringGrid
      Left = 128
      Top = 32
      Width = 153
      Height = 17
      ColCount = 3
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 1
    end
    object StringGrid11: TStringGrid
      Left = 130
      Top = 54
      Width = 151
      Height = 49
      ColCount = 3
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 2
    end
    object StringGrid12: TStringGrid
      Left = 296
      Top = 32
      Width = 49
      Height = 81
      ColCount = 1
      DefaultColWidth = 50
      DefaultRowHeight = 15
      FixedCols = 0
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssNone
      TabOrder = 3
    end
    object Edit36: TEdit
      Left = 16
      Top = 88
      Width = 33
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object Edit37: TEdit
      Left = 224
      Top = 8
      Width = 33
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Edit38: TEdit
      Left = 344
      Top = 8
      Width = 33
      Height = 21
      TabOrder = 6
      Text = '0'
    end
  end
  object Button19: TButton
    Left = 408
    Top = 576
    Width = 99
    Height = 17
    Caption = 'Apply Fuzzy Rules'
    TabOrder = 28
    OnClick = Button19Click
  end
  object Button20: TButton
    Left = 528
    Top = 576
    Width = 75
    Height = 17
    Caption = 'Load Logic'
    TabOrder = 29
    OnClick = Button20Click
  end
  object Button21: TButton
    Left = 632
    Top = 576
    Width = 75
    Height = 17
    Caption = 'Save Logic'
    TabOrder = 30
    OnClick = Button21Click
  end
  object Edit39: TEdit
    Left = 368
    Top = 424
    Width = 33
    Height = 21
    TabOrder = 31
    Text = '0'
  end
  object Button22: TButton
    Left = 8
    Top = 400
    Width = 75
    Height = 25
    Caption = 'START'
    TabOrder = 32
    OnClick = Button22Click
  end
  object Edit40: TEdit
    Left = 736
    Top = 120
    Width = 41
    Height = 21
    TabOrder = 33
    Text = '0'
  end
  object CSpinEdit4: TCSpinEdit
    Left = 208
    Top = 400
    Width = 33
    Height = 22
    TabStop = True
    MaxValue = 9
    ParentColor = False
    TabOrder = 34
    OnChange = CSpinEdit4Change
  end
  object CSpinEdit5: TCSpinEdit
    Left = 240
    Top = 400
    Width = 33
    Height = 22
    TabStop = True
    MaxValue = 10
    ParentColor = False
    TabOrder = 35
    Value = 5
  end
end

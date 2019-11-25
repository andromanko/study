object Form2: TForm2
  Left = 508
  Top = 370
  Width = 496
  Height = 328
  Caption = 'Настройки модели системы'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 8
    Width = 63
    Height = 13
    Caption = 'Robot Widtrh'
  end
  object Label2: TLabel
    Left = 40
    Top = 32
    Width = 71
    Height = 13
    Caption = 'Robo0t Lenght'
  end
  object Image1: TImage
    Left = 16
    Top = 56
    Width = 225
    Height = 241
  end
  object Label5: TLabel
    Left = 272
    Top = 104
    Width = 95
    Height = 13
    Caption = 'Robot Sonar Range'
  end
  object Label6: TLabel
    Left = 280
    Top = 128
    Width = 90
    Height = 13
    Caption = 'Robot Sonar Angle'
  end
  object Label3: TLabel
    Left = 272
    Top = 16
    Width = 101
    Height = 13
    Caption = 'Number of  the Sonar'
  end
  object Label4: TLabel
    Left = 336
    Top = 40
    Width = 38
    Height = 13
    Caption = 'Sonar X'
  end
  object Label7: TLabel
    Left = 336
    Top = 64
    Width = 38
    Height = 13
    Caption = 'Sonar Y'
  end
  object Label8: TLabel
    Left = 320
    Top = 80
    Width = 58
    Height = 13
    Caption = 'Sonar Angle'
  end
  object Label9: TLabel
    Left = 304
    Top = 168
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label10: TLabel
    Left = 312
    Top = 168
    Width = 6
    Height = 13
    Caption = '1'
  end
  object Label11: TLabel
    Left = 328
    Top = 176
    Width = 6
    Height = 13
    Caption = '2'
  end
  object Label12: TLabel
    Left = 288
    Top = 176
    Width = 6
    Height = 13
    Caption = '3'
  end
  object Label13: TLabel
    Left = 280
    Top = 184
    Width = 6
    Height = 13
    Caption = '4'
  end
  object Label14: TLabel
    Left = 280
    Top = 200
    Width = 6
    Height = 13
    Caption = '5'
  end
  object Label15: TLabel
    Left = 336
    Top = 184
    Width = 6
    Height = 13
    Caption = '6'
  end
  object Label16: TLabel
    Left = 336
    Top = 200
    Width = 6
    Height = 13
    Caption = '7'
  end
  object Button1: TButton
    Left = 328
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 128
    Top = 8
    Width = 33
    Height = 21
    TabOrder = 1
    Text = '0.6'
  end
  object Edit2: TEdit
    Left = 128
    Top = 32
    Width = 33
    Height = 21
    TabOrder = 2
    Text = '0.7'
  end
  object Button2: TButton
    Left = 248
    Top = 272
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 384
    Top = 104
    Width = 41
    Height = 21
    TabOrder = 4
    Text = '3'
  end
  object Edit4: TEdit
    Left = 384
    Top = 128
    Width = 41
    Height = 21
    TabOrder = 5
    Text = '45'
  end
  object Edit6: TEdit
    Left = 384
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 6
    Text = '-0.1'
  end
  object Edit7: TEdit
    Left = 384
    Top = 56
    Width = 41
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object Edit8: TEdit
    Left = 384
    Top = 80
    Width = 41
    Height = 21
    TabOrder = 8
    Text = '-30'
  end
  object CSpinEdit1: TCSpinEdit
    Left = 384
    Top = 8
    Width = 41
    Height = 22
    TabStop = True
    MaxValue = 7
    ParentColor = False
    TabOrder = 9
    OnChange = CSpinEdit1Change
  end
  object Button3: TButton
    Left = 408
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Apply'
    TabOrder = 10
    OnClick = Button3Click
  end
end

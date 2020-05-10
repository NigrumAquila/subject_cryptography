object Form1: TForm1
  Left = 178
  Top = 707
  Width = 712
  Height = 343
  Caption = 'Form1'
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
    Left = 216
    Top = 16
    Width = 109
    Height = 13
    Caption = #1048#1089#1093#1086#1076#1085#1086#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077
  end
  object Label2: TLabel
    Left = 384
    Top = 16
    Width = 83
    Height = 13
    Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1085#1085#1086#1077
  end
  object Label3: TLabel
    Left = 544
    Top = 16
    Width = 89
    Height = 13
    Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1072#1085#1085#1086#1077
  end
  object Memo1: TMemo
    Left = 208
    Top = 40
    Width = 153
    Height = 249
    Lines.Strings = (
      'TEST RSA')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 376
    Top = 40
    Width = 145
    Height = 249
    TabOrder = 1
  end
  object EncriptBtn: TButton
    Left = 16
    Top = 248
    Width = 75
    Height = 25
    Caption = #1064#1080#1092#1088#1086#1074#1072#1085#1080#1077
    TabOrder = 2
    OnClick = EncriptBtnClick
  end
  object Memo3: TMemo
    Left = 536
    Top = 40
    Width = 137
    Height = 249
    TabOrder = 3
  end
  object DecriptBtn: TButton
    Left = 104
    Top = 248
    Width = 75
    Height = 25
    Caption = #1044#1077#1096#1080#1092#1088#1086#1074#1082#1072
    TabOrder = 4
    OnClick = DecriptBtnClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 185
    Height = 217
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1096#1080#1092#1088#1086#1074#1072#1085#1080#1103
    TabOrder = 5
    object Label5: TLabel
      Left = 16
      Top = 40
      Width = 80
      Height = 13
      Caption = #1047#1072#1082#1088#1099#1090#1099#1081' '#1082#1083#1102#1095
    end
    object Label6: TLabel
      Left = 16
      Top = 64
      Width = 21
      Height = 16
      Caption = 'd = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 96
      Width = 80
      Height = 13
      Caption = #1054#1090#1082#1088#1099#1090#1099#1081' '#1082#1083#1102#1095
    end
    object Label8: TLabel
      Left = 16
      Top = 128
      Width = 21
      Height = 16
      Caption = #1077' = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 168
      Width = 17
      Height = 16
      Caption = 'n ='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Edit1: TEdit
    Left = 56
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '183'
  end
  object Edit2: TEdit
    Left = 56
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '7'
  end
  object Edit3: TEdit
    Left = 56
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '697'
  end
end

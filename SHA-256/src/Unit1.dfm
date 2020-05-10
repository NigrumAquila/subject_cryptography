object Form1: TForm1
  Left = 251
  Top = 400
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 390
  ClientWidth = 600
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 593
    Height = 425
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'SHA256'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
  end
  object Button1: TButton
    Left = 248
    Top = 312
    Width = 105
    Height = 41
    Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1093#1077#1096
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaptionText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 256
    Width = 105
    Height = 41
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 32
    Top = 80
    Width = 513
    Height = 65
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1081#1083'.'
  end
  object Edit2: TEdit
    Left = 32
    Top = 168
    Width = 513
    Height = 65
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = #1055#1086#1083#1091#1095#1080#1090#1077' '#1093#1077#1096'.'
  end
  object OpenDialog1: TOpenDialog
    Left = 568
    Top = 56
  end
end

object Form1: TForm1
  Left = 1179
  Top = 393
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DES Algorithm'
  ClientHeight = 458
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 18
    Height = 13
    Caption = 'Key'
  end
  object Label2: TLabel
    Left = 8
    Top = 34
    Width = 43
    Height = 13
    Caption = 'Message'
  end
  object Label3: TLabel
    Left = 8
    Top = 246
    Width = 89
    Height = 13
    Caption = 'Encoded Message'
  end
  object Label4: TLabel
    Left = 213
    Top = 13
    Width = 52
    Height = 13
    Caption = 'Char count'
  end
  object KeyEdit: TEdit
    Left = 42
    Top = 8
    Width = 163
    Height = 21
    TabOrder = 0
    Text = 'password'
    OnChange = KeyEditChange
  end
  object SourceMemo: TMemo
    Left = 8
    Top = 51
    Width = 282
    Height = 77
    Lines.Strings = (
      'Sample Message'
      'In Two Lines!!')
    ScrollBars = ssBoth
    TabOrder = 1
    OnChange = SourceMemoChange
  end
  object EncodeButton: TButton
    Left = 297
    Top = 51
    Width = 80
    Height = 26
    Caption = 'Encode'
    TabOrder = 2
    OnClick = EncodeButtonClick
  end
  object ResultMemo: TMemo
    Left = 8
    Top = 263
    Width = 282
    Height = 78
    ScrollBars = ssBoth
    TabOrder = 3
    OnChange = ResultMemoChange
  end
  object DecodeButton: TButton
    Left = 297
    Top = 263
    Width = 80
    Height = 27
    Caption = 'Decode'
    TabOrder = 4
    OnClick = DecodeButtonClick
  end
  object SourceBinMemo: TMemo
    Left = 8
    Top = 136
    Width = 282
    Height = 103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object ResultBinMemo: TMemo
    Left = 8
    Top = 349
    Width = 282
    Height = 103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 6
  end
end

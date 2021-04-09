object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tarefa 2'
  ClientHeight = 206
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblThread1: TLabel
    Left = 8
    Top = 8
    Width = 149
    Height = 13
    Caption = 'Tempo Thread 1 (milisegundos)'
  end
  object lblThread2: TLabel
    Left = 8
    Top = 93
    Width = 149
    Height = 13
    Caption = 'Tempo Thread 2 (milisegundos)'
  end
  object edtThread1: TEdit
    Left = 8
    Top = 24
    Width = 278
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = '100'
  end
  object edtThread2: TEdit
    Left = 8
    Top = 109
    Width = 278
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    Text = '100'
  end
  object btnExecutar: TButton
    Left = 8
    Top = 173
    Width = 161
    Height = 25
    Caption = 'Executar'
    TabOrder = 2
    OnClick = btnExecutarClick
  end
  object pbThread1: TProgressBar
    Left = 8
    Top = 49
    Width = 278
    Height = 31
    MarqueeInterval = 1
    BackgroundColor = clHighlight
    TabOrder = 3
  end
  object pbThread2: TProgressBar
    Left = 8
    Top = 136
    Width = 278
    Height = 31
    MarqueeInterval = 1
    TabOrder = 4
  end
end

object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tarefa 1'
  ClientHeight = 332
  ClientWidth = 536
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbColunas: TLabel
    Left = 8
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lbTabelas: TLabel
    Left = 200
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lbCondicoes: TLabel
    Left = 375
    Top = 8
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lbSQLGerado: TLabel
    Left = 8
    Top = 152
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object mmoColunas: TMemo
    Left = 8
    Top = 23
    Width = 177
    Height = 94
    TabOrder = 0
  end
  object mmoTabelas: TMemo
    Left = 200
    Top = 23
    Width = 161
    Height = 94
    TabOrder = 1
  end
  object mmoCondicoes: TMemo
    Left = 375
    Top = 23
    Width = 154
    Height = 94
    TabOrder = 2
  end
  object mmoSQLGerado: TMemo
    Left = 8
    Top = 167
    Width = 521
    Height = 158
    TabOrder = 3
  end
  object btGerarSQL: TButton
    Left = 200
    Top = 126
    Width = 161
    Height = 25
    Caption = 'GerarSQL'
    TabOrder = 4
    OnClick = btGerarSQLClick
  end
end

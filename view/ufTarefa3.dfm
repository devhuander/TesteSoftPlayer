object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tarefa 3'
  ClientHeight = 406
  ClientWidth = 495
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblValoresProjeto: TLabel
    Left = 8
    Top = 3
    Width = 96
    Height = 13
    Caption = 'Valores por projeto:'
  end
  object lblTotal: TLabel
    Left = 344
    Top = 326
    Width = 44
    Height = 13
    Caption = 'Total R$:'
  end
  object Label1: TLabel
    Left = 342
    Top = 364
    Width = 85
    Height = 13
    Caption = 'Total divis'#245'es R$:'
  end
  object grdProjeto: TDBGrid
    Left = 8
    Top = 19
    Width = 481
    Height = 302
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'IdProjeto'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'NomeProjeto'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Valor'
        Visible = True
      end>
  end
  object edtTotal: TMaskEdit
    Left = 344
    Top = 340
    Width = 145
    Height = 21
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 1
    Text = ''
  end
  object edtDivisoes: TMaskEdit
    Left = 342
    Top = 378
    Width = 145
    Height = 21
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 2
    Text = ''
  end
  object btnTotal: TButton
    Left = 215
    Top = 340
    Width = 123
    Height = 21
    Caption = 'Obter Total'
    TabOrder = 3
    OnClick = btnTotalClick
  end
  object btnDivisoes: TButton
    Left = 213
    Top = 378
    Width = 123
    Height = 21
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 4
    OnClick = btnDivisoesClick
  end
end

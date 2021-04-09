object ViewPrincipal: TViewPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'ProvaDelphiApp - Principal'
  ClientHeight = 564
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmnPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmnPrincipal: TMainMenu
    Left = 64
    Top = 8
    object mniTarefas: TMenuItem
      Caption = 'Tarefas'
      object mniTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = mniTarefa1Click
      end
      object mniTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = mniTarefa2Click
      end
      object mniTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = mniTarefa3Click
      end
    end
  end
end

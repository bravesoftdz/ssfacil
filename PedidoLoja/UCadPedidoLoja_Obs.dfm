object frmCadPedidoLoja_Obs: TfrmCadPedidoLoja_Obs
  Left = 350
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadPedidoLoja_Obs'
  ClientHeight = 172
  ClientWidth = 607
  Color = 13828006
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnFechar: TNxButton
    Left = 497
    Top = 141
    Width = 101
    Height = 28
    Caption = '(F10) Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 0
    Transparent = True
    OnClick = btnFecharClick
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 0
    Width = 607
    Height = 137
    Align = alTop
    DataField = 'OBS'
    DataSource = DMCadPedido.dsPedido
    MaxLength = 378
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
end

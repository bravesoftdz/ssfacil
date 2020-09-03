object frmConsFatConsumo: TfrmConsFatConsumo
  Left = 225
  Top = 156
  Width = 928
  Height = 478
  Caption = 'frmConsFatConsumo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TAdvPanel
    Left = 0
    Top = 37
    Width = 920
    Height = 410
    Align = alClient
    BevelWidth = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '1.6.0.3'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 0
    object SMDBGrid1: TSMDBGrid
      Left = 10
      Top = 10
      Width = 900
      Height = 390
      Align = alClient
      Ctl3D = False
      DataSource = DMConsFat.dsmConsumo
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Flat = True
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 6
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_Material'
          Title.Alignment = taCenter
          Title.Caption = 'ID Material'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Material'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Material'
          Title.Color = clActiveCaption
          Width = 449
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unidade'
          Title.Alignment = taCenter
          Title.Color = clActiveCaption
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Color = clActiveCaption
          Width = 129
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Semi'
          Title.Alignment = taCenter
          Title.Color = clActiveCaption
          Width = 55
          Visible = True
        end>
    end
  end
  object NxPanel1: TNxPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 37
    Align = alTop
    BorderPen.Style = psClear
    UseDockManager = False
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 17
      Top = 16
      Width = 109
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Faturamento Inicial:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 256
      Top = 16
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
      Transparent = True
    end
    object btnConsultar: TNxButton
      Left = 386
      Top = 7
      Width = 114
      Caption = 'Efetuar Pesquisa'
      TabOrder = 2
      OnClick = btnConsultarClick
    end
    object btnImprimir: TNxButton
      Left = 500
      Top = 7
      Width = 114
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = btnImprimirClick
    end
    object DateEdit1: TDateEdit
      Left = 127
      Top = 8
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 283
      Top = 8
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
  end
end
object fRelFat_ReciboNF: TfRelFat_ReciboNF
  Left = 80
  Top = 167
  Width = 1217
  Height = 532
  Caption = 'fRelFat_ReciboNF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 32
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DMConsFaturamento.dsReciboNF
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 742
      Height = 54
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 240
        Top = 5
        Width = 250
        Height = 16
        Caption = 'Relat'#243'rio de Faturamento - Recibos NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 649
        Top = 2
        Width = 22
        Height = 12
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 675
        Top = 3
        Width = 32
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 629
        Top = 18
        Width = 42
        Height = 12
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 675
        Top = 19
        Width = 64
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 24
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object rllbOpcao: TRLLabel
        Left = 35
        Top = 24
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 1
        Top = 38
        Width = 16
        Height = 14
        Caption = 'Fil.'
      end
      object RLLabel7: TRLLabel
        Left = 673
        Top = 38
        Width = 66
        Height = 14
        Caption = 'Vlr. Faturado'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 52
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel9: TRLLabel
        Left = 38
        Top = 38
        Width = 40
        Height = 14
        Caption = 'N'#186' Nota'
      end
      object RLLabel10: TRLLabel
        Left = 81
        Top = 38
        Width = 28
        Height = 14
        Caption = 'S'#233'rie'
      end
      object RLLabel11: TRLLabel
        Left = 116
        Top = 38
        Width = 56
        Height = 14
        Caption = 'Dt.Emiss'#227'o'
      end
      object RLLabel12: TRLLabel
        Left = 178
        Top = 38
        Width = 94
        Height = 14
        Caption = 'Cliente/Fornecedor'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 80
      Width = 742
      Height = 146
      DataSource = DMConsFaturamento.dsReciboNF
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBText1: TRLDBText
          Left = 19
          Top = 2
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = DMConsFaturamento.dsReciboNF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 1
          Top = 2
          Width = 18
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'FILIAL'
          DataSource = DMConsFaturamento.dsReciboNF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 647
          Top = 2
          Width = 91
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_FATURAMENTO'
          DataSource = DMConsFaturamento.dsReciboNF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 15
          Width = 742
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText9: TRLDBText
          Left = 83
          Top = 2
          Width = 25
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SERIE'
          DataSource = DMConsFaturamento.dsReciboNF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 111
          Top = 2
          Width = 64
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTEMISSAO'
          DataSource = DMConsFaturamento.dsReciboNF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 176
          Top = 2
          Width = 393
          Height = 12
          AutoSize = False
          DataField = 'NOME_CLIENTE'
          DataSource = DMConsFaturamento.dsReciboNF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 17
        Width = 742
        Height = 16
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLLabel5: TRLLabel
          Left = 356
          Top = 0
          Width = 48
          Height = 11
          Caption = 'Total ===>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 553
          Top = 0
          Width = 185
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_FATURAMENTO'
          DataSource = DMConsFaturamento.dsReciboNF
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
      end
    end
  end
end

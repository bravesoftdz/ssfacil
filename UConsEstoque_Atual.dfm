object frmConsEstoque_Atual: TfrmConsEstoque_Atual
  Left = 188
  Top = 124
  BorderStyle = bsSingle
  Caption = 'Consulta Estoque'
  ClientHeight = 518
  ClientWidth = 926
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 131
    Width = 926
    Height = 387
    Align = alClient
    Ctl3D = False
    DataSource = DMConsEstoque.dsEstoque_Atual
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = SMDBGrid1KeyDown
    OnTitleClick = SMDBGrid1TitleClick
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COMBINACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cor'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_RESERVA'
        Title.Alignment = taCenter
        Title.Caption = 'Q. Reserva'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCALIZACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Localiza'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_ESTOQUE_MIN'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. M'#237'nimo'
        Width = 76
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 100
    Width = 926
    Height = 31
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object Label7: TLabel
      Left = 16
      Top = 7
      Width = 101
      Height = 19
      Caption = 'F6 - Hist'#243'rico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 926
    Height = 100
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object Label1: TLabel
      Left = 240
      Top = 30
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label2: TLabel
      Left = 272
      Top = 9
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Label5: TLabel
      Left = 536
      Top = 30
      Width = 54
      Height = 13
      Caption = 'ID Produto:'
    end
    object edtRef: TEdit
      Left = 296
      Top = 22
      Width = 182
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyDown = edtRefKeyDown
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 296
      Top = 1
      Width = 361
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMConsEstoque.dsFilial
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 96
      Height = 98
      Align = alLeft
      Caption = ' Op'#231#227'o '
      ItemIndex = 3
      Items.Strings = (
        'Com Saldo'
        'Negativo'
        'M'#237'nimo'
        'Ambos')
      TabOrder = 4
    end
    object RadioGroup2: TRadioGroup
      Left = 97
      Top = 1
      Width = 120
      Height = 98
      Align = alLeft
      Caption = ' Tipo '
      ItemIndex = 0
      Items.Strings = (
        'Produto'
        'Material'
        'Material Consumo'
        'Semi Acabado')
      TabOrder = 5
    end
    object btnConsultar: TNxButton
      Left = 295
      Top = 45
      Width = 177
      Height = 30
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
        72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
        0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
        A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
        109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
        EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
        A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
        B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
        97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
        5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
        98634797653998765499876899927799977F99967F99907799826295704B9B64
        3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
        99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
        6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
        34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
        DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
        AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
        90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
        F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
        E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
        B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
        574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
        96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
        C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
        D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 3
      Transparent = True
      OnClick = btnConsultarClick
    end
    object ceIDProduto: TCurrencyEdit
      Left = 592
      Top = 22
      Width = 65
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 2
      OnKeyDown = ceIDProdutoKeyDown
    end
  end
end

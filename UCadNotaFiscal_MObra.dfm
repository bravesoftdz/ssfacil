object frmCadNotaFiscal_MObra: TfrmCadNotaFiscal_MObra
  Left = 201
  Top = 30
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadNotaFiscal_MObra'
  ClientHeight = 621
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gbxPedidos: TRzGroupBox
    Left = 0
    Top = 0
    Width = 979
    Height = 283
    Align = alClient
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Pedidos Selecionados '
    Ctl3D = True
    FlatColor = clNavy
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsGradient
    object SMDBGrid1: TSMDBGrid
      Left = 42
      Top = 18
      Width = 932
      Height = 260
      Align = alClient
      Ctl3D = False
      DataSource = DMCadNotaFiscal.dsmMObra_Ped
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
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
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 9
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'CODCFOP'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Num_Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Ped. Interno'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pedido_Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Pedido Cliente (OC)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Item_Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Item Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'ID Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nome Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 339
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 95
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 5
      Top = 18
      Width = 37
      Height = 260
      Align = alLeft
      Color = clNavy
      TabOrder = 1
      object btnSelecionar_Ped: TNxButton
        Left = 2
        Top = 3
        Width = 31
        Height = 30
        Hint = 'Adicionar pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F8E9DEE096898D695A6040383D4434
          3C6A5B6196898EEADEE0FDF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E2E38D8383121512001C15005750
          19948D26B5B01DB5B20F968F005751001C131315128E8285E7E2E2FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB4B63837350040321D
          AC963CFFEF3FFFFF46FFFF4DFFFF47FFFF45FFFF43FFFF3EFFF01BAF97003E33
          383636BFB4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADA3A51919
          19117C6529F3CC36FFDE44F3DA3EEDDA31F1E031F3E639F0E536F1DF3AEFDD3E
          F2DC37FEDF2FF2CC0E7C651C1B1AB0A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BDB4B9191A181D8C6E30FCCB2AE5BA2DE4BE2AE8C729EACF22EED81FEFDB23ED
          DA22EFD926EAD22BE6C82FE1C028E5BB28FFCA158F6C1B1917BFB4B7FFFFFFFF
          FFFFFFFFFFE6E2E43936371674502CF6B617D59F25D8AB1BDEB50CE2B759E5CF
          AAF3EEABF1EBABF1EBA9F3ED59E5CE0EE0B81ADEB721DAAD16D7A125F7B31373
          50393635E6E3E4FFFFFFFFFFFF8D838801371B2FD99413D59218D09B19D6A413
          DAAA00DBAB74E0CBFFF5F8FFF4F6FFF4F6FFF4F872E2C900DCAC10D9AA17D6A4
          17D19B18D4932CD99700361D8E8489FFFFFFFCF9FC13171223915428DA8B15CA
          8918D09218D49713D79D00D7A067DDC3FBF5F6F5F4F4F5F4F4FCF4F765DEC500
          D8A318D6A01CD29A16D0951ACA8A25DA8D189358131513FCF8FBE9E2E7000C00
          39D28020C77616C5810EC7810ACA8507CE8A00CB8D60D5B7FBF5F7F6F4F4F6F4
          F4FBF5F760D6B900CD8F05CF8D0AC9850EC88118C67E24C67635D480000B00EA
          E1E5979094003A0F2FDB7F17C06C2DC57F69CEA675D3B16DD4B064D3B2A4DCCD
          F8F4F5F4F4F4F4F4F4F8F3F5A3DBCB60D2B169D5B172D3B063CEA22AC67C1FBD
          6C36DB7B0039109592946B626711692A32D06F1AB86248C783DCECE4FFF8FDFC
          F4F8FCF4F7F8F3F5F5F4F4F3F4F4F3F4F4F5F4F4F8F3F5FBF5F6FBF4F8FFF8FD
          DAECE34BC6841EB66730CE6F11672A656269403D3E1D81392BC96120B75D47C0
          80D6E9E1FFF7FBF5F4F4F5F4F4F5F4F4F4F4F3F3F4F4F3F4F4F4F4F3F5F4F4F5
          F4F4F5F4F4FFF7FCDAE9E04CC27F23B65E36C76424833A463F3E464142227B30
          45C25F31B75653BF79DBEAE0FFF7FCF5F4F5F5F5F5F5F4F4F3F4F4F3F4F3F3F4
          F3F4F4F4F5F4F5F5F5F5F5F4F5FFF7FCDBE8E252C17E2BB85839C35B19812B44
          3D40696364105E1841C55533B9545EC27EDEEAE2FEF9FDFAF5FAFAF6F9F6F5F7
          F5F4F5F3F4F3F3F4F3F5F4F5F6F5F7FAF6F9FAF5F9FEF9FEDCE9E15DC07C39B7
          563FC658106419686269989095002D004DC8534EB95E55B96972B87C76B78474
          B9866BB27EA3C7ADF8F6F7F4F4F4F4F4F4F7F6F7A3C6AB6BB17C72B88376B783
          73B78053B8684FBA5D49C8530031009A949AE9E4E90000004BB64861BE635ABA
          664ABB5A45B95E45BC6138B95984C996FAF6F9F5F4F5F5F4F5FAF6F986C7963C
          B65949BD6044BB5C4CB95D59B9635FBE5E49B649000100E9E3E9FCFAFC111311
          20701963C55A6DC17368BE6E69C0746AC2755FBF6C98CEA1FAF5F8F5F3F5F5F3
          F5F9F5F995CEA05DC06D6CC27766C27069BF6D73C17162C659226F1B121510FC
          F9FCFFFFFF8E868F00220051AD397DCD717FC2787BC17477C5776BC073A8CFAB
          FFFBFFFEFAFFFEFAFFFFFBFFA5D2A96BBF7076C47874C3747BC4797CCB734EAE
          3B0022008E888FFFFFFFFFFFFFE6E3E735353518490671CA5591D2878DC88485
          C88083C77BA6CBA0D0DBD0CFDCCECEDACDD2DAD0A2C8A183C57D88C87C8ECA85
          8FD38571C9561B4B08333634E4E3E6FFFFFFFFFFFFFFFFFFBDB7BE181616265C
          137FD060A4DE98A6D49D9FCD8C99CC8D8FC58C92C98796C68793C78C97C98C9D
          CE90A4D39CA7DE9786CE602E5C13161617BBB8BEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAEA8AF17161618460369B246ADE38EC2E6AEB9DEB1B0DCADB5DCA6BDD7
          ACB8DBAABBE0ADBBE6B2A6E2926CB0461E4502151618ACA7B0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB8BE353532001A002E65147FBE53A8E282
          B9EA9EC0E8ACC5ECA8BCEA9EACE1847CBC57276712001900333532BCB8BFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5E78E87910D
          130C000000001D00184C002C6B15286B1117480200190000000010160C8B8692
          E5E5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFAFDE8E4EC939399636A63403E4048404262666392919AEA
          E4EDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        GlyphSpacing = 5
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Transparent = True
        OnClick = btnSelecionar_PedClick
      end
      object btnExcluir_Ped: TNxButton
        Left = 3
        Top = 49
        Width = 31
        Height = 30
        Hint = 'Excluir pedido da sele'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
          0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
          010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
          18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
          040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
          440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
          00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
          76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
          C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
          FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
          0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
          80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
          00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
          0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
          C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
          00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
          0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
          B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
          8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
          9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
          C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
          DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
          DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
          FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
          002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
          FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
          001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
          0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
          CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
          00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
          0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
          EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
          00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
          0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
          F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
          DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
          0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
          C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
          24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
          0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
          C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
          26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
          F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
          DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
          FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
          0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
          F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
          00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
          C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
          FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
          A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
        GlyphSpacing = 0
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Transparent = True
        OnClick = btnExcluir_PedClick
      end
    end
  end
  object gbxNotas: TRzGroupBox
    Left = 0
    Top = 303
    Width = 979
    Height = 277
    Align = alBottom
    BorderColor = 4259584
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Notas Selecionadas '
    Ctl3D = True
    FlatColor = clMaroon
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    object SMDBGrid2: TSMDBGrid
      Left = 42
      Top = 18
      Width = 932
      Height = 254
      Align = alClient
      Ctl3D = False
      DataSource = DMCadNotaFiscal.dsmMObra_Nota
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
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
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODCFOP'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP Nota'
          Width = 51
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Num_Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 69
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item_Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Item Nota'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 48
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_Material'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'ID Material'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Material'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nome Material'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 430
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCFOP_Ped'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'CFOP Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 55
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 5
      Top = 18
      Width = 37
      Height = 254
      Align = alLeft
      Color = clNavy
      TabOrder = 1
      object btnSelecionar_Nota: TNxButton
        Left = 2
        Top = 3
        Width = 31
        Height = 30
        Hint = 'Adicionar nota para devolu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F8E9DEE096898D695A6040383D4434
          3C6A5B6196898EEADEE0FDF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E2E38D8383121512001C15005750
          19948D26B5B01DB5B20F968F005751001C131315128E8285E7E2E2FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB4B63837350040321D
          AC963CFFEF3FFFFF46FFFF4DFFFF47FFFF45FFFF43FFFF3EFFF01BAF97003E33
          383636BFB4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADA3A51919
          19117C6529F3CC36FFDE44F3DA3EEDDA31F1E031F3E639F0E536F1DF3AEFDD3E
          F2DC37FEDF2FF2CC0E7C651C1B1AB0A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BDB4B9191A181D8C6E30FCCB2AE5BA2DE4BE2AE8C729EACF22EED81FEFDB23ED
          DA22EFD926EAD22BE6C82FE1C028E5BB28FFCA158F6C1B1917BFB4B7FFFFFFFF
          FFFFFFFFFFE6E2E43936371674502CF6B617D59F25D8AB1BDEB50CE2B759E5CF
          AAF3EEABF1EBABF1EBA9F3ED59E5CE0EE0B81ADEB721DAAD16D7A125F7B31373
          50393635E6E3E4FFFFFFFFFFFF8D838801371B2FD99413D59218D09B19D6A413
          DAAA00DBAB74E0CBFFF5F8FFF4F6FFF4F6FFF4F872E2C900DCAC10D9AA17D6A4
          17D19B18D4932CD99700361D8E8489FFFFFFFCF9FC13171223915428DA8B15CA
          8918D09218D49713D79D00D7A067DDC3FBF5F6F5F4F4F5F4F4FCF4F765DEC500
          D8A318D6A01CD29A16D0951ACA8A25DA8D189358131513FCF8FBE9E2E7000C00
          39D28020C77616C5810EC7810ACA8507CE8A00CB8D60D5B7FBF5F7F6F4F4F6F4
          F4FBF5F760D6B900CD8F05CF8D0AC9850EC88118C67E24C67635D480000B00EA
          E1E5979094003A0F2FDB7F17C06C2DC57F69CEA675D3B16DD4B064D3B2A4DCCD
          F8F4F5F4F4F4F4F4F4F8F3F5A3DBCB60D2B169D5B172D3B063CEA22AC67C1FBD
          6C36DB7B0039109592946B626711692A32D06F1AB86248C783DCECE4FFF8FDFC
          F4F8FCF4F7F8F3F5F5F4F4F3F4F4F3F4F4F5F4F4F8F3F5FBF5F6FBF4F8FFF8FD
          DAECE34BC6841EB66730CE6F11672A656269403D3E1D81392BC96120B75D47C0
          80D6E9E1FFF7FBF5F4F4F5F4F4F5F4F4F4F4F3F3F4F4F3F4F4F4F4F3F5F4F4F5
          F4F4F5F4F4FFF7FCDAE9E04CC27F23B65E36C76424833A463F3E464142227B30
          45C25F31B75653BF79DBEAE0FFF7FCF5F4F5F5F5F5F5F4F4F3F4F4F3F4F3F3F4
          F3F4F4F4F5F4F5F5F5F5F5F4F5FFF7FCDBE8E252C17E2BB85839C35B19812B44
          3D40696364105E1841C55533B9545EC27EDEEAE2FEF9FDFAF5FAFAF6F9F6F5F7
          F5F4F5F3F4F3F3F4F3F5F4F5F6F5F7FAF6F9FAF5F9FEF9FEDCE9E15DC07C39B7
          563FC658106419686269989095002D004DC8534EB95E55B96972B87C76B78474
          B9866BB27EA3C7ADF8F6F7F4F4F4F4F4F4F7F6F7A3C6AB6BB17C72B88376B783
          73B78053B8684FBA5D49C8530031009A949AE9E4E90000004BB64861BE635ABA
          664ABB5A45B95E45BC6138B95984C996FAF6F9F5F4F5F5F4F5FAF6F986C7963C
          B65949BD6044BB5C4CB95D59B9635FBE5E49B649000100E9E3E9FCFAFC111311
          20701963C55A6DC17368BE6E69C0746AC2755FBF6C98CEA1FAF5F8F5F3F5F5F3
          F5F9F5F995CEA05DC06D6CC27766C27069BF6D73C17162C659226F1B121510FC
          F9FCFFFFFF8E868F00220051AD397DCD717FC2787BC17477C5776BC073A8CFAB
          FFFBFFFEFAFFFEFAFFFFFBFFA5D2A96BBF7076C47874C3747BC4797CCB734EAE
          3B0022008E888FFFFFFFFFFFFFE6E3E735353518490671CA5591D2878DC88485
          C88083C77BA6CBA0D0DBD0CFDCCECEDACDD2DAD0A2C8A183C57D88C87C8ECA85
          8FD38571C9561B4B08333634E4E3E6FFFFFFFFFFFFFFFFFFBDB7BE181616265C
          137FD060A4DE98A6D49D9FCD8C99CC8D8FC58C92C98796C68793C78C97C98C9D
          CE90A4D39CA7DE9786CE602E5C13161617BBB8BEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAEA8AF17161618460369B246ADE38EC2E6AEB9DEB1B0DCADB5DCA6BDD7
          ACB8DBAABBE0ADBBE6B2A6E2926CB0461E4502151618ACA7B0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB8BE353532001A002E65147FBE53A8E282
          B9EA9EC0E8ACC5ECA8BCEA9EACE1847CBC57276712001900333532BCB8BFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5E78E87910D
          130C000000001D00184C002C6B15286B1117480200190000000010160C8B8692
          E5E5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFAFDE8E4EC939399636A63403E4048404262666392919AEA
          E4EDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        GlyphSpacing = 5
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Transparent = True
        OnClick = btnSelecionar_NotaClick
      end
      object btnExcluir_Nota: TNxButton
        Left = 3
        Top = 49
        Width = 31
        Height = 30
        Hint = 'Excluir a nota da sele'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
          0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
          010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
          18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
          040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
          440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
          00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
          76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
          C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
          FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
          0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
          80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
          00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
          0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
          C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
          00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
          0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
          B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
          8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
          9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
          C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
          FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
          DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
          DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
          FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
          002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
          FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
          001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
          0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
          CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
          00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
          0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
          EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
          00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
          0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
          F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
          DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
          0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
          C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
          24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
          0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
          C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
          26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
          F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
          DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
          FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
          0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
          F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
          00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
          C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
          FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
          A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
        GlyphSpacing = 0
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Transparent = True
        OnClick = btnExcluir_NotaClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 580
    Width = 979
    Height = 41
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 8
      Top = 7
      Width = 169
      Height = 30
      Caption = ' Copiar para a Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
        224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
        3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
        5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
        4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
        402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
        4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
        0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
        0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
        04550500550505560707540B065309065008044D06034D050042002F65312860
        2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
        54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
        044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
        0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
        550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
        2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
        C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
        00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
        FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
        002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
        FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
        07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
        DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
        C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
        5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
        FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
        000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
        056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
        022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
        9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
        B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
        8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
        FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
        B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
        2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
        0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
        5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
        299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
        C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
        36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
        4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
        984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
        FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
        7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
        B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
        CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 283
    Width = 979
    Height = 20
    Align = alBottom
    Color = clSilver
    TabOrder = 3
    object Label1: TLabel
      Left = 40
      Top = 3
      Width = 182
      Height = 13
      Caption = 'Total Materia Prima Necess'#225'ria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 227
      Top = 3
      Width = 26
      Height = 13
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 408
      Top = 4
      Width = 108
      Height = 13
      Caption = 'Total Selecionada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 523
      Top = 4
      Width = 26
      Height = 13
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 755
      Top = 3
      Width = 60
      Height = 13
      Caption = 'Diferen'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 819
      Top = 3
      Width = 26
      Height = 13
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
end

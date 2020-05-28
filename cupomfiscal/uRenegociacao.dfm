object fRenegociacao: TfRenegociacao
  Left = 280
  Top = 126
  Width = 900
  Height = 452
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fRenegociacao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 884
    Height = 413
    ActivePage = TS_Consulta
    ActivePageDefault = TS_Consulta
    Align = alClient
    BackgroundColor = 16752448
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TS_Consulta: TRzTabSheet
      Caption = 'Tela de Consulta'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 67
        Width = 880
        Height = 306
        Align = alClient
        Ctl3D = True
        DataSource = dmPagamento.dsRenegociacao
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid1DblClick
        Flat = False
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
        ColCount = 7
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PESSOA'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 880
        Height = 32
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object btnExcluir: TNxButton
          Left = 154
          Top = 1
          Width = 153
          Height = 30
          Align = alLeft
          Caption = 'Excluir'
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
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 0
          Transparent = True
          OnClick = btnExcluirClick
        end
        object btnPesquisar: TNxButton
          Left = 1
          Top = 1
          Width = 153
          Height = 30
          Align = alLeft
          Caption = 'Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE5E7EAC4C7CB706D6748433723160A1D11031E16
            114B413D746C6AC4C8CDE8EAECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72707837251D3C2100734408975E0E
            A96D17A86D18A367178A530A69380136190034251E79797FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFEDEDEE35383D532D01A36D14A9
            7317A56B189C5F129459118F571192580C905A12935C16975C138551133E1A00
            3A3A3EF0F1F2FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFE7E6EA241E1F7450
            08BB7F1CA56A16975F0E8F570E8F56118447017E40008F560991561192541395
            580C945B0D9E5F175E2F02292120E9EAECFFFFFFFFFFFF000000FFFFFFFFFFFF
            2D2F347F560FBB821FA36B17965915965B119B5F0F804600A78C64D3C1A47F4D
            13975D0F985C13985D139A5D1292590E975A14633608323236FFFFFFFFFFFF00
            0000FFFFFF5E5A65604307BE881FAB7113985F0F9D6111996315915B07B0813F
            FFFFFFFFFFFFF4F1E4824A009565129465129D64109D6514945B0C9C5C154823
            00656469FFFFFF000000DADDE036230DB68422B27A17A369119D67129F6814A0
            68149A620EA17125FFFFFFFFFFFFDAC8B0955300A169139E6A11A36717A06817
            9F681392560F8C571229160EDEDFE2000000A0A0A45D3C00C38919B07715A36B
            17A46F14A66F13A16F16A77014A1640D8D621A7C613D915F0CAA700DA96E15A9
            6D14A46C18A46F10A570169E61129A5E0D3F1D00A0A2A6000000665E589A6E14
            B88520AB7514A57119AA7315A87313A97414AB7313966009DCCFB2FDFEF2A585
            4BA76B07A9751AA66F1BA67218AB7414AE7319A77214935A13754304635A5600
            00003A3426C28E20B5851FAD7614A97818AE7616AE7915B07816A97212A67726
            FFFFFFFFFFFFE3DDC87C4600996506B27A14AD7814AC7817B07617AD7A17945C
            11985D10332923000000221A07D39B24C38619AD7D18AF7D19B67C1AB27B1DAE
            7C1CB47811B17E23FFFFFFFDFFFFFFFFFFFFFFFFC0AE89A46A08B57C19B27D1A
            B37D17B17E1D9A5F0DA667171B1203000000261D0BD59E27BF881CB1801BB382
            18BA811DB7801DB98218BA7E0EAC7B0DDCCCAAF1F1E2FFFFFFFCFFFFFFFFFFBD
            A25EAC750FBA821BB98318BB811E955E12A46B18211405000000241A07D89D28
            BE8B1DB9851CB98917BB841CBA881CA3730FAF8640A57213B37B0DA9740CD4C4
            95FFFFFFFFFFFFEFEBCBA46C08BA861EBF871DB7811C99600FAA6B181A100400
            0000342921BF891CC5931CC1891FC08D1BC18D1BAE7708E5DBB2FFFFFFEFEEE3
            A87C1EAA7005C5AF80FFFFFFFFFFFFF2EFD3A47802BE8C1DC88C23AA7715A266
            0F995E11362C260000005D55578E6311CA991FC38C20C08D1FC4911BAE760BF6
            F3C9FFFFFFFFFFFFEBE9DCDBD2BBFDFFF7FCFCFFFFFFFFE0D29AAE7C07C7901D
            C48D22A16C0EA76C1376430A5E5A57000000A09FA63C2200D29B2AC3911DBD8E
            1EC8931FC08E17C49B42FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFF8FAE5B4
            881FCD9218C89924A97515A46A14A96F19371800A2A3A6000000DBE1E31C0D03
            AC7215CE9F23BD911DC68E1ECA9621C2900FC3A340DCD3ACF2EEE1FBF8E9EFEA
            D9D8C797BE9528CC9518CB9924B47C1CA26A13AD731A975C0E240F09DEE0E300
            0000FFFFFF60626A441F00C98D1FCC9B1EC28F20C18F1BC99820CB971BC6951A
            C79A28C99B2FCA9924C89515D09F21C19021AC7917A57118AE771DB07116491B
            00625F69FFFFFF000000FFFEFFFFFFFF303036633000BC861AC99721C68F22C1
            8B1DBF8D1AC2901AC7941DC9941EC7931BC08B1EB27B17AC7815AD7C13AE7E16
            A76F0E5B30002C3036FFFFFFFEFFFF000000FBFEF9FFFFFFE8E9EC1E1F206331
            00BF8312C5911DC79322BF911DBC8B1AB9881AB8841BB48519B27D18B57E1CBB
            811DB57B18AE72145E3400221E1DE8E7EBFFFFFFFCFDFD000000FBFDFDFEFFFC
            FFFFFFEDEFF239373D4624009C6900B88110C8901CC9911BC48C1ABE891BC387
            1CBA861BB78814B47B089A620844210035383DF0EFF3FFFFFFFEFFFBFFFFFE00
            0000FEFBFFFFFDFCFFFFFCFFFFFFFFFFFF74767E3626213D2500845200B57900
            D59B09DBA612D79D0FB47D0082540045260037271F72747CFFFFFFFFFFFFF7FD
            FEFEFBFEFCFFFD000000FCFEF8FEFEFDFBFDFFFAFEFBFFFFFCFFFFFFE6E9EDC0
            C3C7726F6C4C473F291D0D271D0325200D4F473B766E6BBEC1C8E8E9EDFFFFFF
            FFFEFFFAFEF9FEFCFBFFFDFEFDFEFE000000}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 1
          Transparent = True
          OnClick = btnPesquisarClick
        end
        object btnImprimir: TNxButton
          Left = 307
          Top = 1
          Width = 145
          Height = 30
          Align = alLeft
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FCFFFFFFFEFE
            FCFFFCF9FEFEF9FCFDFFFCFFF3FAFBF3FAFAF3FAFAF2FAFAF3FAFAF4F9FAF4F9
            FAF2FAFAF2FAFAF4F9FAF5FAFAFDFBFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FEFFFEFEFEFEFBFFFDFCFDFEFFFFFFD5EAF0489FC55DB4D15EB4D157B3D2
            5BB3D05BB4D458B2D359B3D25AB3D45DB1D352A8C3AFDDEAFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FEFFFDFEFDFEFCFFFCFFFDFEFFFFFFB5E2EA4AB8D0A1
            FAFC9EF1F597F1F69DF1F59AF1F699F1F69EF1F598F1F4A0F6FB58C7D98DCFE8
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FAFFFEFEFDFEFCFFFDFFFEFEFFFF
            FEB8E1EC53C0D899E8E97EBCC083BECA8CBEC189BCC582BCC785BEC282BAB899
            E0E667D1E08CCEE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFEFFFDFE
            FFFFFFFFFFFFFFFFFFC1E6F147BFDA84E1E860ADB05FAFB862B1B45AB1B559B1
            B659B1B54EA8AE70D9E25ED0E28FCFE9FFFFFFFFFFFFFFFFFFFFFFFFFDFFFF00
            0000FAFEFEFFFFFFDCDAD9D5D2D2E0D9D6AABFCD41C3DD8AF5FD8BDEE591E4EA
            92DFEA8FE0E78CE1E697DFEA8FDDEA8AF3FB4FD4E48FC6D5E1D8D5D5D3D2DBD9
            D9FDFDFDFDFFFF000000FFFFFFB5B1B371635E806E6B503A2F0E3B4C69E7FF6E
            E2F660C9D361CCD95FC7D65FC8D661C8D761CBD55DC7CD6BDFF069EEFF114764
            45322C776C666E6460AEAAA9FFFFFF000000FDFDFC827A78CFBFB9E9DDD66F5B
            52324448396F7A4373754974744574734674754B73764B727545757544747549
            6F75426D793646505F5049DDCDCAD1C1BE827B78FCFCFB000000FCFCFB87817D
            CCC0BADEDCD4D2C2BCAD9A9CAB9697AF9895AF9794AC9794A79994AC9693AD99
            8FAD9893A79897A89A92AC9B90AE9E98C1B7B2E8DBD9CFC0BD897F7CFBFBFA00
            0000FCFCFB8B807ED3C7C3E6E6E2EAE4E4F2ECECF6EEEBF3EEEEF7EEEEF7EEEF
            F0EFEEF5EFF0F4EFEEF7EEF0F5EDF2EFF1EFF1EFEEF2ECEEEBE6EAEAE4E3D3C8
            C4887F7DFCFBFB000000FCFCFC89817FDBCECEF7F2F2F7F0F4EBEAE7E4E3DEDF
            E3E1E4E1E2E3E0DFDDE1DFE2E0DFE1E0E0E1E0DEE5E0DDE4DDDCE0DDDDECE8E7
            F2F2F3F5F3F1DAD2D188827DFBFCFB000000FCFDFC8B8282DFD3D4FFFDFFE8EC
            EB7D797665605E68626165605F635E5D635D5B625C5C605A595F59595C58575B
            5655585453676362E9E8EAFFFDFDE1D4D189837EFAFCFC000000FCFDFD8B8482
            DED6D5FFFFFFC2C4C3514B4A322F2D3735353835353735353734343735353633
            333836353835343836353431304C4746AFB0B0FFFFFFE4D4DB8C8485FCFCFC00
            0000FCFCFD8F8986DCD5D1FFFFFFC6C5C4554F4D2F2E2D383838383838373838
            37383838373837393737383737393738373733302F4C4747B7B1B2FFFFFFDED6
            D0898884FCFBFD000000FBFCFC928C89D4CAC5DAD4D0BDBAB8605C5A2C2D2D25
            28282B2E2E313434333737343737363838363737353838363838343131514C4C
            ADA1AE7F70C2CEC2CA938B8BFAFBFC000000FFFFFF999490B7A9A2BEAFADAAA0
            A084807FA6A6A58182825C5C5C46474739383835363635333332323231333332
            32322F2D2D534C4FA1A19760AB80BAB8AA9A9290FCFFFF000000FFFFFFC6C1BE
            94817DC4AFACA39A98868784C9CACAB9BABBBABBBCB4B5B5A9AAAB9D9E9F9093
            938A87888482827A7B7C7F7F7E6D6669918D8195A67B847F79C1BEBFFFFFFF00
            0000FFFFFEFEFFFFB2A9A99F9494989895796C6EA69694A49593A1918EA0908C
            9B8D899A8C899889879987849686809882808C7C7C6359588E8B8BA4999EAEA9
            ACFFFFFFFFFFFF000000FEFCFEFCFEFFFFFFFFFFFFFFFFFFFF98AFC059919F6A
            9FA5689CA2689CA165989D679BA065989D5E999A56999D5E959F498295A2ABB4
            FFFFFFFFFFFFFFFFFFFEFFFFFFFFFF000000FDFDFDFCFDFEFEFEFCFAFDFDFFFF
            FF90D3EC50CEE37FF9FF7DF4FF7EF5FF7DF4FF7DF5FF7CF5FF7FF8FC7FF6FF89
            FAFF3DBBD5C8EAF1FFFFFFFDFDFDFEFFFFFDFEFEFFFFFF000000FBFEFEFAFDFE
            FDFFFCFCFDFEFFFFFF88C9E457CCDF8DFAFE89F4FC89F5FB89F6FB8AF6FC86F4
            FC8DF5FC8DF5FC91FBFF39B8D0B5E1EBFFFFFFFCFFFFFCFFFFFFFEFEFFFFFF00
            0000FDFEFFFFFDFFFEFFFDFFFDFEFFFFFFA7DBE44AA8C558B6D059B5CE5AB5CD
            59B5CD5AB5CF55B5CF5DB4D059B1D356B5D246A5C3D4ECF0FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FEFDFFFDFDFFF7FFFFFCFEFBFFFDFEF8FEFEF1F9FAEF
            F8F9F0F8F9F0F8FAF0F8FAF0F8F9F0F8F9F0F8FAEEF8FAF0F7FAF3FAFAFCFDFF
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF000000}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 2
          Transparent = True
          OnClick = btnImprimirClick
        end
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 373
        Width = 880
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 'Duplo clique para consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16384
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object pnlPesquisa: TPanel
        Left = 0
        Top = 32
        Width = 880
        Height = 35
        Align = alTop
        TabOrder = 3
        Visible = False
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Edit4: TEdit
          Left = 42
          Top = 8
          Width = 311
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyDown = Edit4KeyDown
        end
        object btnConsultar: TNxButton
          Left = 354
          Top = 2
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
          TabOrder = 1
          Transparent = True
          OnClick = btnConsultarClick
        end
      end
    end
    object TS_Cadastro: TRzTabSheet
      Caption = 'Tela de Cadastro'
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 880
        Height = 390
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label8: TLabel
          Left = 581
          Top = 12
          Width = 14
          Height = 13
          Alignment = taRightJustify
          Caption = 'ID:'
        end
        object Label2: TLabel
          Left = 65
          Top = 12
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data:'
        end
        object Label1: TLabel
          Left = 60
          Top = 36
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome:'
        end
        object Label3: TLabel
          Left = 64
          Top = 60
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object DBEdit4: TDBEdit
          Left = 600
          Top = 4
          Width = 113
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'ID'
          DataSource = dmPagamento.dsRenegociacao
          ReadOnly = True
          TabOrder = 1
        end
        object DBDateEdit1: TDBDateEdit
          Left = 96
          Top = 4
          Width = 89
          Height = 21
          DataField = 'DATA'
          DataSource = dmPagamento.dsRenegociacao
          ReadOnly = True
          NumGlyphs = 2
          TabOrder = 0
        end
        object SMDBGrid2: TSMDBGrid
          Left = 1
          Top = 80
          Width = 878
          Height = 309
          TabStop = False
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          Ctl3D = True
          DataSource = dmPagamento.dsRenegociacaoParc
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
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
              Expanded = False
              FieldName = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_DUPLICATA'
              Visible = True
            end>
        end
        object DBEdit1: TDBEdit
          Left = 96
          Top = 28
          Width = 417
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'NOME'
          DataSource = dmPagamento.dsRenegociacao
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 96
          Top = 52
          Width = 417
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'VALOR'
          DataSource = dmPagamento.dsRenegociacao
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Renegociacao'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 601
    Top = 76
  end
end
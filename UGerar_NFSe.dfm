object frmGerar_NFSe: TfrmGerar_NFSe
  Left = 208
  Top = 40
  Width = 928
  Height = 634
  Caption = 'frmGerar_NFSe'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 69
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 31
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#234's/Ano Ref:'
    end
    object Label2: TLabel
      Left = 41
      Top = 53
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Op'#231#227'o:'
    end
    object Label4: TLabel
      Left = 53
      Top = 6
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object ceAno: TCurrencyEdit
      Left = 192
      Top = 23
      Width = 58
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
    end
    object btnConsultar: TNxButton
      Left = 251
      Top = 37
      Width = 175
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
      TabOrder = 2
      Transparent = True
      OnClick = btnConsultarClick
    end
    object ComboBox1: TComboBox
      Left = 78
      Top = 45
      Width = 172
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Pendentes'
      Items.Strings = (
        'Pendentes'
        'J'#225' Geradas')
    end
    object ComboBox3: TComboBox
      Left = 78
      Top = 23
      Width = 114
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 13
      TabOrder = 4
      OnChange = ComboBox3Change
      Items.Strings = (
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 78
      Top = 1
      Width = 267
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadOS.dsFilial
      TabOrder = 0
    end
    object ckRecibo: TCheckBox
      Left = 416
      Top = 5
      Width = 169
      Height = 17
      Caption = 'Verificar no Recibo'
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 69
    Width = 912
    Height = 38
    Align = alTop
    Color = 16769217
    TabOrder = 1
    object btnConfBaixa: TNxButton
      Left = 5
      Top = 1
      Width = 200
      Height = 36
      Cursor = crHandPoint
      Hint = 'Gera Nota de Servi'#231'o para os registros selecionados'
      Caption = 'Nota de Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
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
      GlyphSpacing = 5
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Transparent = True
      OnClick = btnConfBaixaClick
    end
    object btnGerar_Recibo: TNxButton
      Left = 205
      Top = 1
      Width = 200
      Height = 36
      Cursor = crHandPoint
      Hint = 'Gera Recibo de Servi'#231'o para os registros selecionados'
      Caption = 'Recibo de Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
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
      GlyphSpacing = 5
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Transparent = True
      OnClick = btnGerar_ReciboClick
    end
    object btnConsumo: TNxButton
      Left = 405
      Top = 1
      Width = 200
      Height = 36
      Cursor = crHandPoint
      Hint = 'Inclui Servi'#231'o Extra ao extrato'
      Caption = 'Consumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE3E1E3D8D8D7DADBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B5655F5E221E
        181A0E081A0B081C0E0A1A0C081A0E071A0F0D433D438F8F8DF3F1F0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8F8D201A171A0E051B21242B5F
        74227FA91D97CC269ED3249DD1208CB42C71881C3B491310091307055A555DEC
        ECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD3D3D31F1C1915050621465E28A4D626CAFF22C0
        FF1CC1FF20BDFF1FBBFF1EBBFF1BBCFF1CBFFF24C8FF2AB8FD25718F1117110D
        0301848383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA7A8A92B211D32394243ABD62CC8FF1DBBFF21BAFF1FBA
        FF1FB8FE22B4FF1CB9FD36B7F743B8F241B8F53AB5F236BAF839C3FF46C4FF24
        576D1005003F3F37FFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8B8B8B0E02001C495C28C9FF21BBFF1AB8FC20BAFA21B9FD20B9
        FE20B9FE21B7FE1EB9FE26B8FB1BB7FA1CB8F91FB8FA24B8FB23B7FB1ABAFD25
        C8FF2C8EB60F0509312F28FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB4ACAE0500001D506931CDFF1BB6FF25B7FE21B9FB1FB6FF1FB7FE1FB8
        FD21BAFF21B9FD21B8FE1DB8FF22B6FF21B6FF22B6FF22B6FF22B6FF24B7FD19
        B8FF22C1FF2CA4CD1001073C3A35FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EEF1EF020000183A4827CDFF1DBBFC1EB9FF13C4FF26B7FF1FB9FB1EB8FE20B7
        FF1FB7FF21BAFF1FB8FD20B9FD1FB8FF1FB8FF1FB8FF1FB8FF1FB8FF1FB9FD20
        B8FD20BAFF1FC4FF288EB4030000807F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        3936370B0E0431BFFF1ABAFF20BAFF27A7E8296C9C2FC8FF1EBCFF22BCFF1EB8
        FF20B7FF1FB9FD20B9FF20BAFF1FB7FF1FB7FF1FB8FF1FB8FF1FB7FF20B9FE20
        BAFE1FB9FE23B6FD1FC9FF204F69000000EBEBEAFFFFFFFFFFFFFFFFFFC3C4C6
        020000267DA81EC3FF29B6FD22B6FF2BCEFF0505020710263192C31A82B52DC9
        FF1DC4FF28B9FF22B9FD22BBFB21B8FF20B7FE21B7FE20B7FF1EB9FD21B8FE22
        B9FE1FB9FC20B7FE19B8FF2DC4FF0A07014B4950FFFFFFFFFFFFFFFFFF413739
        080F1927CFFF23B5FF19B9FF1EB7FF1CBDFF2184BC3184A90B2F451A69810516
        211E537117A8DF18C2FF22B5FF1DB9FF1CB8FE1CB7FF1EB7FF23B9FF1FB8FF1D
        B7FF21B6FF20B7FF20B8FF21C3FF246884000000FFFFFFFFFFFFFCF9FD000000
        22688F26C0FF26B8FB23B9FA28B8FA26B9FD34C0FF0B161127CEFF1FC4FF47E6
        FF0A1B263E85A5286C8D3BCFFF36BEFE36BBFA30BAF923B8F820B8FB24B8F928
        B7FC24B5FF20B7FF1FB8FF1EB9FF2BBBFF000000828380FFFFFFB0ACAE000000
        36ABE644BAF933B9F537B7F639B8F638B6F33CC9FF192B4A4ACCFB4DD4FF1336
        3A429BCB3081B01000003C64745ED6FF4BBFFA55C0F454BEF44CBDF33FBAF428
        B7F524B7FD20B8FF20B7FF1DB8FE29C8FF0D29364E4642FFFFFF757172000402
        2CCCFF17B7FF19B8FE1FB8FE16B9FC20BAFA46C7FF3F80AA4086A71B3D484A8E
        BF1932394AA3C2356C9404000025506153DDFF4DC1FD49C2FB4CC4FD4AC1FE33
        BCFE1BB6FD1FB8FF20B7FF1EB8FF23C1FF1E6078000000FFFFFF4B44450E2932
        20C8FF24B6FF24B6FF20B5FE2FB8FD53C4FE53C6FD56DDFF0500004FAACB468A
        AC0200001000004AAFCF39728E07000031526562DDFF51C4FD55C5FD53C5F955
        C5FC3BBEF91DB6FD1FB7FF1EB8FF1BBEFF1C82AB000000EFEFED322D2D173A4A
        1EC6FF22B8FE19B7FF1FB8FB54C7FE64C9F85BCAF75EC9FF69C0E817293851A5
        C83C788C0401001100005BB1D44076920100002C566A71E1FF52CAFE60C8F95C
        C9F860CBFA37BDFA1AB7FE26B6FF1EBDFF2095C7000000D6D4D22925251C4051
        1DC5FF22B7FF1BB7FD4EC2FD6CCCFC64CCF965CDF768CAFD74D2FF1D27300700
        0067B0D54475940E0E001000005AB3D24C74980000003559707DE1FF5FCBFA68
        CBFA69CBF966CBFC28B7F91BB7FF20BDFF249ACC000000CECFCF3430300B2E3F
        20C7FF1FB7FF20B9FA75CFF972CEF774CDF872CDF970CEF76DD0FC7CE2FF2230
        3B01000074B8D74579940A080016000069B7D04B7B94030000355E6A88E6FF71
        CCFB72CCFA78D1F642C1FD1EB4FF21BEFF1B8DC0000000D9D6BD4E494B04131C
        20CBFF15B5FF47BFFD7ED3F87AD1F879D1F87FCFF97FCFF97ACFF97AD1FF8CE3
        FF2F394006000074B6D2557C90080A071004036EB1CF5580900600003A5B6E90
        E6FF78CEFD7FCFFA74CCFB14B5FB1FC0FF2177A1000000FCF0E1999796626364
        33C0FA2EB8F565C7F592D2EC8DCDF28ECEF28ACEF287D0F585D3F78AD2F781D5
        FF98E7FF27353F1000007DBCD56685991F200E1D1B218FBFDC5884971F0E0044
        657592E3FF83D3F789D2FB19B7FA1EBBFF5B8FA54C4B48FFFEEFDEE4E071615E
        39A9D82AB8FB6CC8F894D3ED90D3F191D4F292D2F294D5F590D5F58FD5F695D5
        F591D6FB9FEBFF28383C1D120D85B9CE6A86A6291D1A151D1A8BB4CA658EA600
        000076A4B98FDCFE99D6F823B8F917BEFF657073A3A0A3FFFDECFFFFFF79706C
        5990A502BCFF6ACAF8A0D9F798D8F798D8F798D8F698D7F699D7F699D7F698D7
        F699D7F695DBF9B2E9FF303C411000028EC2D06283960B100C190C0F7FA9C086
        B8CCA4E0FF99D9F69DD9F415B4FF35AFE6786B66CCCFD5FFFAE6FFFFFFB1B2A9
        85787427B7F641C5FEB3DCF4A4DBF3A5DBF3A6DCF4A6DCF4A5DBF3A5DBF3A5DB
        F3A5DBF3A0DCF2A0DDFAB8EFFF2B40430E060098BFD474889505000070848EA5
        E6FFA1DBF8A8DDEF8FD3FB07BEFF668DA2827C78FFFFFFFEF3E0FFFFFFFBF8FD
        7C7A725F98AF1BBCFFB2E2F3B1DDF3AEDDF3ACDFF3AFDEF4AEDDF3AEDDF3AEDD
        F3AEDDF3AFDDF3AFDEF1AEDFF5C1F1FF3C41470D07058EB1BE9BB8D1B3EDFFB6
        DCF2A9DDF5BAE3F252C9FC26B0EB8A7977C1C4C0FFFFFFFDF7F3FFFFFFFFFFFF
        BEBFC08D847B2FABE571CEFFBBE6F1BBE0F0B7DFF5B6DFF3B6DFF3B6E0F3B6E0
        F3B6E0F3B6DFF3B6DFF4B8DFF3BAE2F4CCF4FF2F36406E838CBFEEFFB6DFF5B5
        E0F2C0E0F0B8DFFB16B7FF898D96908D8BFFFFFFFFFFFEFEFFFDFFFFFFFFFFFF
        FFFFFFA29D93938D951DB7EBB6DFFDCAE5EFC2E1F5C3E1F3C3E1F3C3E1F3C3E1
        F3C3E1F3C3E1F3C3E1F3C3E1F3C3E3F2C1E3F6D0F0FFCFEBFDC1E2F3C5E1F5BF
        E4EECBE8F933C8FA719BB5878A83EAEAE9FFFFFFFDFFFFFCFDFFFFFFFFFEFEFE
        FFFFFFFAFCFE9C97939199A328B7ECBFE6FBD9EBE8CFE6F3CBE4F4CBE7F1CCE6
        F1CCE6F1CDE6F1CCE5F0CDE7F2CAE4EFCDE7EECEE5F0CCE4F5C9E8F1D0E8EFDF
        E8F85BCAFE68A3BF999288D6D0D1FFFFFFFDFEFDFFFEFFFBFEFDFFFFFFFFFFFF
        F7F7F7F4F4F4EEEEEEA3A49DA9A3A151B3E2A6DBF6E4E7EFDDEAF1D9E9F0D6EA
        F0D6EAF0D6E9F0D7EAF0D0E3E9CCE0E6CFE2E9C8E1E4D6E2E4E2E2EBCFE1F245
        C3F474A6B49F9891CECECEFFFFFFFFFFFFFDFDFDF5F3F3E9EFEDFFFFFFFEFEFE
        FDFDFDFDFDFDFFFFFFFAF9F9B0A8B0A1A5996FA6C35EC6F7BFE7F7EAF0F1EDEE
        F0E8ECEFE5EBEFE5ECF0E4EAEFE8EDF1E9ECEEEFEBF1D9EEF480D6F74CB1DBA2
        A5A6A89E9CE6DEDEFFFFFFFBFFFFFFFFFFFFFFFFFDFBFCE7F2EEFFFFFFFFFFFF
        FEFEFEFFFFFFFEFEFEFFFFFFFFFFFFD8CED3ABAAA5AEAAA86BADCB5FBCE97ED2
        F4ABDFF7C9E9F7CFEAF8D0E9F8B4E3F594D8FB70C5F35DB1D496ACB0B5A79FC1
        BABCF6F9F6FFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFEFFF8FEFBFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFCD4D5CBB9B4ACBEACACAFB0
        B48EB2BD7EB0C77AB2C976B2C986B1C69FB0B3B1B2ABBBB2A6C9C4BEEBECEEFF
        FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFCFCFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFEAF2EBDFE0
        DBD5D2D1CBCCC8CAC7C4CEC9C5D5CFC6DDDAD8E7E7E8FBFCFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFF}
      GlyphSpacing = 5
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Transparent = True
      OnClick = btnConsumoClick
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 107
    Width = 912
    Height = 489
    ActivePage = TS_Contrato
    ActivePageDefault = TS_Contrato
    Align = alClient
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object TS_Contrato: TRzTabSheet
      Caption = 'Contratos'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 466
        Align = alClient
        Ctl3D = False
        DataSource = DMCadOS.dsContrato
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 19
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Width = 36
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ANO_CONTRATO'
            Title.Alignment = taCenter
            Title.Caption = 'Ano Contrato'
            Width = 49
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_CONTRATO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Contrato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIA_VENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Dia Vencimento'
            Width = 67
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'OPCAO_VENCIMENTO_MREF'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_SERVICO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Servi'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_ISS'
            Title.Alignment = taCenter
            Title.Caption = '% ISS'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_INSS'
            Title.Alignment = taCenter
            Title.Caption = '% INSS'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_IR'
            Title.Alignment = taCenter
            Title.Caption = '% IR'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RETEM_INSS'
            Title.Alignment = taCenter
            Title.Caption = 'Ret'#233'm INSS'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RETEM_ISS'
            Title.Alignment = taCenter
            Title.Caption = 'Ret'#233'm ISS'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RETEM_IR'
            Title.Alignment = taCenter
            Title.Caption = 'Ret'#233'm IR'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNAE'
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTCONTRATO_INI'
            Title.Alignment = taCenter
            Title.Caption = 'Data Contrato Inicial'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTCONTRATO_FIN'
            Title.Alignment = taCenter
            Title.Caption = 'Data Contrato Final'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_REG'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Reg.'
            Width = 64
            Visible = True
          end>
      end
    end
    object TS_Servico: TRzTabSheet
      Caption = 'Servi'#231'o Extra'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 466
        Align = alClient
        Ctl3D = False
        DataSource = DMCadOS.dsMov_Servico
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 13
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'FILIAL'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Width = 193
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERVICO_COMPLEMENTO'
            Width = 421
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FANTASIA_FILIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_SERVICO'
            Width = 368
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_SERVICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_SERVICO_INT'
            Width = 64
            Visible = True
          end>
      end
    end
  end
end

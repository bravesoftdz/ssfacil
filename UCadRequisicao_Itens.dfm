object frmCadRequisicao_Itens: TfrmCadRequisicao_Itens
  Left = 227
  Top = 220
  Width = 751
  Height = 254
  Caption = 'Cadastro dos Itens do Ajuste do Estoque'
  Color = clMoneyGreen
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
  object Label3: TLabel
    Left = 94
    Top = 74
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Unidade:'
  end
  object Label4: TLabel
    Left = 79
    Top = 97
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Quantidade:'
  end
  object Label7: TLabel
    Left = 83
    Top = 121
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr.Unit'#225'rio:'
  end
  object Shape1: TShape
    Left = 616
    Top = 77
    Width = 113
    Height = 36
    Brush.Color = clMoneyGreen
  end
  object Label30: TLabel
    Left = 636
    Top = 80
    Width = 86
    Height = 16
    Caption = 'Qtd.Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblEstoque: TLabel
    Left = 622
    Top = 97
    Width = 101
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 57
    Top = 142
    Width = 79
    Height = 13
    Alignment = taRightJustify
    Caption = 'Centro de Custo:'
  end
  object SpeedButton3: TSpeedButton
    Left = 560
    Top = 134
    Width = 23
    Height = 22
    Hint = 'Abre a tela de Centro de Custo'
    Caption = '...'
    OnClick = SpeedButton3Click
  end
  object SpeedButton5: TSpeedButton
    Left = 584
    Top = 134
    Width = 23
    Height = 22
    Hint = 'Atualiza tabela Centro de Custo'
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
      F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
      F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
      CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
      E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
      B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
      F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
      9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
      FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
      53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
      FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
      F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
      FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
      FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
      BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
      F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
      BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
      92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
      997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
      CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
      FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
      FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
      FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
      FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
      C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
      FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
      BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
      E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
      78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
      C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
      FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
      EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
      F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
      FFFEFEFFFFFFFFFFFFFF}
    Margin = 0
    OnClick = SpeedButton5Click
  end
  object lblTamanho: TLabel
    Left = 261
    Top = 91
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tamanho:'
    Visible = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 189
    Width = 743
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 8
    object BitBtn4: TBitBtn
      Left = 350
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 252
      Top = 5
      Width = 98
      Height = 25
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 0
    OnExit = Panel1Exit
    object SpeedButton1: TSpeedButton
      Left = 639
      Top = 20
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Produtos'
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object SpeedButton4: TSpeedButton
      Left = 663
      Top = 20
      Width = 23
      Height = 22
      Hint = 'Atualiza tabela Produtos'
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
        F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
        F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
        CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
        E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
        B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
        F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
        9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
        FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
        53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
        FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
        F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
        FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
        BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
        F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
        BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
        92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
        997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
        CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
        FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
        FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
        FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
        FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
        C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
        BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
        E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
        78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
        C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
        FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
        EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
        F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
        FFFEFEFFFFFFFFFFFFFF}
      Margin = 0
      OnClick = SpeedButton4Click
    end
    object Label10: TLabel
      Left = 2
      Top = 28
      Width = 134
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto (Refer'#234'ncia/Nome):'
    end
    object Label12: TLabel
      Left = 314
      Top = 3
      Width = 124
      Height = 13
      Caption = 'F2 para pesquisar Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 311
      Top = 21
      Width = 329
      Height = 21
      DropDownCount = 8
      DataField = 'ID_PRODUTO'
      DataSource = DMCadDocEstoque.dsDocEstoque_Itens
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadDocEstoque.dsProduto
      TabOrder = 1
      OnChange = RxDBLookupCombo4Change
      OnEnter = RxDBLookupCombo2Enter
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 138
      Top = 21
      Width = 173
      Height = 21
      DropDownCount = 8
      DropDownWidth = 550
      DataField = 'ID_PRODUTO'
      DataSource = DMCadDocEstoque.dsDocEstoque_Itens
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA;NOME'
      LookupSource = DMCadDocEstoque.dsProduto
      TabOrder = 0
      OnChange = RxDBLookupCombo4Change
      OnEnter = RxDBLookupCombo4Enter
    end
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 138
    Top = 66
    Width = 115
    Height = 21
    DropDownCount = 8
    Color = clBtnFace
    DataField = 'UNIDADE'
    DataSource = DMCadDocEstoque.dsDocEstoque_Itens
    LookupField = 'UNIDADE'
    LookupDisplay = 'UNIDADE'
    LookupSource = DMCadDocEstoque.dsUnidade
    ReadOnly = True
    TabOrder = 2
    TabStop = False
  end
  object DBEdit2: TDBEdit
    Left = 138
    Top = 89
    Width = 115
    Height = 21
    DataField = 'QTD'
    DataSource = DMCadDocEstoque.dsDocEstoque_Itens
    TabOrder = 3
    OnExit = DBEdit2Exit
  end
  object DBEdit5: TDBEdit
    Left = 138
    Top = 113
    Width = 115
    Height = 21
    DataField = 'VLR_UNITARIO'
    DataSource = DMCadDocEstoque.dsDocEstoque_Itens
    TabOrder = 6
    OnExit = DBEdit5Exit
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 138
    Top = 135
    Width = 423
    Height = 21
    DropDownCount = 8
    DropDownWidth = 550
    DataField = 'ID_CENTROCUSTO'
    DataSource = DMCadDocEstoque.dsDocEstoque_Itens
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = DMCadDocEstoque.dsCentroCusto
    TabOrder = 7
    OnChange = RxDBLookupCombo4Change
    OnEnter = RxDBLookupCombo4Enter
  end
  object btnGrade: TNxButton
    Left = 255
    Top = 87
    Width = 142
    Height = 25
    Hint = 'Abre a tela de tamanhos'
    Caption = 'Grade'
    Color = 16752448
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      A2000000424DA2000000000000003E000000280000001A000000190000000100
      010000000000640000000000000000000000020000000200000000000000FFFF
      FF00BFFFFF80BFFFFF80BFFFFF80BFFFFF80BFFFFF80B80E0180B00E0180B386
      7980BFC7F980BF87F180BF0FE180BF0FE180BF0FE180BF8FF180BF8FF980B00E
      0180B01E0180BC7F8780BE7FCF80BFFFFF80BFFFFF80BFFFFF80BFFFFF80C000
      0000FFFFFFC0}
    GlyphSpacing = 5
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Transparent = True
    Visible = False
    OnClick = btnGradeClick
  end
  object dblcTamanho: TRxDBLookupCombo
    Left = 307
    Top = 85
    Width = 115
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'TAMANHO'
    DataSource = DMCadDocEstoque.dsDocEstoque_Itens
    LookupField = 'TAMANHO'
    LookupDisplay = 'TAMANHO'
    LookupSource = DMInformar_Tam.dsProduto_Tam
    ParentCtl3D = False
    TabOrder = 5
    Visible = False
  end
  object pnlCor: TPanel
    Left = 0
    Top = 42
    Width = 743
    Height = 23
    Align = alTop
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 1
    object Label5: TLabel
      Left = 87
      Top = 9
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Cor:'
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 138
      Top = 1
      Width = 423
      Height = 21
      DropDownCount = 8
      DataField = 'ID_COR'
      DataSource = DMCadDocEstoque.dsDocEstoque_Itens
      LookupField = 'ID_COR_COMBINACAO'
      LookupDisplay = 'NOME'
      LookupSource = DMCadDocEstoque.dsCombinacao
      TabOrder = 0
      OnExit = RxDBLookupCombo5Exit
    end
  end
end

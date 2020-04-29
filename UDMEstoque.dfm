object DMEstoque: TDMEstoque
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 414
  Top = 194
  Height = 449
  Width = 750
  object sdsEstoque_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ESTOQUE_MOV'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsEstoque_MovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEstoque_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsEstoque_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsEstoque_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsEstoque_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsEstoque_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsEstoque_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object sdsEstoque_MovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsEstoque_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsEstoque_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsEstoque_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsEstoque_MovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsEstoque_MovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsEstoque_MovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsEstoque_MovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object sdsEstoque_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsEstoque_MovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object sdsEstoque_MovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsEstoque_MovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsEstoque_MovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsEstoque_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsEstoque_MovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object sdsEstoque_MovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object sdsEstoque_MovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object sdsEstoque_MovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object sdsEstoque_MovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object sdsEstoque_MovID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object sdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsEstoque_MovNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsEstoque_MovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsEstoque_MovID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object sdsEstoque_MovPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsEstoque_MovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsEstoque_MovID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object sdsEstoque_MovLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsEstoque_MovCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object sdsEstoque_MovESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object sdsEstoque_MovID_PRODUTO_ORIG: TIntegerField
      FieldName = 'ID_PRODUTO_ORIG'
    end
    object sdsEstoque_MovID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsEstoque_MovITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
  end
  object dspEstoque_Mov: TDataSetProvider
    DataSet = sdsEstoque_Mov
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 32
  end
  object cdsEstoque_Mov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspEstoque_Mov'
    OnReconcileError = cdsEstoque_MovReconcileError
    Left = 192
    Top = 32
    object cdsEstoque_MovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEstoque_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoque_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object cdsEstoque_MovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsEstoque_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsEstoque_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_MovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsEstoque_MovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsEstoque_MovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsEstoque_MovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object cdsEstoque_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_MovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object cdsEstoque_MovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsEstoque_MovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsEstoque_MovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsEstoque_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEstoque_MovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object cdsEstoque_MovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object cdsEstoque_MovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object cdsEstoque_MovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object cdsEstoque_MovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object cdsEstoque_MovID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoque_MovNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEstoque_MovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MovID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsEstoque_MovPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsEstoque_MovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoque_MovID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object cdsEstoque_MovLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsEstoque_MovCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsEstoque_MovESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsEstoque_MovID_PRODUTO_ORIG: TIntegerField
      FieldName = 'ID_PRODUTO_ORIG'
    end
    object cdsEstoque_MovID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsEstoque_MovITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
  end
  object dsEstoque_Mov: TDataSource
    DataSet = cdsEstoque_Mov
    Left = 248
    Top = 32
  end
  object qEstoque: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT sum(QTD) QTD'
      'FROM ESTOQUE_ATUAL'
      'WHERE ID_PRODUTO = :ID_PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 225
    Top = 184
    object qEstoqueQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT UNIDADE, ID_PRODUTO_EST'
      'FROM PRODUTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 184
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qProdutoID_PRODUTO_EST: TIntegerField
      FieldName = 'ID_PRODUTO_EST'
    end
  end
  object qEstoqueAtual: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'vTipo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.NOME, P.REFERENCIA, P.UNIDADE, EA.*'
      'FROM ESTOQUE_ATUAL EA'
      'INNER JOIN PRODUTO P ON (EA.ID_PRODUTO = P.ID)'
      'WHERE P.INATIVO = '#39'N'#39
      '  AND P.TIPO_REG = :vTipo'
      'ORDER BY P.NOME')
    SQLConnection = dmDatabase.scoDados
    Left = 280
    Top = 184
    object qEstoqueAtualNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qEstoqueAtualREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qEstoqueAtualUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qEstoqueAtualFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qEstoqueAtualQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10' WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 90
    Top = 78
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 138
    Top = 78
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 194
    Top = 78
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 250
    Top = 78
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_ESTOQUE_GERAL_CAD, USA_PRODUTO_EST'
      'FROM PARAMETROS_EST P'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 383
    Top = 48
    object qParametros_EstUSA_ESTOQUE_GERAL_CAD: TStringField
      FieldName = 'USA_ESTOQUE_GERAL_CAD'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstUSA_PRODUTO_EST: TStringField
      FieldName = 'USA_PRODUTO_EST'
      FixedChar = True
      Size = 1
    end
  end
  object sdsEstoque_Local: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT E.*'#13#10'FROM ESTOQUE_LOCAL E'#13#10'WHERE E.ID_PRODUTO = :ID_PRODU' +
      'TO'#13#10'  AND E.ID_COR = :ID_COR'#13#10'  AND E.LOCALIZACAO = :LOCALIZACAO' +
      #13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LOCALIZACAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 479
    Top = 200
    object sdsEstoque_LocalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEstoque_LocalID_COR: TIntegerField
      FieldName = 'ID_COR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEstoque_LocalLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEstoque_LocalQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dspEstoque_Local: TDataSetProvider
    DataSet = sdsEstoque_Local
    UpdateMode = upWhereKeyOnly
    Left = 531
    Top = 199
  end
  object cdsEstoque_Local: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRODUTO;ID_COR;LOCALIZACAO'
    Params = <>
    ProviderName = 'dspEstoque_Local'
    Left = 586
    Top = 201
    object cdsEstoque_LocalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEstoque_LocalID_COR: TIntegerField
      FieldName = 'ID_COR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEstoque_LocalLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEstoque_LocalQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object sdsProduto_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT P.*'#13#10'FROM PRODUTO_TAM P'#13#10'WHERE P.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 294
    Top = 284
  end
  object dspProduto_Tam: TDataSetProvider
    DataSet = sdsProduto_Tam
    Left = 342
    Top = 284
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Tam'
    Left = 395
    Top = 284
    object cdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsProduto_TamPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object cdsProduto_TamPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object cdsProduto_TamTAM_MATRIZ: TStringField
      FieldName = 'TAM_MATRIZ'
      Size = 10
    end
  end
  object dsProduto_Tam: TDataSource
    DataSet = cdsProduto_Tam
    Left = 453
    Top = 284
  end
  object sdsProduto_Cor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*, COMB.NOME NOME_COMBINACAO'#13#10'FROM PRODUTO_COMB P'#13#10'INNE' +
      'R JOIN COMBINACAO COMB'#13#10'ON P.id_cor_combinacao = COMB.ID'#13#10'WHERE ' +
      'P.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 293
    Top = 345
    object sdsProduto_CorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_CorID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object sdsProduto_CorNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
  end
  object dspProduto_Cor: TDataSetProvider
    DataSet = sdsProduto_Cor
    Left = 339
    Top = 345
  end
  object cdsProduto_Cor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Cor'
    Left = 392
    Top = 345
    object cdsProduto_CorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_CorID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsProduto_CorNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
  end
  object dsProduto_Cor: TDataSource
    DataSet = cdsProduto_Cor
    Left = 450
    Top = 344
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_RESERVA_EST'
      'FROM PARAMETROS_PED'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 484
    Top = 50
    object qParametros_PedUSA_RESERVA_EST: TStringField
      FieldName = 'USA_RESERVA_EST'
      FixedChar = True
      Size = 1
    end
  end
end

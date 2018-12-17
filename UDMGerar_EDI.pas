unit UDMGerar_EDI;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMGerar_EDI = class(TDataModule)
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosID_OPERACAO_VENDA: TIntegerField;
    qParametrosID_OPERACAO_BENEF_RET: TIntegerField;
    qParametrosID_OPERACAO_MAOOBRA: TIntegerField;
    qParametrosID_OPERACAO_TRIANGULAR: TIntegerField;
    mNaoGerado: TClientDataSet;
    mNaoGeradoPedido: TStringField;
    mNaoGeradoNumOS: TStringField;
    mNaoGeradoMotivo: TStringField;
    dsmNaoGerado: TDataSource;
    mGerado: TClientDataSet;
    mGeradoPedidoCliente: TStringField;
    mGeradoNumPedido: TIntegerField;
    dsmGerado: TDataSource;
    mAuxiliar: TClientDataSet;
    dsmAuxiliar: TDataSource;
    mAuxiliarNumOC: TStringField;
    mAuxiliarItem: TIntegerField;
    mAuxiliarPlano: TStringField;
    mAuxiliarDtEmissao: TStringField;
    mAuxiliarTipoOperacao: TStringField;
    mAuxiliarLocalEntrega: TStringField;
    mAuxiliarDtEntrega: TStringField;
    mAuxiliarFabrica: TStringField;
    mAuxiliarCodProdCli: TStringField;
    mAuxiliarQuantidade: TStringField;
    mAuxiliarUnidade: TStringField;
    mAuxiliarPercTransferencia: TStringField;
    mAuxiliarVlrUnitario: TStringField;
    mAuxiliarCondPgto: TStringField;
    mAuxiliarDrawback: TStringField;
    mAuxiliarPlano2: TStringField;
    mAuxiliarNomeProduto: TStringField;
    mAuxiliarCNPJFornecedor: TStringField;
    mAuxiliarCNPJCliente: TStringField;
    mAuxiliarReservado: TStringField;
    mAuxiliarTamnanho: TStringField;
    qCliente: TSQLQuery;
    qClienteCODIGO: TIntegerField;
    qClienteNOME: TStringField;
    qClienteCNPJ_CPF: TStringField;
    qClienteID_EDI: TIntegerField;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialNOME: TStringField;
    qFilialNOME_INTERNO: TStringField;
    qFilialCNPJ_CPF: TStringField;
    qEDI_Config: TSQLQuery;
    qEDI_ConfigID: TIntegerField;
    qEDI_ConfigLAYOUT: TStringField;
    qEDI_ConfigCNPJ_CLIENTE_INI: TIntegerField;
    qEDI_ConfigCNPJ_CLIENTE_TAM: TIntegerField;
    qEDI_ConfigNUM_OC_INI: TIntegerField;
    qEDI_ConfigNUM_OC_TAM: TIntegerField;
    qEDI_ConfigOCO_INI: TIntegerField;
    qEDI_ConfigOCO_TAM: TIntegerField;
    qEDI_ConfigPLANO_INI: TIntegerField;
    qEDI_ConfigPLANO_TAM: TIntegerField;
    qEDI_ConfigDTEMISSAO_INI: TIntegerField;
    qEDI_ConfigDTEMISSAO_TAM: TIntegerField;
    qEDI_ConfigTIPO_OPERACAO_INI: TIntegerField;
    qEDI_ConfigTIPO_OPERACAO_TAM: TIntegerField;
    qEDI_ConfigDTENTREGA_INI: TIntegerField;
    qEDI_ConfigDTENTREGA_TAM: TIntegerField;
    qEDI_ConfigCOD_LOCAL_ENTREGA_INI: TIntegerField;
    qEDI_ConfigCOD_LOCAL_ENTREGA_TAM: TIntegerField;
    qEDI_ConfigFABRICA_INI: TIntegerField;
    qEDI_ConfigFABRICA_TAM: TIntegerField;
    qEDI_ConfigCOD_PRODUTO_INI: TIntegerField;
    qEDI_ConfigCOD_PRODUTO_TAM: TIntegerField;
    qEDI_ConfigQTD_INI: TIntegerField;
    qEDI_ConfigQTD_TAM: TIntegerField;
    qEDI_ConfigUNIDADE_INI: TIntegerField;
    qEDI_ConfigUNIDADE_TAM: TIntegerField;
    qEDI_ConfigPERC_TRANSF_INI: TIntegerField;
    qEDI_ConfigPERC_TRANSF_TAM: TIntegerField;
    qEDI_ConfigVLR_UNITARIO_INI: TIntegerField;
    qEDI_ConfigVLR_UNITARIO_TAM: TIntegerField;
    qEDI_ConfigVLR_UNITARIO_DEC: TIntegerField;
    qEDI_ConfigCOND_PGTO_INI: TIntegerField;
    qEDI_ConfigCOND_PGTO_TAM: TIntegerField;
    qEDI_ConfigNOME_PRODUTO_INI: TIntegerField;
    qEDI_ConfigNOME_PRODUTO_TAM: TIntegerField;
    qEDI_ConfigCNPJ_FORNECEDOR_INI: TIntegerField;
    qEDI_ConfigCNPJ_FORNECEDOR_TAM: TIntegerField;
    qEDI_ConfigPLANO2_INI: TIntegerField;
    qEDI_ConfigPLANO2_TAM: TIntegerField;
    qEDI_ConfigUSA_PLANO: TStringField;
    qEDI_ConfigDRAWBACK_INI: TIntegerField;
    qEDI_ConfigDRAWBACK_TAM: TIntegerField;
    qEDI_ConfigTAMANHO_INI: TIntegerField;
    qEDI_ConfigTAMANHO_TAM: TIntegerField;
    qEDI_ConfigRESERVADO_INI: TIntegerField;
    qEDI_ConfigRESERVADO_TAM: TIntegerField;
    qEDI_ConfigQTD_DEC: TIntegerField;
    qProduto_Forn: TSQLQuery;
    mAuxiliarID_Produto: TIntegerField;
    mAuxiliarID_Cliente: TIntegerField;
    qProduto_FornID: TIntegerField;
    qProduto_FornITEM: TIntegerField;
    qProduto_FornID_FORNECEDOR: TIntegerField;
    qProduto_FornNOME_MATERIAL_FORN: TStringField;
    qProduto_FornCOD_MATERIAL_FORN: TStringField;
    qProduto_FornTAMANHO: TStringField;
    qProduto_FornID_COR: TIntegerField;
    qProduto_FornCOD_BARRA: TStringField;
    qProduto_FornPRECO_CUSTO: TFloatField;
    qProduto_FornTAMANHO_CLIENTE: TStringField;
    mAuxiliarTamanho_Int: TStringField;
    mNaoGeradoItem: TIntegerField;
    mAuxiliarErro: TBooleanField;
    mAuxiliarFilial: TIntegerField;
    qClienteID_TRANSPORTADORA: TIntegerField;
    qClienteID_REDESPACHO: TIntegerField;
    qClienteID_VENDEDOR: TIntegerField;
    qClienteID_CONDPGTO: TIntegerField;
    qClienteID_CONTABOLETO: TIntegerField;
    qClienteID_TIPOCOBRANCA: TIntegerField;
    qClienteID_REGIME_TRIB: TIntegerField;
    qClientePERC_COMISSAO: TFloatField;
    qClientePERC_COMISSAO_VEND: TFloatField;
    qClienteTIPO_FRETE: TStringField;
    qRegra_Empresa: TSQLQuery;
    qFilialSIMPLES: TStringField;
    qClienteUF: TStringField;
    qFilialUF: TStringField;
    qClienteCODIGO_TRIB: TIntegerField;
    qClientePESSOA: TStringField;
    qRegra_EmpresaID: TIntegerField;
    qRegra_EmpresaID_OPERACAO: TIntegerField;
    qRegra_EmpresaID_CFOP: TIntegerField;
    qRegra_EmpresaID_VARIACAO: TIntegerField;
    qFilialID_REGIME_TRIB: TIntegerField;
    sdsPedido_Itens: TSQLDataSet;
    cdsPedido_Itens: TClientDataSet;
    dsPedido_Itens: TDataSource;
    sdsPedido_ItensID: TIntegerField;
    sdsPedido_ItensITEM: TIntegerField;
    sdsPedido_ItensID_PRODUTO: TIntegerField;
    sdsPedido_ItensID_COR: TIntegerField;
    sdsPedido_ItensTAMANHO: TStringField;
    sdsPedido_ItensQTD: TFloatField;
    sdsPedido_ItensQTD_FATURADO: TFloatField;
    sdsPedido_ItensQTD_RESTANTE: TFloatField;
    sdsPedido_ItensQTD_CANCELADO: TFloatField;
    sdsPedido_ItensVLR_DESCONTO: TFloatField;
    sdsPedido_ItensCANCELADO: TStringField;
    sdsPedido_ItensDTENTREGA: TDateField;
    sdsPedido_ItensFATURADO: TStringField;
    sdsPedido_ItensDTFATURADO: TDateField;
    sdsPedido_ItensCOD_PRODUTO_CLIENTE: TStringField;
    sdsPedido_ItensTIPO: TStringField;
    sdsPedido_ItensUNIDADE: TStringField;
    sdsPedido_ItensNUMOS: TStringField;
    sdsPedido_ItensPERC_DESCONTO: TFloatField;
    sdsPedido_ItensVLR_FRETE: TFloatField;
    sdsPedido_ItensBASE_ICMS: TFloatField;
    sdsPedido_ItensVLR_ICMS: TFloatField;
    sdsPedido_ItensBASE_ICMSTRANSF: TFloatField;
    sdsPedido_ItensPERC_TRANSF: TFloatField;
    sdsPedido_ItensVLR_TRANSF: TFloatField;
    sdsPedido_ItensVLR_IPI: TFloatField;
    sdsPedido_ItensBASE_ICMSSIMPLES: TFloatField;
    sdsPedido_ItensVLR_ICMSSIMPLES: TFloatField;
    sdsPedido_ItensPERC_ICMSSIMPLES: TFloatField;
    sdsPedido_ItensBASE_ICMSSUBST: TFloatField;
    sdsPedido_ItensVLR_ICMSSUBST: TFloatField;
    sdsPedido_ItensVLR_DESCONTORATEIO: TFloatField;
    sdsPedido_ItensID_CFOP: TIntegerField;
    sdsPedido_ItensID_CSTIPI: TIntegerField;
    sdsPedido_ItensID_CSTICMS: TIntegerField;
    sdsPedido_ItensPERC_ICMS: TFloatField;
    sdsPedido_ItensPERC_IPI: TFloatField;
    sdsPedido_ItensREFERENCIA: TStringField;
    sdsPedido_ItensNOMEPRODUTO: TStringField;
    sdsPedido_ItensOBS_COMPLEMENTAR: TStringField;
    sdsPedido_ItensCALCULARICMSSOBREIPI: TStringField;
    sdsPedido_ItensVLR_UNITARIO: TFloatField;
    sdsPedido_ItensID_CONFIG_CFOP: TIntegerField;
    sdsPedido_ItensVLR_TOTAL: TFloatField;
    sdsPedido_ItensQTD_AFATURAR: TFloatField;
    sdsPedido_ItensID_VARIACAO: TIntegerField;
    sdsPedido_ItensOBS: TMemoField;
    sdsPedido_ItensPERC_TRIBICMS: TFloatField;
    sdsPedido_ItensID_ATELIER: TIntegerField;
    sdsPedido_ItensVLR_UNITARIO_ATELIER: TFloatField;
    sdsPedido_ItensVLR_TOTAL_ATELIER: TFloatField;
    sdsPedido_ItensDT_ENVIO_ATELIER: TDateField;
    sdsPedido_ItensDT_RETORNO_ATELIER: TDateField;
    sdsPedido_ItensVLR_PAGTO_ATELIER: TFloatField;
    sdsPedido_ItensDT_PAGTO_ATELIER: TDateField;
    sdsPedido_ItensAPROVADO_ORC: TStringField;
    sdsPedido_ItensMOTIVO_NAO_APROV: TMemoField;
    sdsPedido_ItensDTAPROVADO_NAO: TDateField;
    sdsPedido_ItensID_ORCAMENTO: TIntegerField;
    sdsPedido_ItensITEM_ORCAMENTO: TIntegerField;
    sdsPedido_ItensQTD_LIBERADA: TFloatField;
    sdsPedido_ItensQTD_PRODUZIDA: TFloatField;
    sdsPedido_ItensNUM_LOTE: TIntegerField;
    sdsPedido_ItensNUM_TALAO: TStringField;
    sdsPedido_ItensGERAR_LOTE: TStringField;
    sdsPedido_ItensCARIMBO: TStringField;
    sdsPedido_ItensDTPRODUCAO: TDateField;
    sdsPedido_ItensID_NCM: TIntegerField;
    DataSetProvider1: TDataSetProvider;
    cdsPedido_ItensID: TIntegerField;
    cdsPedido_ItensITEM: TIntegerField;
    cdsPedido_ItensID_PRODUTO: TIntegerField;
    cdsPedido_ItensID_COR: TIntegerField;
    cdsPedido_ItensTAMANHO: TStringField;
    cdsPedido_ItensQTD: TFloatField;
    cdsPedido_ItensQTD_FATURADO: TFloatField;
    cdsPedido_ItensQTD_RESTANTE: TFloatField;
    cdsPedido_ItensQTD_CANCELADO: TFloatField;
    cdsPedido_ItensVLR_DESCONTO: TFloatField;
    cdsPedido_ItensCANCELADO: TStringField;
    cdsPedido_ItensDTENTREGA: TDateField;
    cdsPedido_ItensFATURADO: TStringField;
    cdsPedido_ItensDTFATURADO: TDateField;
    cdsPedido_ItensCOD_PRODUTO_CLIENTE: TStringField;
    cdsPedido_ItensTIPO: TStringField;
    cdsPedido_ItensUNIDADE: TStringField;
    cdsPedido_ItensNUMOS: TStringField;
    cdsPedido_ItensPERC_DESCONTO: TFloatField;
    cdsPedido_ItensVLR_FRETE: TFloatField;
    cdsPedido_ItensBASE_ICMS: TFloatField;
    cdsPedido_ItensVLR_ICMS: TFloatField;
    cdsPedido_ItensBASE_ICMSTRANSF: TFloatField;
    cdsPedido_ItensPERC_TRANSF: TFloatField;
    cdsPedido_ItensVLR_TRANSF: TFloatField;
    cdsPedido_ItensVLR_IPI: TFloatField;
    cdsPedido_ItensBASE_ICMSSIMPLES: TFloatField;
    cdsPedido_ItensVLR_ICMSSIMPLES: TFloatField;
    cdsPedido_ItensPERC_ICMSSIMPLES: TFloatField;
    cdsPedido_ItensBASE_ICMSSUBST: TFloatField;
    cdsPedido_ItensVLR_ICMSSUBST: TFloatField;
    cdsPedido_ItensVLR_DESCONTORATEIO: TFloatField;
    cdsPedido_ItensID_CFOP: TIntegerField;
    cdsPedido_ItensID_CSTIPI: TIntegerField;
    cdsPedido_ItensID_CSTICMS: TIntegerField;
    cdsPedido_ItensPERC_ICMS: TFloatField;
    cdsPedido_ItensPERC_IPI: TFloatField;
    cdsPedido_ItensREFERENCIA: TStringField;
    cdsPedido_ItensNOMEPRODUTO: TStringField;
    cdsPedido_ItensOBS_COMPLEMENTAR: TStringField;
    cdsPedido_ItensCALCULARICMSSOBREIPI: TStringField;
    cdsPedido_ItensVLR_UNITARIO: TFloatField;
    cdsPedido_ItensID_CONFIG_CFOP: TIntegerField;
    cdsPedido_ItensVLR_TOTAL: TFloatField;
    cdsPedido_ItensQTD_AFATURAR: TFloatField;
    cdsPedido_ItensID_VARIACAO: TIntegerField;
    cdsPedido_ItensOBS: TMemoField;
    cdsPedido_ItensPERC_TRIBICMS: TFloatField;
    cdsPedido_ItensID_ATELIER: TIntegerField;
    cdsPedido_ItensVLR_UNITARIO_ATELIER: TFloatField;
    cdsPedido_ItensVLR_TOTAL_ATELIER: TFloatField;
    cdsPedido_ItensDT_ENVIO_ATELIER: TDateField;
    cdsPedido_ItensDT_RETORNO_ATELIER: TDateField;
    cdsPedido_ItensVLR_PAGTO_ATELIER: TFloatField;
    cdsPedido_ItensDT_PAGTO_ATELIER: TDateField;
    cdsPedido_ItensAPROVADO_ORC: TStringField;
    cdsPedido_ItensMOTIVO_NAO_APROV: TMemoField;
    cdsPedido_ItensDTAPROVADO_NAO: TDateField;
    cdsPedido_ItensID_ORCAMENTO: TIntegerField;
    cdsPedido_ItensITEM_ORCAMENTO: TIntegerField;
    cdsPedido_ItensQTD_LIBERADA: TFloatField;
    cdsPedido_ItensQTD_PRODUZIDA: TFloatField;
    cdsPedido_ItensNUM_LOTE: TIntegerField;
    cdsPedido_ItensNUM_TALAO: TStringField;
    cdsPedido_ItensGERAR_LOTE: TStringField;
    cdsPedido_ItensCARIMBO: TStringField;
    cdsPedido_ItensDTPRODUCAO: TDateField;
    cdsPedido_ItensID_NCM: TIntegerField;
    qClienteUSA_TRANSFICMS: TStringField;
    qCFOP: TSQLQuery;
    qCFOPID: TIntegerField;
    qCFOPCODCFOP: TStringField;
    qCFOPID_CSTICMS: TIntegerField;
    qCFOPID_CSTIPI: TIntegerField;
    qCFOPID_PIS: TIntegerField;
    qCFOPID_COFINS: TIntegerField;
    qCFOPID_CSTICMS_VAR: TIntegerField;
    qCFOPID_CSTIPI_VAR: TIntegerField;
    qCFOPID_PIS_VAR: TIntegerField;
    qCFOPID_COFINS_VAR: TIntegerField;
    qCFOPITEM: TIntegerField;
    qFilialID_PIS: TIntegerField;
    qFilialID_COFINS: TIntegerField;
    qFilialTIPO_PIS: TStringField;
    qFilialTIPO_COFINS: TStringField;
    qFilialPERC_PIS: TFloatField;
    qFilialPERC_COFINS: TFloatField;
    qFilialID_CSTICMS: TIntegerField;
    qFilialID_CSTIPI: TIntegerField;
    qClienteID_TAB_PRECO: TIntegerField;
    qVerifica_Pedido: TSQLQuery;
    qVerifica_PedidoID: TIntegerField;
    qVerifica_PedidoID_CLIENTE: TIntegerField;
    qVerifica_PedidoPEDIDO_CLIENTE: TStringField;
    qVerifica_PedidoNUM_PEDIDO: TIntegerField;
    sdsProduto_Forn: TSQLDataSet;
    cdsProduto_Forn: TClientDataSet;
    dspProduto_Forn: TDataSetProvider;
    dsProduto_Forn: TDataSource;
    sdsProduto_Forn_CNPJ: TSQLDataSet;
    cdsProduto_Forn_CNPJ: TClientDataSet;
    dspProduto_Forn_CNPJ: TDataSetProvider;
    dsProduto_Forn_CNPJ: TDataSource;
    sdsProduto_FornID: TIntegerField;
    sdsProduto_FornITEM: TIntegerField;
    sdsProduto_FornID_FORNECEDOR: TIntegerField;
    sdsProduto_FornNOME_MATERIAL_FORN: TStringField;
    sdsProduto_FornCOD_MATERIAL_FORN: TStringField;
    sdsProduto_FornTAMANHO: TStringField;
    sdsProduto_FornID_COR: TIntegerField;
    sdsProduto_FornCOD_BARRA: TStringField;
    sdsProduto_FornPRECO_CUSTO: TFloatField;
    sdsProduto_FornTAMANHO_CLIENTE: TStringField;
    sdsProduto_FornNOME_CLIENTE: TStringField;
    sdsProduto_FornCNPJ_CPF: TStringField;
    cdsProduto_FornID: TIntegerField;
    cdsProduto_FornITEM: TIntegerField;
    cdsProduto_FornID_FORNECEDOR: TIntegerField;
    cdsProduto_FornNOME_MATERIAL_FORN: TStringField;
    cdsProduto_FornCOD_MATERIAL_FORN: TStringField;
    cdsProduto_FornTAMANHO: TStringField;
    cdsProduto_FornID_COR: TIntegerField;
    cdsProduto_FornCOD_BARRA: TStringField;
    cdsProduto_FornPRECO_CUSTO: TFloatField;
    cdsProduto_FornTAMANHO_CLIENTE: TStringField;
    cdsProduto_FornNOME_CLIENTE: TStringField;
    cdsProduto_FornCNPJ_CPF: TStringField;
    sdsProduto_Forn_CNPJID: TIntegerField;
    sdsProduto_Forn_CNPJITEM: TIntegerField;
    sdsProduto_Forn_CNPJID_FORNECEDOR: TIntegerField;
    sdsProduto_Forn_CNPJNOME_MATERIAL_FORN: TStringField;
    sdsProduto_Forn_CNPJCOD_MATERIAL_FORN: TStringField;
    sdsProduto_Forn_CNPJTAMANHO: TStringField;
    sdsProduto_Forn_CNPJID_COR: TIntegerField;
    sdsProduto_Forn_CNPJCOD_BARRA: TStringField;
    sdsProduto_Forn_CNPJPRECO_CUSTO: TFloatField;
    sdsProduto_Forn_CNPJTAMANHO_CLIENTE: TStringField;
    sdsProduto_Forn_CNPJNOME_CLIENTE: TStringField;
    sdsProduto_Forn_CNPJCNPJ_CPF: TStringField;
    cdsProduto_Forn_CNPJID: TIntegerField;
    cdsProduto_Forn_CNPJITEM: TIntegerField;
    cdsProduto_Forn_CNPJID_FORNECEDOR: TIntegerField;
    cdsProduto_Forn_CNPJNOME_MATERIAL_FORN: TStringField;
    cdsProduto_Forn_CNPJCOD_MATERIAL_FORN: TStringField;
    cdsProduto_Forn_CNPJTAMANHO: TStringField;
    cdsProduto_Forn_CNPJID_COR: TIntegerField;
    cdsProduto_Forn_CNPJCOD_BARRA: TStringField;
    cdsProduto_Forn_CNPJPRECO_CUSTO: TFloatField;
    cdsProduto_Forn_CNPJTAMANHO_CLIENTE: TStringField;
    cdsProduto_Forn_CNPJNOME_CLIENTE: TStringField;
    cdsProduto_Forn_CNPJCNPJ_CPF: TStringField;
    qProduto_Tam: TSQLQuery;
    qProduto_TamID: TIntegerField;
    qProduto_TamTAMANHO: TStringField;
    qEDI_ConfigITEM_INI: TIntegerField;
    qEDI_ConfigITEM_TAM: TIntegerField;
    mAuxiliarItem_Cliente: TIntegerField;
    sdsProduto_FornREFERENCIA: TStringField;
    cdsProduto_FornREFERENCIA: TStringField;
    sdsProduto_Forn_CNPJREFERENCIA: TStringField;
    cdsProduto_Forn_CNPJREFERENCIA: TStringField;
    qClienteINSC_SUFRAMA: TStringField;
    mAuxiliarID_Cor: TIntegerField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralEND_ARQ_EDI: TStringField;
    sdsOperacao: TSQLDataSet;
    dspOperacao: TDataSetProvider;
    cdsOperacao: TClientDataSet;
    dsOperacao: TDataSource;
    sdsOperacaoID: TIntegerField;
    sdsOperacaoNOME: TStringField;
    cdsOperacaoID: TIntegerField;
    cdsOperacaoNOME: TStringField;
    qProduto_FornINATIVO: TStringField;
    qProduto_FornTIPO_REG: TStringField;
    qComb: TSQLQuery;
    qCombNOME: TStringField;
    sdsProduto_FornNOME_COMBINACAO: TStringField;
    cdsProduto_FornNOME_COMBINACAO: TStringField;
    mVer: TClientDataSet;
    mVerID_Pedido: TIntegerField;
    mVerNum_Pedido: TIntegerField;
    mVerItem: TIntegerField;
    mVerItem_Cliente: TIntegerField;
    mVerItem_EDI: TIntegerField;
    mVerNum_OS: TStringField;
    dsmVer: TDataSource;
    qVer: TSQLQuery;
    qVerID: TIntegerField;
    qVerNUM_PEDIDO: TIntegerField;
    qVerNUMOS: TStringField;
    qVerITEM: TIntegerField;
    qVerITEM_CLIENTE: TIntegerField;
    qVerID_PRODUTO: TIntegerField;
    qVerID_COR: TFMTBCDField;
    mVerID_Produto: TIntegerField;
    mVerID_Cor: TIntegerField;
    mVerCod_Produto_Cli: TStringField;
    qVerCOD_PRODUTO_CLIENTE: TStringField;
    mVerDiferenca: TStringField;
    mVerID_Produto_EDI: TIntegerField;
    mVerID_Cor_EDI: TIntegerField;
    qProduto_FornCOD_COR_FORN: TStringField;
    qProduto_FornNOME_COR_FORN: TStringField;
    sdsProduto_FornCOD_COR_FORN: TStringField;
    sdsProduto_FornNOME_COR_FORN: TStringField;
    cdsProduto_FornCOD_COR_FORN: TStringField;
    cdsProduto_FornNOME_COR_FORN: TStringField;
    sdsProduto_Forn_CNPJCOD_COR_FORN: TStringField;
    sdsProduto_Forn_CNPJNOME_COR_FORN: TStringField;
    cdsProduto_Forn_CNPJCOD_COR_FORN: TStringField;
    cdsProduto_Forn_CNPJNOME_COR_FORN: TStringField;
    mAuxiliarCodCorCli: TStringField;
    mAuxiliarNomeCorCli: TStringField;
    qEDI_ConfigCOD_COR_INI: TIntegerField;
    qEDI_ConfigCOD_COR_TAM: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mAuxiliarNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ctqProduto_Forn : String;
    procedure prc_Abre_Operacao;
  end;

var
  DMGerar_EDI: TDMGerar_EDI;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMGerar_EDI.DataModuleCreate(Sender: TObject);
begin
  qParametros.Close;
  qParametros.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  ctqProduto_Forn := qProduto_Forn.SQL.Text;
end;

procedure TDMGerar_EDI.mAuxiliarNewRecord(DataSet: TDataSet);
begin
  mAuxiliarErro.AsBoolean      := False;
  mAuxiliarCodCorCli.AsString  := '';
  mAuxiliarNomeCorCli.AsString := '';
end;

procedure TDMGerar_EDI.prc_Abre_Operacao;
begin
  cdsOperacao.Close;
  cdsOperacao.Open;
  cdsOperacao.First;
end;

end.

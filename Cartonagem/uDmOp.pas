unit uDmOp;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmOP = class(TDataModule)
    sdsOP: TSQLDataSet;
    dspOP: TDataSetProvider;
    cdsOP: TClientDataSet;
    dsOP: TDataSource;
    sdsOPID: TIntegerField;
    sdsOPDT_EMISSAO: TDateField;
    sdsOPDT_ENTREGA: TDateField;
    sdsOPACABADO_ID: TIntegerField;
    sdsOPQTD: TIntegerField;
    sdsOPOBS: TStringField;
    sdsOPCons: TSQLDataSet;
    dspOPCons: TDataSetProvider;
    cdsOPCons: TClientDataSet;
    dsOPCons: TDataSource;
    sdsAcabado: TSQLDataSet;
    dspAcabado: TDataSetProvider;
    cdsAcabado: TClientDataSet;
    dsAcabado: TDataSource;
    sdsOPConsID: TIntegerField;
    sdsOPConsDT_EMISSAO: TDateField;
    sdsOPConsDT_ENTREGA: TDateField;
    sdsOPConsACABADO_ID: TIntegerField;
    sdsOPConsQTD: TIntegerField;
    sdsOPConsOBS: TStringField;
    sdsOPConsACABADO: TStringField;
    sdsOPConsREFERENCIA: TStringField;
    cdsOPConsID: TIntegerField;
    cdsOPConsDT_EMISSAO: TDateField;
    cdsOPConsDT_ENTREGA: TDateField;
    cdsOPConsACABADO_ID: TIntegerField;
    cdsOPConsQTD: TIntegerField;
    cdsOPConsOBS: TStringField;
    cdsOPConsACABADO: TStringField;
    cdsOPConsREFERENCIA: TStringField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sdsClienteCODIGO: TIntegerField;
    sdsClienteNOME: TStringField;
    sdsClienteFANTASIA: TStringField;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    sdsOPCLIENTE_ID: TIntegerField;
    sdsOPConsCLIENTE_ID: TIntegerField;
    cdsOPConsCLIENTE_ID: TIntegerField;
    sdsOPConsNOME: TStringField;
    cdsOPConsNOME: TStringField;
    sdsOPACABADO: TStringField;
    sdsOPREFERENCIA: TStringField;
    sdsOPCLIENTE: TStringField;
    dsmOP: TDataSource;
    cdsOPID: TIntegerField;
    cdsOPDT_EMISSAO: TDateField;
    cdsOPDT_ENTREGA: TDateField;
    cdsOPACABADO_ID: TIntegerField;
    cdsOPQTD: TIntegerField;
    cdsOPOBS: TStringField;
    cdsOPCLIENTE_ID: TIntegerField;
    cdsOPACABADO: TStringField;
    cdsOPREFERENCIA: TStringField;
    cdsOPCLIENTE: TStringField;
    sdsOPOC: TStringField;
    cdsOPOC: TStringField;
    dsmAcabado: TDataSource;
    sdsFaca: TSQLDataSet;
    sdsFichaTecnica: TSQLDataSet;
    sdsAcabadoIDP: TIntegerField;
    sdsAcabadoREFERENCIA: TStringField;
    sdsAcabadoNOME: TStringField;
    sdsAcabadoINATIVO: TStringField;
    sdsAcabadoID: TIntegerField;
    sdsAcabadoFACA_ID: TIntegerField;
    sdsAcabadoFICHA_TEC_ID: TIntegerField;
    sdsAcabadoPASTA_ID: TIntegerField;
    cdsAcabadoIDP: TIntegerField;
    cdsAcabadoREFERENCIA: TStringField;
    cdsAcabadoNOME: TStringField;
    cdsAcabadoINATIVO: TStringField;
    cdsAcabadoID: TIntegerField;
    cdsAcabadoFACA_ID: TIntegerField;
    cdsAcabadoFICHA_TEC_ID: TIntegerField;
    cdsAcabadoPASTA_ID: TIntegerField;
    cdsAcabadosdsFaca: TDataSetField;
    cdsAcabadosdsFichaTecnica: TDataSetField;
    cdsFaca: TClientDataSet;
    cdsFichaTecnica: TClientDataSet;
    dsFaca: TDataSource;
    dsFichaTecnica: TDataSource;
    cdsFacaID: TIntegerField;
    cdsFacaNOME: TStringField;
    cdsFacaSITUACAO: TStringField;
    cdsFacaTIPO: TStringField;
    cdsFacaFD_COMPR: TFMTBCDField;
    cdsFacaFD_LARGURA: TFMTBCDField;
    cdsFacaFD_ALTURA: TFMTBCDField;
    cdsFacaFD_ABA_INT_CAB: TFMTBCDField;
    cdsFacaFD_ABA_INT_LAT: TFMTBCDField;
    cdsFacaTP_ABA_EXT_CAB: TFMTBCDField;
    cdsFacaTP_ABA_INT_CAB: TFMTBCDField;
    cdsFacaTP_ABA_EXT_LAT: TFMTBCDField;
    cdsFacaTP_ABA_INT_LAT: TFMTBCDField;
    cdsFacaSP_COMPR: TFMTBCDField;
    cdsFacaSP_LARGURA: TFMTBCDField;
    cdsFacaSP_ALTURA: TFMTBCDField;
    cdsFacaTP_LARGURA: TFMTBCDField;
    cdsFacaTP_COMPR: TFMTBCDField;
    cdsFacaTP_ALTURA: TFMTBCDField;
    cdsFacaFD_DIMENSAO1: TFMTBCDField;
    cdsFacaFD_DIMENSAO2: TFMTBCDField;
    cdsFacaTP_DIMENSAO1: TFMTBCDField;
    cdsFacaTP_DIMENSAO2: TFMTBCDField;
    cdsFacaTP_TIPO_MAT: TStringField;
    cdsFacaSP_ABA_INT_CAB: TFMTBCDField;
    cdsFacaSP_ABA_INT_LAT: TFMTBCDField;
    cdsFacaFD_TIPO_MAT: TStringField;
    cdsFacaSP_TIPO_MAT: TStringField;
    cdsFacaSP_DIMENSAO1: TFMTBCDField;
    cdsFacaSP_DIMENSAO2: TFMTBCDField;
    cdsFacaFACA_FD: TIntegerField;
    cdsFacaFACA_TP: TIntegerField;
    cdsFacaFACA_SP: TIntegerField;
    cdsFacaFACA_ID: TIntegerField;
    cdsFacaOBS: TMemoField;
    cdsFacaFD_COPIAS_C: TSmallintField;
    cdsFacaTP_COPIAS_C: TSmallintField;
    cdsFacaSP_COPIAS_C: TSmallintField;
    cdsFacaFD_INT_L: TFMTBCDField;
    cdsFacaFD_INT_C: TFMTBCDField;
    cdsFacaTP_INT_L: TFMTBCDField;
    cdsFacaTP_INT_C: TFMTBCDField;
    cdsFacaSP_INT_L: TFMTBCDField;
    cdsFacaSP_INT_C: TFMTBCDField;
    cdsFacaFD_COPIAS_L: TSmallintField;
    cdsFacaTP_COPIAS_L: TSmallintField;
    cdsFacaSP_COPIAS_L: TSmallintField;
    cdsFacaFD_FIO_C: TFMTBCDField;
    cdsFacaFD_FIO_L: TFMTBCDField;
    cdsFacaTP_FIO_C: TFMTBCDField;
    cdsFacaTP_FIO_L: TFMTBCDField;
    cdsFacaSP_FIO_C: TFMTBCDField;
    cdsFacaSP_FIO_L: TFMTBCDField;
    cdsFacaARQUIVO_FD: TStringField;
    cdsFacaARQUIVO_TP: TStringField;
    cdsFacaARQUIVO_SP: TStringField;
    cdsFacaENDERECO_FD: TStringField;
    cdsFacaENDERECO_TP: TStringField;
    cdsFacaENDERECO_SP: TStringField;
    cdsFacaFECHAMENTO_FD: TStringField;
    cdsFacaFECHAMENTO_CT: TStringField;
    cdsFacaFECHAMENTO_TP: TStringField;
    cdsFacaFECHAMENTO_SP: TStringField;
    cdsFacaINATIVO: TStringField;
    cdsFichaTecnicaID: TIntegerField;
    cdsFichaTecnicaNOME: TStringField;
    cdsFichaTecnicaSITUACAO: TStringField;
    cdsFichaTecnicaTIPO: TStringField;
    cdsFichaTecnicaINATIVO: TStringField;
    sdsAcabadoProcessoFD: TSQLDataSet;
    cdsAcabadoProcessoFD: TClientDataSet;
    dsAcabadoProcessoFD: TDataSource;
    sdsAcabadoProcessoFDID: TIntegerField;
    sdsAcabadoProcessoFDPOSICAO: TStringField;
    sdsAcabadoProcessoFDITEM: TIntegerField;
    sdsAcabadoProcessoFDDESCRICAO: TStringField;
    cdsAcabadoProcessoFDID: TIntegerField;
    cdsAcabadoProcessoFDPOSICAO: TStringField;
    cdsAcabadoProcessoFDITEM: TIntegerField;
    cdsAcabadoProcessoFDDESCRICAO: TStringField;
    sdsFacaID: TIntegerField;
    sdsFacaNOME: TStringField;
    sdsFacaSITUACAO: TStringField;
    sdsFacaTIPO: TStringField;
    sdsFacaFD_COMPR: TFMTBCDField;
    sdsFacaFD_LARGURA: TFMTBCDField;
    sdsFacaFD_ALTURA: TFMTBCDField;
    sdsFacaFD_ABA_INT_CAB: TFMTBCDField;
    sdsFacaFD_ABA_INT_LAT: TFMTBCDField;
    sdsFacaTP_ABA_EXT_CAB: TFMTBCDField;
    sdsFacaTP_ABA_INT_CAB: TFMTBCDField;
    sdsFacaTP_ABA_EXT_LAT: TFMTBCDField;
    sdsFacaTP_ABA_INT_LAT: TFMTBCDField;
    sdsFacaSP_COMPR: TFMTBCDField;
    sdsFacaSP_LARGURA: TFMTBCDField;
    sdsFacaSP_ALTURA: TFMTBCDField;
    sdsFacaTP_LARGURA: TFMTBCDField;
    sdsFacaTP_COMPR: TFMTBCDField;
    sdsFacaTP_ALTURA: TFMTBCDField;
    sdsFacaFD_DIMENSAO1: TFMTBCDField;
    sdsFacaFD_DIMENSAO2: TFMTBCDField;
    sdsFacaTP_DIMENSAO1: TFMTBCDField;
    sdsFacaTP_DIMENSAO2: TFMTBCDField;
    sdsFacaTP_TIPO_MAT: TStringField;
    sdsFacaSP_ABA_INT_CAB: TFMTBCDField;
    sdsFacaSP_ABA_INT_LAT: TFMTBCDField;
    sdsFacaFD_TIPO_MAT: TStringField;
    sdsFacaSP_TIPO_MAT: TStringField;
    sdsFacaSP_DIMENSAO1: TFMTBCDField;
    sdsFacaSP_DIMENSAO2: TFMTBCDField;
    sdsFacaFACA_FD: TIntegerField;
    sdsFacaFACA_TP: TIntegerField;
    sdsFacaFACA_SP: TIntegerField;
    sdsFacaFACA_ID: TIntegerField;
    sdsFacaOBS: TMemoField;
    sdsFacaFD_COPIAS_C: TSmallintField;
    sdsFacaTP_COPIAS_C: TSmallintField;
    sdsFacaSP_COPIAS_C: TSmallintField;
    sdsFacaFD_INT_L: TFMTBCDField;
    sdsFacaFD_INT_C: TFMTBCDField;
    sdsFacaTP_INT_L: TFMTBCDField;
    sdsFacaTP_INT_C: TFMTBCDField;
    sdsFacaSP_INT_L: TFMTBCDField;
    sdsFacaSP_INT_C: TFMTBCDField;
    sdsFacaFD_COPIAS_L: TSmallintField;
    sdsFacaTP_COPIAS_L: TSmallintField;
    sdsFacaSP_COPIAS_L: TSmallintField;
    sdsFacaFD_FIO_C: TFMTBCDField;
    sdsFacaFD_FIO_L: TFMTBCDField;
    sdsFacaTP_FIO_C: TFMTBCDField;
    sdsFacaTP_FIO_L: TFMTBCDField;
    sdsFacaSP_FIO_C: TFMTBCDField;
    sdsFacaSP_FIO_L: TFMTBCDField;
    sdsFacaARQUIVO_FD: TStringField;
    sdsFacaARQUIVO_TP: TStringField;
    sdsFacaARQUIVO_SP: TStringField;
    sdsFacaENDERECO_FD: TStringField;
    sdsFacaENDERECO_TP: TStringField;
    sdsFacaENDERECO_SP: TStringField;
    sdsFacaFECHAMENTO_FD: TStringField;
    sdsFacaFECHAMENTO_CT: TStringField;
    sdsFacaFECHAMENTO_TP: TStringField;
    sdsFacaFECHAMENTO_SP: TStringField;
    sdsFacaINATIVO: TStringField;
    sdsFichaTecnicaID: TIntegerField;
    sdsFichaTecnicaNOME: TStringField;
    sdsFichaTecnicaSITUACAO: TStringField;
    sdsFichaTecnicaTIPO: TStringField;
    sdsFichaTecnicaINATIVO: TStringField;
    sdsFTCorFD: TSQLDataSet;
    cdsFTCorFD: TClientDataSet;
    dsFTCorFD: TDataSource;
    sdsFTCorFDID: TIntegerField;
    sdsFTCorFDITEM: TIntegerField;
    sdsFTCorFDPOSICAO: TStringField;
    sdsFTCorFDFRENTEVERSO: TStringField;
    sdsFTCorFDCOR_ID: TIntegerField;
    sdsFTCorFDMATERIAL_ID: TIntegerField;
    sdsFTCorFDCONSUMO: TFloatField;
    sdsFTCorFDAREA_PERCENT: TFloatField;
    cdsFTCorFDID: TIntegerField;
    cdsFTCorFDITEM: TIntegerField;
    cdsFTCorFDPOSICAO: TStringField;
    cdsFTCorFDFRENTEVERSO: TStringField;
    cdsFTCorFDCOR_ID: TIntegerField;
    cdsFTCorFDMATERIAL_ID: TIntegerField;
    cdsFTCorFDCONSUMO: TFloatField;
    cdsFTCorFDAREA_PERCENT: TFloatField;
    sdsFichaTecnicaFD: TSQLDataSet;
    cdsFichaTecnicaFD: TClientDataSet;
    dsFichaTecnicaFD: TDataSource;
    cdsAcabadosdsFichaTecnicaFD: TDataSetField;
    sdsFichaTecnicaFDID: TIntegerField;
    sdsFichaTecnicaFDMATERIAL1: TIntegerField;
    sdsFichaTecnicaFDMATERIAL2: TIntegerField;
    sdsFichaTecnicaFDMATERIAL3: TIntegerField;
    sdsFichaTecnicaFDREVEST_FT: TStringField;
    sdsFichaTecnicaFDREVEST_FT_MAT: TIntegerField;
    sdsFichaTecnicaFDREVEST_FT_BRIL: TStringField;
    sdsFichaTecnicaFDREVEST_FT_ATRITO: TStringField;
    sdsFichaTecnicaFDREVEST_FT_LUZ: TStringField;
    sdsFichaTecnicaFDREVEST_VS: TStringField;
    sdsFichaTecnicaFDREVEST_VS_MAT: TIntegerField;
    sdsFichaTecnicaFDREVEST_VS_BRIL: TStringField;
    sdsFichaTecnicaFDREVEST_VS_ATRITO: TStringField;
    sdsFichaTecnicaFDREVEST_VS_LUZ: TStringField;
    sdsFichaTecnicaFDAR: TStringField;
    sdsFichaTecnicaFDAR_COMPR: TFMTBCDField;
    sdsFichaTecnicaFDAR_LARG: TFMTBCDField;
    sdsFichaTecnicaFDBR: TStringField;
    sdsFichaTecnicaFDBR_COMPR: TFMTBCDField;
    sdsFichaTecnicaFDBR_LARG: TFMTBCDField;
    sdsFichaTecnicaFDHS: TStringField;
    sdsFichaTecnicaFDHS_COMPR: TFMTBCDField;
    sdsFichaTecnicaFDHS_LARG: TFMTBCDField;
    sdsFichaTecnicaFDVISOR: TStringField;
    sdsFichaTecnicaFDVISOR_COMPR: TFMTBCDField;
    sdsFichaTecnicaFDVISOR_LARG: TFMTBCDField;
    sdsFichaTecnicaFDVERNIZUV: TStringField;
    sdsFichaTecnicaFDVERNIZUV_COMPR: TFMTBCDField;
    sdsFichaTecnicaFDVERNIZUV_LARG: TFMTBCDField;
    sdsFichaTecnicaFDPICOTE: TStringField;
    sdsFichaTecnicaFDPICOTE_TIPO: TStringField;
    sdsFichaTecnicaFDPASSAFITA: TStringField;
    sdsFichaTecnicaFDPASSAFITA_TIPO: TStringField;
    sdsFichaTecnicaFDILHOS: TStringField;
    sdsFichaTecnicaFDALCA: TStringField;
    sdsFichaTecnicaFDVERNIZUV_TOTAL: TStringField;
    sdsFichaTecnicaFDPINCA: TStringField;
    sdsFichaTecnicaFDTRAVA: TStringField;
    sdsFichaTecnicaFDDISPLAY: TStringField;
    sdsFichaTecnicaFDPINCA_TAM: TFMTBCDField;
    sdsFichaTecnicaFDGRUPO1: TIntegerField;
    sdsFichaTecnicaFDSUBGRUPO1: TIntegerField;
    sdsFichaTecnicaFDGRUPO2: TIntegerField;
    sdsFichaTecnicaFDSUBGRUPO2: TIntegerField;
    sdsFichaTecnicaFDGRUPO3: TIntegerField;
    sdsFichaTecnicaFDSUBGRUPO3: TIntegerField;
    sdsFichaTecnicaFDOBS: TStringField;
    sdsFichaTecnicaFDENDERECO: TStringField;
    sdsFichaTecnicaFDARQUIVO_FD: TStringField;
    sdsFichaTecnicaFDBRANCO: TStringField;
    sdsFichaTecnicaFDAREA_IMPRESSAO: TFMTBCDField;
    sdsFichaTecnicaFDFURO: TStringField;
    sdsFichaTecnicaFDFURO_LADO: TStringField;
    cdsFichaTecnicaFDID: TIntegerField;
    cdsFichaTecnicaFDMATERIAL1: TIntegerField;
    cdsFichaTecnicaFDMATERIAL2: TIntegerField;
    cdsFichaTecnicaFDMATERIAL3: TIntegerField;
    cdsFichaTecnicaFDREVEST_FT: TStringField;
    cdsFichaTecnicaFDREVEST_FT_MAT: TIntegerField;
    cdsFichaTecnicaFDREVEST_FT_BRIL: TStringField;
    cdsFichaTecnicaFDREVEST_FT_ATRITO: TStringField;
    cdsFichaTecnicaFDREVEST_FT_LUZ: TStringField;
    cdsFichaTecnicaFDREVEST_VS: TStringField;
    cdsFichaTecnicaFDREVEST_VS_MAT: TIntegerField;
    cdsFichaTecnicaFDREVEST_VS_BRIL: TStringField;
    cdsFichaTecnicaFDREVEST_VS_ATRITO: TStringField;
    cdsFichaTecnicaFDREVEST_VS_LUZ: TStringField;
    cdsFichaTecnicaFDAR: TStringField;
    cdsFichaTecnicaFDAR_COMPR: TFMTBCDField;
    cdsFichaTecnicaFDAR_LARG: TFMTBCDField;
    cdsFichaTecnicaFDBR: TStringField;
    cdsFichaTecnicaFDBR_COMPR: TFMTBCDField;
    cdsFichaTecnicaFDBR_LARG: TFMTBCDField;
    cdsFichaTecnicaFDHS: TStringField;
    cdsFichaTecnicaFDHS_COMPR: TFMTBCDField;
    cdsFichaTecnicaFDHS_LARG: TFMTBCDField;
    cdsFichaTecnicaFDVISOR: TStringField;
    cdsFichaTecnicaFDVISOR_COMPR: TFMTBCDField;
    cdsFichaTecnicaFDVISOR_LARG: TFMTBCDField;
    cdsFichaTecnicaFDVERNIZUV: TStringField;
    cdsFichaTecnicaFDVERNIZUV_COMPR: TFMTBCDField;
    cdsFichaTecnicaFDVERNIZUV_LARG: TFMTBCDField;
    cdsFichaTecnicaFDPICOTE: TStringField;
    cdsFichaTecnicaFDPICOTE_TIPO: TStringField;
    cdsFichaTecnicaFDPASSAFITA: TStringField;
    cdsFichaTecnicaFDPASSAFITA_TIPO: TStringField;
    cdsFichaTecnicaFDILHOS: TStringField;
    cdsFichaTecnicaFDALCA: TStringField;
    cdsFichaTecnicaFDVERNIZUV_TOTAL: TStringField;
    cdsFichaTecnicaFDPINCA: TStringField;
    cdsFichaTecnicaFDTRAVA: TStringField;
    cdsFichaTecnicaFDDISPLAY: TStringField;
    cdsFichaTecnicaFDPINCA_TAM: TFMTBCDField;
    cdsFichaTecnicaFDGRUPO1: TIntegerField;
    cdsFichaTecnicaFDSUBGRUPO1: TIntegerField;
    cdsFichaTecnicaFDGRUPO2: TIntegerField;
    cdsFichaTecnicaFDSUBGRUPO2: TIntegerField;
    cdsFichaTecnicaFDGRUPO3: TIntegerField;
    cdsFichaTecnicaFDSUBGRUPO3: TIntegerField;
    cdsFichaTecnicaFDOBS: TStringField;
    cdsFichaTecnicaFDENDERECO: TStringField;
    cdsFichaTecnicaFDARQUIVO_FD: TStringField;
    cdsFichaTecnicaFDBRANCO: TStringField;
    cdsFichaTecnicaFDAREA_IMPRESSAO: TFMTBCDField;
    cdsFichaTecnicaFDFURO: TStringField;
    cdsFichaTecnicaFDFURO_LADO: TStringField;
    sdsFichaTecnicaTP: TSQLDataSet;
    cdsFichaTecnicaTP: TClientDataSet;
    dsFichaTecnicaTP: TDataSource;
    sdsFichaTecnicaSP: TSQLDataSet;
    cdsFichaTecnicaSP: TClientDataSet;
    dsFichaTecnicaSP: TDataSource;
    cdsAcabadosdsFichaTecnicaSP: TDataSetField;
    cdsAcabadosdsFichaTecnicaTP: TDataSetField;
    sdsFichaTecnicaTPID: TIntegerField;
    sdsFichaTecnicaTPMATERIAL1: TIntegerField;
    sdsFichaTecnicaTPMATERIAL2: TIntegerField;
    sdsFichaTecnicaTPMATERIAL3: TIntegerField;
    sdsFichaTecnicaTPREVEST_FT: TStringField;
    sdsFichaTecnicaTPREVEST_FT_MAT: TIntegerField;
    sdsFichaTecnicaTPREVEST_FT_BRIL: TStringField;
    sdsFichaTecnicaTPREVEST_FT_ATRITO: TStringField;
    sdsFichaTecnicaTPREVEST_FT_LUZ: TStringField;
    sdsFichaTecnicaTPREVEST_VS: TStringField;
    sdsFichaTecnicaTPREVEST_VS_MAT: TIntegerField;
    sdsFichaTecnicaTPREVEST_VS_BRIL: TStringField;
    sdsFichaTecnicaTPREVEST_VS_ATRITO: TStringField;
    sdsFichaTecnicaTPREVEST_VS_LUZ: TStringField;
    sdsFichaTecnicaTPAR: TStringField;
    sdsFichaTecnicaTPAR_COMPR: TFMTBCDField;
    sdsFichaTecnicaTPAR_LARG: TFMTBCDField;
    sdsFichaTecnicaTPAR_LOCAL: TStringField;
    sdsFichaTecnicaTPBR: TStringField;
    sdsFichaTecnicaTPBR_COMPR: TFMTBCDField;
    sdsFichaTecnicaTPBR_LARG: TFMTBCDField;
    sdsFichaTecnicaTPBR_LOCAL: TStringField;
    sdsFichaTecnicaTPHS: TStringField;
    sdsFichaTecnicaTPHS_COMPR: TFMTBCDField;
    sdsFichaTecnicaTPHS_LARG: TFMTBCDField;
    sdsFichaTecnicaTPHS_LOCAL: TStringField;
    sdsFichaTecnicaTPVISOR: TStringField;
    sdsFichaTecnicaTPVISOR_COMPR: TFMTBCDField;
    sdsFichaTecnicaTPVISOR_LARG: TFMTBCDField;
    sdsFichaTecnicaTPVISOR_LOCAL: TStringField;
    sdsFichaTecnicaTPVERNIZUV: TStringField;
    sdsFichaTecnicaTPVERNIZUV_COMPR: TFMTBCDField;
    sdsFichaTecnicaTPVERNIZUV_LARG: TFMTBCDField;
    sdsFichaTecnicaTPVERNIZUV_LOCAL: TStringField;
    sdsFichaTecnicaTPPICOTE: TStringField;
    sdsFichaTecnicaTPPICOTE_LOCAL: TStringField;
    sdsFichaTecnicaTPPICOTE_TIPO: TStringField;
    sdsFichaTecnicaTPPASSAFITA: TStringField;
    sdsFichaTecnicaTPPASSAFITA_LOCAL: TStringField;
    sdsFichaTecnicaTPPASSAFITA_TIPO: TStringField;
    sdsFichaTecnicaTPILHOS: TStringField;
    sdsFichaTecnicaTPILHOS_LOCAL: TStringField;
    sdsFichaTecnicaTPALCA: TStringField;
    sdsFichaTecnicaTPALCA_LOCAL: TStringField;
    sdsFichaTecnicaTPVERNIZUV_TOTAL: TStringField;
    sdsFichaTecnicaTPPINCA: TStringField;
    sdsFichaTecnicaTPPINCA_TAM: TFMTBCDField;
    sdsFichaTecnicaTPGRUPO1: TIntegerField;
    sdsFichaTecnicaTPSUBGRUPO1: TIntegerField;
    sdsFichaTecnicaTPGRUPO2: TIntegerField;
    sdsFichaTecnicaTPSUBGRUPO2: TIntegerField;
    sdsFichaTecnicaTPGRUPO3: TIntegerField;
    sdsFichaTecnicaTPSUBGRUPO3: TIntegerField;
    sdsFichaTecnicaTPOBS: TStringField;
    sdsFichaTecnicaTPENDERECO: TStringField;
    sdsFichaTecnicaTPARQUIVO_TP: TStringField;
    sdsFichaTecnicaTPBRANCO: TStringField;
    sdsFichaTecnicaTPAREA_IMPRESSAO: TFMTBCDField;
    sdsFichaTecnicaSPID: TIntegerField;
    sdsFichaTecnicaSPMATERIAL1: TIntegerField;
    sdsFichaTecnicaSPMATERIAL2: TIntegerField;
    sdsFichaTecnicaSPMATERIAL3: TIntegerField;
    sdsFichaTecnicaSPREVEST_FT: TStringField;
    sdsFichaTecnicaSPREVEST_FT_MAT: TIntegerField;
    sdsFichaTecnicaSPREVEST_FT_BRIL: TStringField;
    sdsFichaTecnicaSPREVEST_FT_ATRITO: TStringField;
    sdsFichaTecnicaSPREVEST_FT_LUZ: TStringField;
    sdsFichaTecnicaSPREVEST_VS: TStringField;
    sdsFichaTecnicaSPREVEST_VS_MAT: TIntegerField;
    sdsFichaTecnicaSPREVEST_VS_BRIL: TStringField;
    sdsFichaTecnicaSPREVEST_VS_ATRITO: TStringField;
    sdsFichaTecnicaSPREVEST_VS_LUZ: TStringField;
    sdsFichaTecnicaSPAR: TStringField;
    sdsFichaTecnicaSPAR_COMPR: TFMTBCDField;
    sdsFichaTecnicaSPAR_LARG: TFMTBCDField;
    sdsFichaTecnicaSPAR_LOCAL: TStringField;
    sdsFichaTecnicaSPBR: TStringField;
    sdsFichaTecnicaSPBR_COMPR: TFMTBCDField;
    sdsFichaTecnicaSPBR_LARG: TFMTBCDField;
    sdsFichaTecnicaSPBR_LOCAL: TStringField;
    sdsFichaTecnicaSPHS: TStringField;
    sdsFichaTecnicaSPHS_COMPR: TFMTBCDField;
    sdsFichaTecnicaSPHS_LARG: TFMTBCDField;
    sdsFichaTecnicaSPHS_LOCAL: TStringField;
    sdsFichaTecnicaSPVISOR: TStringField;
    sdsFichaTecnicaSPVISOR_COMPR: TFMTBCDField;
    sdsFichaTecnicaSPVISOR_LARG: TFMTBCDField;
    sdsFichaTecnicaSPVISOR_LOCAL: TStringField;
    sdsFichaTecnicaSPVERNIZUV: TStringField;
    sdsFichaTecnicaSPVERNIZUV_COMPR: TFMTBCDField;
    sdsFichaTecnicaSPVERNIZUV_LARG: TFMTBCDField;
    sdsFichaTecnicaSPVERNIZUV_LOCAL: TStringField;
    sdsFichaTecnicaSPPICOTE: TStringField;
    sdsFichaTecnicaSPPICOTE_LOCAL: TStringField;
    sdsFichaTecnicaSPPICOTE_TIPO: TStringField;
    sdsFichaTecnicaSPPASSAFITA: TStringField;
    sdsFichaTecnicaSPPASSAFITA_LOCAL: TStringField;
    sdsFichaTecnicaSPPASSAFITA_TIPO: TStringField;
    sdsFichaTecnicaSPILHOS: TStringField;
    sdsFichaTecnicaSPILHOS_LOCAL: TStringField;
    sdsFichaTecnicaSPALCA: TStringField;
    sdsFichaTecnicaSPALCA_LOCAL: TStringField;
    sdsFichaTecnicaSPVERNIZUV_TOTAL: TStringField;
    sdsFichaTecnicaSPPINCA: TStringField;
    sdsFichaTecnicaSPPINCA_TAM: TFMTBCDField;
    sdsFichaTecnicaSPGRUPO1: TIntegerField;
    sdsFichaTecnicaSPSUBGRUPO1: TIntegerField;
    sdsFichaTecnicaSPGRUPO2: TIntegerField;
    sdsFichaTecnicaSPSUBGRUPO2: TIntegerField;
    sdsFichaTecnicaSPGRUPO3: TIntegerField;
    sdsFichaTecnicaSPSUBGRUPO3: TIntegerField;
    sdsFichaTecnicaSPOBS: TStringField;
    sdsFichaTecnicaSPENDERECO: TStringField;
    sdsFichaTecnicaSPARQUIVO_SP: TStringField;
    sdsFichaTecnicaSPBRANCO: TStringField;
    sdsFichaTecnicaSPAREA_IMPRESSAO: TFMTBCDField;
    cdsFichaTecnicaTPID: TIntegerField;
    cdsFichaTecnicaTPMATERIAL1: TIntegerField;
    cdsFichaTecnicaTPMATERIAL2: TIntegerField;
    cdsFichaTecnicaTPMATERIAL3: TIntegerField;
    cdsFichaTecnicaTPREVEST_FT: TStringField;
    cdsFichaTecnicaTPREVEST_FT_MAT: TIntegerField;
    cdsFichaTecnicaTPREVEST_FT_BRIL: TStringField;
    cdsFichaTecnicaTPREVEST_FT_ATRITO: TStringField;
    cdsFichaTecnicaTPREVEST_FT_LUZ: TStringField;
    cdsFichaTecnicaTPREVEST_VS: TStringField;
    cdsFichaTecnicaTPREVEST_VS_MAT: TIntegerField;
    cdsFichaTecnicaTPREVEST_VS_BRIL: TStringField;
    cdsFichaTecnicaTPREVEST_VS_ATRITO: TStringField;
    cdsFichaTecnicaTPREVEST_VS_LUZ: TStringField;
    cdsFichaTecnicaTPAR: TStringField;
    cdsFichaTecnicaTPAR_COMPR: TFMTBCDField;
    cdsFichaTecnicaTPAR_LARG: TFMTBCDField;
    cdsFichaTecnicaTPAR_LOCAL: TStringField;
    cdsFichaTecnicaTPBR: TStringField;
    cdsFichaTecnicaTPBR_COMPR: TFMTBCDField;
    cdsFichaTecnicaTPBR_LARG: TFMTBCDField;
    cdsFichaTecnicaTPBR_LOCAL: TStringField;
    cdsFichaTecnicaTPHS: TStringField;
    cdsFichaTecnicaTPHS_COMPR: TFMTBCDField;
    cdsFichaTecnicaTPHS_LARG: TFMTBCDField;
    cdsFichaTecnicaTPHS_LOCAL: TStringField;
    cdsFichaTecnicaTPVISOR: TStringField;
    cdsFichaTecnicaTPVISOR_COMPR: TFMTBCDField;
    cdsFichaTecnicaTPVISOR_LARG: TFMTBCDField;
    cdsFichaTecnicaTPVISOR_LOCAL: TStringField;
    cdsFichaTecnicaTPVERNIZUV: TStringField;
    cdsFichaTecnicaTPVERNIZUV_COMPR: TFMTBCDField;
    cdsFichaTecnicaTPVERNIZUV_LARG: TFMTBCDField;
    cdsFichaTecnicaTPVERNIZUV_LOCAL: TStringField;
    cdsFichaTecnicaTPPICOTE: TStringField;
    cdsFichaTecnicaTPPICOTE_LOCAL: TStringField;
    cdsFichaTecnicaTPPICOTE_TIPO: TStringField;
    cdsFichaTecnicaTPPASSAFITA: TStringField;
    cdsFichaTecnicaTPPASSAFITA_LOCAL: TStringField;
    cdsFichaTecnicaTPPASSAFITA_TIPO: TStringField;
    cdsFichaTecnicaTPILHOS: TStringField;
    cdsFichaTecnicaTPILHOS_LOCAL: TStringField;
    cdsFichaTecnicaTPALCA: TStringField;
    cdsFichaTecnicaTPALCA_LOCAL: TStringField;
    cdsFichaTecnicaTPVERNIZUV_TOTAL: TStringField;
    cdsFichaTecnicaTPPINCA: TStringField;
    cdsFichaTecnicaTPPINCA_TAM: TFMTBCDField;
    cdsFichaTecnicaTPGRUPO1: TIntegerField;
    cdsFichaTecnicaTPSUBGRUPO1: TIntegerField;
    cdsFichaTecnicaTPGRUPO2: TIntegerField;
    cdsFichaTecnicaTPSUBGRUPO2: TIntegerField;
    cdsFichaTecnicaTPGRUPO3: TIntegerField;
    cdsFichaTecnicaTPSUBGRUPO3: TIntegerField;
    cdsFichaTecnicaTPOBS: TStringField;
    cdsFichaTecnicaTPENDERECO: TStringField;
    cdsFichaTecnicaTPARQUIVO_TP: TStringField;
    cdsFichaTecnicaTPBRANCO: TStringField;
    cdsFichaTecnicaTPAREA_IMPRESSAO: TFMTBCDField;
    cdsFacaclFechamentoCT: TStringField;
    cdsFacaclFechamentoFD: TStringField;
    cdsFacaclMaterialFD: TStringField;
    sdsAcabadoCons: TSQLDataSet;
    dspAcabadoCons: TDataSetProvider;
    cdsAcabadoCons: TClientDataSet;
    dsAcabadoCons: TDataSource;
    sdsAcabadoConsIDP: TIntegerField;
    sdsAcabadoConsREFERENCIA: TStringField;
    sdsAcabadoConsNOME: TStringField;
    sdsAcabadoConsINATIVO: TStringField;
    cdsAcabadoConsIDP: TIntegerField;
    cdsAcabadoConsREFERENCIA: TStringField;
    cdsAcabadoConsNOME: TStringField;
    cdsAcabadoConsINATIVO: TStringField;
    cdsFichaTecnicaFDclRevestFT: TStringField;
    cdsFichaTecnicaFDclRevestVS: TStringField;
    cdsFichaTecnicaFDclRevestFTBrilho: TStringField;
    cdsFichaTecnicaFDclRevestVSBrilho: TStringField;
    cdsFichaTecnicaSPID: TIntegerField;
    cdsFichaTecnicaSPMATERIAL1: TIntegerField;
    cdsFichaTecnicaSPMATERIAL2: TIntegerField;
    cdsFichaTecnicaSPMATERIAL3: TIntegerField;
    cdsFichaTecnicaSPREVEST_FT: TStringField;
    cdsFichaTecnicaSPREVEST_FT_MAT: TIntegerField;
    cdsFichaTecnicaSPREVEST_FT_BRIL: TStringField;
    cdsFichaTecnicaSPREVEST_FT_ATRITO: TStringField;
    cdsFichaTecnicaSPREVEST_FT_LUZ: TStringField;
    cdsFichaTecnicaSPREVEST_VS: TStringField;
    cdsFichaTecnicaSPREVEST_VS_MAT: TIntegerField;
    cdsFichaTecnicaSPREVEST_VS_BRIL: TStringField;
    cdsFichaTecnicaSPREVEST_VS_ATRITO: TStringField;
    cdsFichaTecnicaSPREVEST_VS_LUZ: TStringField;
    cdsFichaTecnicaSPAR: TStringField;
    cdsFichaTecnicaSPAR_COMPR: TFMTBCDField;
    cdsFichaTecnicaSPAR_LARG: TFMTBCDField;
    cdsFichaTecnicaSPAR_LOCAL: TStringField;
    cdsFichaTecnicaSPBR: TStringField;
    cdsFichaTecnicaSPBR_COMPR: TFMTBCDField;
    cdsFichaTecnicaSPBR_LARG: TFMTBCDField;
    cdsFichaTecnicaSPBR_LOCAL: TStringField;
    cdsFichaTecnicaSPHS: TStringField;
    cdsFichaTecnicaSPHS_COMPR: TFMTBCDField;
    cdsFichaTecnicaSPHS_LARG: TFMTBCDField;
    cdsFichaTecnicaSPHS_LOCAL: TStringField;
    cdsFichaTecnicaSPVISOR: TStringField;
    cdsFichaTecnicaSPVISOR_COMPR: TFMTBCDField;
    cdsFichaTecnicaSPVISOR_LARG: TFMTBCDField;
    cdsFichaTecnicaSPVISOR_LOCAL: TStringField;
    cdsFichaTecnicaSPVERNIZUV: TStringField;
    cdsFichaTecnicaSPVERNIZUV_COMPR: TFMTBCDField;
    cdsFichaTecnicaSPVERNIZUV_LARG: TFMTBCDField;
    cdsFichaTecnicaSPVERNIZUV_LOCAL: TStringField;
    cdsFichaTecnicaSPPICOTE: TStringField;
    cdsFichaTecnicaSPPICOTE_LOCAL: TStringField;
    cdsFichaTecnicaSPPICOTE_TIPO: TStringField;
    cdsFichaTecnicaSPPASSAFITA: TStringField;
    cdsFichaTecnicaSPPASSAFITA_LOCAL: TStringField;
    cdsFichaTecnicaSPPASSAFITA_TIPO: TStringField;
    cdsFichaTecnicaSPILHOS: TStringField;
    cdsFichaTecnicaSPILHOS_LOCAL: TStringField;
    cdsFichaTecnicaSPALCA: TStringField;
    cdsFichaTecnicaSPALCA_LOCAL: TStringField;
    cdsFichaTecnicaSPVERNIZUV_TOTAL: TStringField;
    cdsFichaTecnicaSPPINCA: TStringField;
    cdsFichaTecnicaSPPINCA_TAM: TFMTBCDField;
    cdsFichaTecnicaSPGRUPO1: TIntegerField;
    cdsFichaTecnicaSPSUBGRUPO1: TIntegerField;
    cdsFichaTecnicaSPGRUPO2: TIntegerField;
    cdsFichaTecnicaSPSUBGRUPO2: TIntegerField;
    cdsFichaTecnicaSPGRUPO3: TIntegerField;
    cdsFichaTecnicaSPSUBGRUPO3: TIntegerField;
    cdsFichaTecnicaSPOBS: TStringField;
    cdsFichaTecnicaSPENDERECO: TStringField;
    cdsFichaTecnicaSPARQUIVO_SP: TStringField;
    cdsFichaTecnicaSPBRANCO: TStringField;
    cdsFichaTecnicaSPAREA_IMPRESSAO: TFMTBCDField;
    cdsFichaTecnicaFDclFuro: TStringField;
    cdsFichaTecnicaFDclPassaFitaTipo: TStringField;
    cdsFichaTecnicaFDclPicoteTipo: TStringField;
    cdsAcabadosdsFTCorFD: TDataSetField;
    sdsFTCorFDCOR_NOME: TStringField;
    sdsFTCorFDPANTONE: TStringField;
    cdsFTCorFDCOR_NOME: TStringField;
    cdsFTCorFDPANTONE: TStringField;
    sdsOPQTD_QUEBRA: TIntegerField;
    cdsOPQTD_QUEBRA: TIntegerField;
    cdsAcabadosdsAcabadoProcessoFD: TDataSetField;
    sdsFichaTecnicaFDFURO_CABECEIRA: TStringField;
    sdsFichaTecnicaFDPOSAR: TStringField;
    sdsFichaTecnicaFDPOSBR: TStringField;
    sdsFichaTecnicaFDPOSHS: TStringField;
    sdsFichaTecnicaFDPOSVS: TStringField;
    sdsFichaTecnicaFDPOSUV: TStringField;
    sdsFichaTecnicaFDPOSPIC: TStringField;
    sdsFichaTecnicaFDPOSAL: TStringField;
    sdsFichaTecnicaFDPOSIL: TStringField;
    sdsFichaTecnicaFDPOSPF: TStringField;
    cdsFichaTecnicaFDFURO_CABECEIRA: TStringField;
    cdsFichaTecnicaFDPOSAR: TStringField;
    cdsFichaTecnicaFDPOSBR: TStringField;
    cdsFichaTecnicaFDPOSHS: TStringField;
    cdsFichaTecnicaFDPOSVS: TStringField;
    cdsFichaTecnicaFDPOSUV: TStringField;
    cdsFichaTecnicaFDPOSPIC: TStringField;
    cdsFichaTecnicaFDPOSAL: TStringField;
    cdsFichaTecnicaFDPOSIL: TStringField;
    cdsFichaTecnicaFDPOSPF: TStringField;
    sdsFichaTecnicaFDMAT_NOME1: TStringField;
    sdsFichaTecnicaFDMAT_NOME2: TStringField;
    sdsFichaTecnicaFDMAT_NOME3: TStringField;
    cdsFichaTecnicaFDMAT_NOME1: TStringField;
    cdsFichaTecnicaFDMAT_NOME2: TStringField;
    cdsFichaTecnicaFDMAT_NOME3: TStringField;
    sdsOPProcesso: TSQLDataSet;
    cdsOPsdsOPProcesso: TDataSetField;
    cdsOPProcesso: TClientDataSet;
    sdsOPProcessoID: TIntegerField;
    sdsOPProcessoPOSICAO: TStringField;
    sdsOPProcessoITEM: TIntegerField;
    sdsOPProcessoDESCRICAO: TStringField;
    sdsOPProcessoTEMPO_SETUP: TSmallintField;
    sdsOPProcessoTEMPO_EXECUCAO: TSmallintField;
    dsOPProcesso: TDataSource;
    cdsOPProcessoID: TIntegerField;
    cdsOPProcessoPOSICAO: TStringField;
    cdsOPProcessoITEM: TIntegerField;
    cdsOPProcessoDESCRICAO: TStringField;
    cdsOPProcessoTEMPO_SETUP: TSmallintField;
    cdsOPProcessoTEMPO_EXECUCAO: TSmallintField;
    sdsOPProcessoQUEBRA: TSmallintField;
    cdsOPProcessoQUEBRA: TSmallintField;
    procedure cdsOPAfterInsert(DataSet: TDataSet);
    procedure cdsFacaCalcFields(DataSet: TDataSet);
    procedure cdsFichaTecnicaFDCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctOP: String;
    procedure prc_Localizar(ID: Integer); //-1 = Inclus�o
  end;

var
  dmOP: TdmOP;

implementation

uses uDmDatabase;

{$R *.dfm}

procedure TdmOP.cdsOPAfterInsert(DataSet: TDataSet);
begin
  cdsOPID.AsInteger := dmDatabase.ProximaSequencia('OP',0);
  cdsOPDT_EMISSAO.AsDateTime := Date;
end;

procedure TdmOP.cdsFacaCalcFields(DataSet: TDataSet);
begin
{  if not cdsFacaFECHAMENTO_CT.IsNull then
    case cdsFacaFECHAMENTO_CT.AsInteger of
      0: cdsFacaclFechamentoCT.AsString  := 'N - N�O';
      1: cdsFacaclFechamentoCT.AsString  := 'FN - FUNDO NORMAL';
      2: cdsFacaclFechamentoCT.AsString  := 'FNT - FUNDO NORMAL COM TRAVA';
      3: cdsFacaclFechamentoCT.AsString  := 'FA - FUNDO AUTOM�TICO';
      4: cdsFacaclFechamentoCT.AsString  := 'FAT - FUNDO AUTOM�TICO COM TRAVA';
      5: cdsFacaclFechamentoCT.AsString  := 'FAM - FUNDO AMERICANO';
      6: cdsFacaclFechamentoCT.AsString  := 'FAMT - FUNDO AMERICANO COM TRAVA';
      7: cdsFacaclFechamentoCT.AsString  := 'ME - MONTAGEM POR ENCAIXE (com cola)';
      8: cdsFacaclFechamentoCT.AsString  := 'MET - MONTAGEM POR ENCAIXE TRAVA (com cola)';
      9: cdsFacaclFechamentoCT.AsString  := 'MM - MONTAGEM MANUAL (sem cola)';
      10: cdsFacaclFechamentoCT.AsString := 'MMT - MONTAGEM MANUAL COM TRAVA (sem cola)';
      11: cdsFacaclFechamentoCT.AsString := '4P - 4 PONTOS';
      12: cdsFacaclFechamentoCT.AsString := '6P - 6 PONTOS';
      13: cdsFacaclFechamentoCT.AsString := '8P - 8 PONTOS';
      14: cdsFacaclFechamentoCT.AsString := 'DIS - DISPLAY';
      15: cdsFacaclFechamentoCT.AsString := 'ENV - ENVOLT�RIO';
    end;
  if not cdsFacaFECHAMENTO_FD.IsNull then
  case cdsFacaFECHAMENTO_FD.AsInteger of
    0: cdsFacaclFechamentoFD.AsString := 'N - N�O';
    1: cdsFacaclFechamentoFD.AsString := 'AA - AUTO ADESIVO NORMAL';
    2: cdsFacaclFechamentoFD.AsString := 'AAA - AUTO ADESIVO COM ABAS LATERAIS COLADAS';
    3: cdsFacaclFechamentoFD.AsString := 'ME - MONTAGEM POR ENCAIXE (com cola)';
    4: cdsFacaclFechamentoFD.AsString := 'MM - MONTAGEM MANUAL (sem cola)';
    5: cdsFacaclFechamentoFD.AsString := 'SAC - SACOLA';
  end;
}
  if not cdsFacaFD_TIPO_MAT.IsNull then
  case cdsFacaFD_TIPO_MAT.AsInteger of
    1: cdsFacaclMaterialFD.AsString := 'DUPLEX';
    2: cdsFacaclMaterialFD.AsString := 'MICRO';
    3: cdsFacaclMaterialFD.AsString := 'CART�O / CART�O';
    4: cdsFacaclMaterialFD.AsString := 'MICRO / ABAS INTERNAS';
  end;
end;

procedure TdmOP.cdsFichaTecnicaFDCalcFields(DataSet: TDataSet);
begin
  if not cdsFichaTecnicaFDREVEST_FT.IsNull then
  case cdsFichaTecnicaFDREVEST_FT.AsInteger of
    0: cdsFichaTecnicaFDclRevestFT.AsString := 'N�O';
    1: cdsFichaTecnicaFDclRevestFT.AsString := 'VERNIZ';
    2: cdsFichaTecnicaFDclRevestFT.AsString := 'BARR. ALIMENTA��O';
    3: cdsFichaTecnicaFDclRevestFT.AsString := 'PL�STICO';
    4: cdsFichaTecnicaFDclRevestFT.AsString := 'PROLAN';
  end;
  if not cdsFichaTecnicaFDREVEST_VS.IsNull then
  case cdsFichaTecnicaFDREVEST_VS.AsInteger of
    0: cdsFichaTecnicaFDclRevestVS.AsString := 'N�O';
    1: cdsFichaTecnicaFDclRevestVS.AsString := 'VERNIZ';
    2: cdsFichaTecnicaFDclRevestVS.AsString := 'BARR. ALIMENTA��O';
    3: cdsFichaTecnicaFDclRevestVS.AsString := 'PL�STICO';
    4: cdsFichaTecnicaFDclRevestVS.AsString := 'PROLAN';
  end;
  if not cdsFichaTecnicaFDREVEST_FT_BRIL.IsNull then
  case cdsFichaTecnicaFDREVEST_FT_BRIL.AsInteger of
    1: cdsFichaTecnicaFDclRevestFTBrilho.AsString := 'BRILHO';
    2: cdsFichaTecnicaFDclRevestFTBrilho.AsString := 'FOSCO';
    3: cdsFichaTecnicaFDclRevestFTBrilho.AsString := 'ALTO BRILHO';
  end;
  if not cdsFichaTecnicaFDREVEST_VS_BRIL.IsNull then
  case cdsFichaTecnicaFDREVEST_VS_BRIL.AsInteger of
    1: cdsFichaTecnicaFDclRevestVSBrilho.AsString := 'BRILHO';
    2: cdsFichaTecnicaFDclRevestVSBrilho.AsString := 'FOSCO';
    3: cdsFichaTecnicaFDclRevestVSBrilho.AsString := 'ALTO BRILHO';
  end;
  if not cdsFichaTecnicaFDFURO.IsNull then
  case cdsFichaTecnicaFDFURO.AsInteger of
    0: cdsFichaTecnicaFDclFuro.AsString := 'N�O';
    1: cdsFichaTecnicaFDclFuro.AsString := 'REDONDO';
    2: cdsFichaTecnicaFDclFuro.AsString := 'MEIA-LUA';
  end;
  if not cdsFichaTecnicaFDPASSAFITA_TIPO.IsNull then
  case cdsFichaTecnicaFDPASSAFITA_TIPO.AsInteger of
    1: cdsFichaTecnicaFDclPassaFitaTipo.AsString := 'REDONDO';
    2: cdsFichaTecnicaFDclPassaFitaTipo.AsString := 'OVAL';
    3: cdsFichaTecnicaFDclPassaFitaTipo.AsString := 'RETANGULAR';
  end;
  if not cdsFichaTecnicaFDPICOTE_TIPO.IsNull then
  case cdsFichaTecnicaFDPICOTE_TIPO.AsInteger of
    1: cdsFichaTecnicaFDclPicoteTipo.AsString := 'MICRO SERRILHA';
    2: cdsFichaTecnicaFDclPicoteTipo.AsString := '0.5 POR 0.5';
  end;
end;

procedure TdmOP.prc_Localizar(ID: Integer);
begin
  cdsOP.Close;
  sdsOP.CommandText := ctOP;
  if ID <> 0 then
    sdsOP.CommandText := ctOP + ' WHERE OP.ID = ' + IntToStr(ID);
  cdsOP.Open;
end;

procedure TdmOP.DataModuleCreate(Sender: TObject);
begin
  ctOP := sdsOP.CommandText;
end;

end.

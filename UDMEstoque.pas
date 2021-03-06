unit UDMEstoque;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, Dialogs, LogTypes;

type
  TDMEstoque = class(TDataModule)
    sdsEstoque_Mov: TSQLDataSet;
    dspEstoque_Mov: TDataSetProvider;
    cdsEstoque_Mov: TClientDataSet;
    dsEstoque_Mov: TDataSource;
    sdsEstoque_MovID: TIntegerField;
    sdsEstoque_MovFILIAL: TIntegerField;
    sdsEstoque_MovID_PRODUTO: TIntegerField;
    sdsEstoque_MovID_COR: TIntegerField;
    sdsEstoque_MovDTMOVIMENTO: TDateField;
    sdsEstoque_MovTIPO_ES: TStringField;
    sdsEstoque_MovTIPO_MOV: TStringField;
    sdsEstoque_MovNUMNOTA: TIntegerField;
    sdsEstoque_MovID_PESSOA: TIntegerField;
    sdsEstoque_MovVLR_UNITARIO: TFloatField;
    sdsEstoque_MovQTD: TFloatField;
    sdsEstoque_MovPERC_ICMS: TFloatField;
    sdsEstoque_MovPERC_IPI: TFloatField;
    sdsEstoque_MovVLR_DESCONTO: TFloatField;
    sdsEstoque_MovQTD2: TFloatField;
    sdsEstoque_MovTAMANHO: TStringField;
    sdsEstoque_MovPERC_TRIBUTACAO: TFloatField;
    sdsEstoque_MovVLR_FRETE: TFloatField;
    sdsEstoque_MovID_CFOP: TIntegerField;
    sdsEstoque_MovID_NOTA: TIntegerField;
    sdsEstoque_MovSERIE: TStringField;
    sdsEstoque_MovUNIDADE_ORIG: TStringField;
    sdsEstoque_MovVLR_UNITARIOORIG: TFloatField;
    sdsEstoque_MovQTD_ORIG: TFloatField;
    sdsEstoque_MovVLR_DESCONTOORIG: TFloatField;
    sdsEstoque_MovMERCADO: TStringField;
    cdsEstoque_MovID: TIntegerField;
    cdsEstoque_MovFILIAL: TIntegerField;
    cdsEstoque_MovID_PRODUTO: TIntegerField;
    cdsEstoque_MovID_COR: TIntegerField;
    cdsEstoque_MovDTMOVIMENTO: TDateField;
    cdsEstoque_MovTIPO_ES: TStringField;
    cdsEstoque_MovTIPO_MOV: TStringField;
    cdsEstoque_MovNUMNOTA: TIntegerField;
    cdsEstoque_MovID_PESSOA: TIntegerField;
    cdsEstoque_MovVLR_UNITARIO: TFloatField;
    cdsEstoque_MovQTD: TFloatField;
    cdsEstoque_MovPERC_ICMS: TFloatField;
    cdsEstoque_MovPERC_IPI: TFloatField;
    cdsEstoque_MovVLR_DESCONTO: TFloatField;
    cdsEstoque_MovQTD2: TFloatField;
    cdsEstoque_MovTAMANHO: TStringField;
    cdsEstoque_MovPERC_TRIBUTACAO: TFloatField;
    cdsEstoque_MovVLR_FRETE: TFloatField;
    cdsEstoque_MovID_CFOP: TIntegerField;
    cdsEstoque_MovID_NOTA: TIntegerField;
    cdsEstoque_MovSERIE: TStringField;
    cdsEstoque_MovUNIDADE_ORIG: TStringField;
    cdsEstoque_MovVLR_UNITARIOORIG: TFloatField;
    cdsEstoque_MovQTD_ORIG: TFloatField;
    cdsEstoque_MovVLR_DESCONTOORIG: TFloatField;
    cdsEstoque_MovMERCADO: TStringField;
    qEstoque: TSQLQuery;
    qEstoqueQTD: TFMTBCDField;
    sdsEstoque_MovID_CENTROCUSTO: TIntegerField;
    cdsEstoque_MovID_CENTROCUSTO: TIntegerField;
    qProduto: TSQLQuery;
    qProdutoUNIDADE: TStringField;
    sdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField;
    sdsEstoque_MovNUM_LOTE_CONTROLE: TStringField;
    cdsEstoque_MovNUM_LOTE_CONTROLE: TStringField;
    sdsEstoque_MovGERAR_CUSTO: TStringField;
    cdsEstoque_MovGERAR_CUSTO: TStringField;
    qEstoqueAtual: TSQLQuery;
    qEstoqueAtualNOME: TStringField;
    qEstoqueAtualREFERENCIA: TStringField;
    qEstoqueAtualUNIDADE: TStringField;
    qEstoqueAtualFILIAL: TIntegerField;
    qEstoqueAtualQTD: TFMTBCDField;
    sdsFilial: TSQLDataSet;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    sdsFilialNOME_INTERNO: TStringField;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    dsFilial: TDataSource;
    sdsEstoque_MovID_CUPOM: TIntegerField;
    cdsEstoque_MovID_CUPOM: TIntegerField;
    sdsEstoque_MovPRECO_CUSTO_TOTAL: TFloatField;
    cdsEstoque_MovPRECO_CUSTO_TOTAL: TFloatField;
    sdsEstoque_MovUNIDADE: TStringField;
    cdsEstoque_MovUNIDADE: TStringField;
    sdsEstoque_MovID_OPERACAO: TIntegerField;
    cdsEstoque_MovID_OPERACAO: TIntegerField;
    sdsEstoque_MovLARGURA: TFloatField;
    sdsEstoque_MovCOMPRIMENTO: TFloatField;
    sdsEstoque_MovESPESSURA: TFloatField;
    cdsEstoque_MovLARGURA: TFloatField;
    cdsEstoque_MovCOMPRIMENTO: TFloatField;
    cdsEstoque_MovESPESSURA: TFloatField;
    qParametros_Est: TSQLQuery;
    qParametros_EstUSA_ESTOQUE_GERAL_CAD: TStringField;
    sdsEstoque_Local: TSQLDataSet;
    dspEstoque_Local: TDataSetProvider;
    sdsEstoque_LocalID_PRODUTO: TIntegerField;
    sdsEstoque_LocalID_COR: TIntegerField;
    sdsEstoque_LocalLOCALIZACAO: TStringField;
    sdsEstoque_LocalQTD: TFloatField;
    cdsEstoque_Local: TClientDataSet;
    cdsEstoque_LocalID_PRODUTO: TIntegerField;
    cdsEstoque_LocalID_COR: TIntegerField;
    cdsEstoque_LocalLOCALIZACAO: TStringField;
    cdsEstoque_LocalQTD: TFloatField;
    sdsProduto_Tam: TSQLDataSet;
    dspProduto_Tam: TDataSetProvider;
    cdsProduto_Tam: TClientDataSet;
    dsProduto_Tam: TDataSource;
    cdsProduto_TamID: TIntegerField;
    cdsProduto_TamTAMANHO: TStringField;
    cdsProduto_TamPESO_LIQUIDO: TFloatField;
    cdsProduto_TamPESO_BRUTO: TFloatField;
    cdsProduto_TamTAM_MATRIZ: TStringField;
    sdsProduto_Cor: TSQLDataSet;
    dspProduto_Cor: TDataSetProvider;
    cdsProduto_Cor: TClientDataSet;
    dsProduto_Cor: TDataSource;
    sdsProduto_CorID: TIntegerField;
    sdsProduto_CorID_COR_COMBINACAO: TIntegerField;
    sdsProduto_CorNOME_COMBINACAO: TStringField;
    cdsProduto_CorID: TIntegerField;
    cdsProduto_CorID_COR_COMBINACAO: TIntegerField;
    cdsProduto_CorNOME_COMBINACAO: TStringField;
    qParametros_EstUSA_PRODUTO_EST: TStringField;
    qProdutoID_PRODUTO_EST: TIntegerField;
    sdsEstoque_MovID_PRODUTO_ORIG: TIntegerField;
    cdsEstoque_MovID_PRODUTO_ORIG: TIntegerField;
    sdsEstoque_MovID_PEDIDO: TIntegerField;
    sdsEstoque_MovITEM_PEDIDO: TIntegerField;
    cdsEstoque_MovID_PEDIDO: TIntegerField;
    cdsEstoque_MovITEM_PEDIDO: TIntegerField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedUSA_RESERVA_EST: TStringField;
    procedure cdsEstoque_MovReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    ctqEstoque: WideString;
    function fnc_Gravar_Estoque(ID_Estoque, ID_Filial, ID_Local_Estoque, ID_Produto, NumDoc, ID_Pessoa, ID_CFOP, ID_Nota, ID_CentroCusto: Integer;
                       Tipo_ES, Tipo_Mov, Unidade, Unidade_Orig, Serie, Tamanho: String; Data: TDateTime;
                       Vlr_Unitario, Qtd, Perc_ICMS, Perc_IPI, Vlr_Desconto, Perc_Trib, Vlr_Frete, Qtd_Orig,
                       //Vlr_Unitario_Orig,Vlr_Desconto_Orig: Real; Qtd_Pacote: Real = 0; Unidade_Interna: String = '' ;
                       //ID_COR: Integer = 0): Integer;
                       Vlr_Unitario_Orig,Vlr_Desconto_Orig: Real; Qtd_Pacote: Real; Unidade_Interna: String;
                       ID_COR: Integer; Num_Lote_Controle, Gerar_Custo: String; Preco_Custo_Total, Comprimento, Largura, Espessura: Real;
                       ID_Operacao: Integer; ID_Pedido, Item_Pedido: Integer): Integer;

    //Tirado 10/07/2019  esta usando a do uUtilPadrao
    //function fnc_Buscar_Estoque_DM(CodProduto: Integer; ID_Local_Estoque: Integer; ID_Cor: Integer): Real;

    procedure prc_Excluir_EstoqueMov(ID: Integer);
    procedure prc_Abrir_Estoque_Mov(ID: Integer);
    procedure prc_Imprime_Estoque(vTipo: String);// vTipo = Produto ou Material

    procedure prc_Localizar(ID: Integer);

    procedure prc_Gravar_Estoque_Local(ID_Produto, ID_Cor: Integer; Localizacao, Tipo_ES: String; Qtd: Real);
  end;

var
  DMEstoque: TDMEstoque;

const
  IPula   = #13;       //Pula 1 linha
  IEspac1 = #27#48;    //Define espa�amento entre linhas de 1/8"
  IEspac2 = #27#49;    //Define espa�amento entre linhas de 7/72"
  IEspac3 = #27#50;    //Define espa�amento entre linhas de 1/6"
  IEject  = #12;       //Ejeta p�gina
  I80car  = #27#80#18; //Imprime com 80 colunas
  I96car  = #27#77#18; //Imprime com 96 colunas
  I137car = #27#80#15; //Imprime com 137 colunas
  I160car = #27#77#15; //Imprime com 160 colunas
  IDuploG = #27#14#18; //Imprime em caracter grande largura dupla
  IDuploP = #27#14#15; //Imprime em caracter pequeno largura dupla
  IDuploC = #27#20;    //Cancela largura dupla
  INegAti = #27#71;    //Imprime em negrito
  INegDes = #27#72;    //Cancela modo negrito
  IItaAti = #27#52;    //Imprime em It�lico
  IItaDes = #27#53;    //Cancela modo It�lico

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMEstoque }

//Tirado 10/07/2019  esta usando a do uUtilPadrao
{function TDMEstoque.fnc_Buscar_Estoque_DM(CodProduto: Integer; ID_Local_Estoque: Integer; ID_Cor: Integer): Real;
begin
  qParametros_Est.Close;
  qParametros_Est.Open;
  qEstoque.Close;
  qEstoque.SQL.Text := ctqEstoque;
  if ID_Local_Estoque > 0 then
  begin
    qEstoque.SQL.Text := qEstoque.SQL.Text + ' AND ID_LOCAL_ESTOQUE = :ID_LOCAL_ESTOQUE ';
    qEstoque.ParamByName('ID_LOCAL_ESTOQUE').AsInteger := ID_Local_Estoque;
  end;
  if ID_Cor <= 0 then
    qEstoque.SQL.Text := qEstoque.SQL.Text + ' AND (ID_COR = 0 or ID_COR IS NULL) '
  else
  begin
    qEstoque.SQL.Text := qEstoque.SQL.Text + ' AND ID_COR = :ID_COR ';
    qEstoque.ParamByName('ID_COR').AsInteger := ID_Cor;
  end;
  if trim(qParametros_EstUSA_ESTOQUE_GERAL_CAD.AsString) <> 'S' then
  begin
    qEstoque.SQL.Text := qEstoque.SQL.Text + ' AND FILIAL = :FILIAL ';
    qEstoque.ParamByName('FILIAL').AsInteger := vFilial;
  end;
  qEstoque.ParamByName('ID_PRODUTO').AsInteger := CodProduto;
  qEstoque.Open;
  Result := StrToFloat(FormatFloat('0.0000',qEstoqueQTD.AsFloat));
  qEstoque.Close;
end;}

function TDMEstoque.fnc_Gravar_Estoque(ID_Estoque, ID_Filial, ID_Local_Estoque, ID_Produto,
  NumDoc, ID_Pessoa, ID_CFOP, ID_Nota, ID_CentroCusto: Integer; Tipo_ES, Tipo_Mov, Unidade,
  Unidade_Orig, Serie, Tamanho: String; Data: TDateTime; Vlr_Unitario, Qtd,
  Perc_ICMS, Perc_IPI, Vlr_Desconto, Perc_Trib, Vlr_Frete, Qtd_Orig,
  Vlr_Unitario_Orig, Vlr_Desconto_Orig: Real; Qtd_Pacote: Real;
  Unidade_Interna: String; ID_COR: Integer; Num_Lote_Controle, Gerar_Custo: String; Preco_Custo_Total, Comprimento, Largura, Espessura: Real;
  ID_Operacao: Integer; ID_Pedido, Item_Pedido: Integer): Integer;
var
  vAux: Integer;
  vQtdAux: Real;
  ID_Produto_Orig: Integer;
begin
  Result := 0;

  if ID_Estoque > 0 then
  begin
    prc_Abrir_Estoque_Mov(ID_Estoque);
    if cdsEstoque_Mov.IsEmpty then
      ID_Estoque := 0;
    vaux := ID_Estoque;
  end;
  if ID_Estoque <= 0 then
  begin
    vAux := dmDatabase.ProximaSequencia('ESTOQUE_MOV',0);
    if not(cdsEstoque_Mov.Active)  then
      prc_Abrir_Estoque_Mov(0);
  end;

  ID_Produto_Orig := 0;
  if (qParametros_EstUSA_PRODUTO_EST.AsString = 'S') then
  begin
    qProduto.Close;
    qProduto.ParamByName('ID').AsInteger := ID_Produto;
    qProduto.Open;
    if qProdutoID_PRODUTO_EST.AsInteger > 0 then
    begin
      ID_Produto_Orig := ID_Produto;
      ID_Produto      := qProdutoID_PRODUTO_EST.AsInteger;
    end;
  end;

  //08/07/2014  -  Foi incluido devido a quantidade com unidade diferente (quantidade pacote)
  if StrToCurr(FormatCurr('0.00000',Qtd_Pacote)) > 0 then
  begin
    vQtdAux := StrToCurr(FormatCurr('0.00000',Qtd * Qtd_Pacote));
    if StrToCurr(FormatCurr('0.00000',Qtd_Orig)) <= 0 then
    begin
      Qtd_Orig          := StrToCurr(FormatCurr('0.00000',Qtd));
      Vlr_Unitario_Orig := StrToCurr(FormatCurr('0.0000000000',Vlr_Unitario));
    end;
    Vlr_Unitario := StrToCurr(FormatCurr('0.0000000000',Vlr_Unitario * Qtd / (Qtd_Pacote * Qtd)));
    Qtd := StrToCurr(FormatCurr('0.00000',vQtdAux));
    if trim(Unidade_Interna) = '' then
    begin
      qProduto.Close;
      qProduto.ParamByName('ID').AsInteger := ID_Produto;
      qProduto.Open;
      Unidade := qProdutoUNIDADE.AsString;
    end
    else
      Unidade := Unidade_Interna;
  end;
  //*****************

  try
    if ID_Estoque > 0 then
      cdsEstoque_Mov.Edit
    else
    begin
      cdsEstoque_Mov.Insert;
      cdsEstoque_MovID.AsInteger := vAux;
    end;
    cdsEstoque_MovFILIAL.AsInteger           := ID_Filial;
    if ID_Local_Estoque <= 0 then
      cdsEstoque_MovID_LOCAL_ESTOQUE.AsInteger := 1
    else
      cdsEstoque_MovID_LOCAL_ESTOQUE.AsInteger := ID_Local_Estoque;
    cdsEstoque_MovID_PRODUTO.AsInteger       := ID_Produto;
    cdsEstoque_MovID_NOTA.AsInteger          := ID_Nota;
    cdsEstoque_MovTAMANHO.AsString           := Tamanho;
    cdsEstoque_MovDTMOVIMENTO.AsDateTime     := Data;
    cdsEstoque_MovTIPO_ES.AsString           := Tipo_ES;
    cdsEstoque_MovTIPO_MOV.AsString          := Tipo_Mov;
    cdsEstoque_MovNUMNOTA.AsInteger          := NumDoc;
    if Tipo_Mov = 'CFI' then
      cdsEstoque_MovID_CUPOM.AsInteger := ID_Nota;
    if ID_Pessoa > 0 then
      cdsEstoque_MovID_PESSOA.AsInteger := ID_Pessoa
    else
      cdsEstoque_MovID_PESSOA.Clear;
    cdsEstoque_MovVLR_UNITARIO.AsFloat    := Vlr_Unitario;
    cdsEstoque_MovQTD.AsFloat             := StrToFloat(FormatFloat('0.00000',Qtd));
    cdsEstoque_MovQTD2.AsFloat            := StrToFloat(FormatFloat('0.00000',Qtd));
    if Tipo_ES = 'S' then
      cdsEstoque_MovQTD2.AsFloat          := StrToFloat(FormatFloat('0.00000',Qtd * -1));
    cdsEstoque_MovUNIDADE.AsString        := Unidade;
    cdsEstoque_MovPERC_ICMS.AsFloat       := Perc_ICMS;
    cdsEstoque_MovPERC_IPI.AsFloat        := Perc_IPI;
    cdsEstoque_MovVLR_DESCONTO.AsFloat    := StrToFloat(FormatFloat('0.000',Vlr_Desconto));
    cdsEstoque_MovPERC_TRIBUTACAO.AsFloat := StrToFloat(FormatFloat('0.0000',Perc_Trib));
    cdsEstoque_MovVLR_FRETE.AsFloat       := StrToFloat(FormatFloat('0.00',Vlr_Frete));
    cdsEstoque_MovID_CFOP.AsInteger       := ID_CFOP;
    cdsEstoque_MovSERIE.AsString          := Serie;
    cdsEstoque_MovVLR_DESCONTOORIG.AsFloat := Vlr_Desconto_Orig;
    cdsEstoque_MovVLR_UNITARIOORIG.AsFloat := Vlr_Unitario_Orig;
    cdsEstoque_MovUNIDADE_ORIG.AsString    := Unidade_Orig;
    cdsEstoque_MovQTD_ORIG.AsFloat         := StrToFloat(FormatFloat('0.00000',Qtd_Orig));
    if ID_COR <= 0 then
      ID_COR := 0;
    cdsEstoque_MovID_COR.AsInteger         := ID_COR;
    cdsEstoque_MovPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',Preco_Custo_Total));
    if ID_CentroCusto > 0 then
      cdsEstoque_MovID_CENTROCUSTO.AsInteger := ID_CentroCusto
    else
      cdsEstoque_MovID_CENTROCUSTO.Clear;
    if trim(Num_Lote_Controle) <> '' then
      cdsEstoque_MovNUM_LOTE_CONTROLE.AsString := Num_Lote_Controle
    else
      cdsEstoque_MovNUM_LOTE_CONTROLE.AsString := '';
    cdsEstoque_MovGERAR_CUSTO.AsString := Gerar_Custo;
    if (Gerar_Custo <> 'S') and (Gerar_Custo <> 'N') then
    begin
      if Tipo_Mov = 'NTE' then
        cdsEstoque_MovGERAR_CUSTO.AsString := 'S'
      else
        cdsEstoque_MovGERAR_CUSTO.AsString := 'N';
    end;

    cdsEstoque_MovComprimento.AsFloat := Comprimento;
    cdsEstoque_MovLargura.AsFloat     := Largura;
    cdsEstoque_MovEspessura.AsFloat   := Espessura;

    //14/01/2019 Vai gravar a opera��o para controle do estoque em terceiro e de terceiro
    if ID_Operacao <= 0 then
      cdsEstoque_MovID_OPERACAO.Clear
    else
      cdsEstoque_MovID_OPERACAO.AsInteger := ID_Operacao;
    //*******************************

    if ID_Produto_Orig > 0 then
      cdsEstoque_MovID_PRODUTO_ORIG.AsInteger := ID_Produto_Orig
    else
      cdsEstoque_MovID_PRODUTO_ORIG.Clear;

    if (ID_Pedido <= 0) or (trim(qParametros_PedUSA_RESERVA_EST.AsString) <> 'S') then
    begin
      cdsEstoque_MovID_PEDIDO.Clear;
      cdsEstoque_MovITEM_PEDIDO.Clear;
    end
    else
    begin
      cdsEstoque_MovID_PEDIDO.AsInteger := ID_Pedido;
      cdsEstoque_MovITEM_PEDIDO.AsInteger := Item_Pedido;
    end;

    cdsEstoque_Mov.Post;
    cdsEstoque_Mov.ApplyUpdates(0);
    Result := vAux;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar o estoque:' + #13 +
                             'Mensagem: ' + E.Message + #13);
    end;
  end;
end;

procedure TDMEstoque.prc_Abrir_Estoque_Mov(ID: Integer);
begin
  cdsEstoque_Mov.Close;
  sdsEstoque_Mov.ParamByName('ID').AsInteger := ID;
  cdsEstoque_Mov.Open;
end;
    
procedure TDMEstoque.cdsEstoque_MovReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + #13 + '*** Erro ao gravar a tabela de Estoque!', mtError, [mbOk], 0);
end;

procedure TDMEstoque.prc_Excluir_EstoqueMov(ID: Integer);
var
  sds: TSQLDataSet;
begin
  if ID <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.GetMetadata   := False;
  sds.NoMetadata    := True;
  sds.CommandText   := 'DELETE FROM ESTOQUE_MOV WHERE ID = ' + IntToStr(ID);
  sds.ExecSQL;
  FreeAndNil(sds);
end;

procedure TDMEstoque.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMEstoque.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  vIndices: string;
  aIndices: array of string;
begin
  ctqEstoque := qEstoque.SQL.Text;
  qParametros_Est.Open;
  qParametros_Ped.Open;
  //*** Logs Implantado na vers�o .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************

end;

procedure TDMEstoque.prc_Imprime_Estoque(vTipo: String); // vTipo = Produto ou Material
var  //relat�rio para mini impressoras
  f: TextFile;
  vTxt1, vTxt2: String;
  i: Word;
begin
  qEstoqueAtual.Close;
  qEstoqueAtual.ParamByName('vTipo').AsString := vTipo;
  qEstoqueAtual.Open;

//  if qEstoqueAtual.RecordCount = 0 then
//    Exit;

  cdsFilial.Open;
  AssignFile(f,vPorta);
  ReWrite(f);

  WriteLn(f,IDuploG + cdsFilialNOME_INTERNO.AsString + IDuploC);
  WriteLn(f);

  if vTipo = 'P' then
    WriteLn(f,INegAti + 'ESTOQUE DE PRODUTOS' + INegDes)
  else
    WriteLn(f,INegAti + 'ESTOQUE DE MATERIAIS' + INegDes);
  WriteLn(f,'----------------------------------------');
  WriteLn(f,'  Usuario: ' + vUsuario);
  WriteLn(f,'Data/Hora: ' + FormatDateTime('DD/MM/YYYY',Date));
  WriteLn(f,'========================================');

  while not qEstoqueAtual.Eof do
  begin
    vTxt1 := Copy(qEstoqueAtualREFERENCIA.AsString,1,5);
    for i := 1 to 6 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';
    vTxt1 := vTxt1 + Copy(qEstoqueAtualNOME.AsString,1,25);
    for i := 1 to 31 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';

    vTxt2 := qEstoqueAtualUNIDADE.AsString;
    for i := 1 to 4 - Length(vTxt2) do
      vTxt2 := vTxt2 + ' ';

    vTxt1 := vTxt1 + vTxt2;

    vTxt2 := qEstoqueAtualQTD.AsString;
    for i := 1 to 5 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;
    WriteLn(f,vTxt1+vTxt2);

    qEstoqueAtual.Next;
  end;
  WriteLn(f,'----------------------------------------');

  WriteLn(f,IDuploP + 'SERVISOFT Informatica' + IDuploC);
  WriteLn(f,'Fone: (51) 3598-6584');
  for i := 1 to 5 do
    WriteLn(f);

  CloseFile(f);
end;

procedure TDMEstoque.prc_Localizar(ID: Integer);
begin
  cdsEstoque_Mov.Close;
  sdsEstoque_Mov.ParamByName('ID').AsInteger := ID;
  cdsEstoque_Mov.Open;
end;

procedure TDMEstoque.prc_Gravar_Estoque_Local(ID_Produto, ID_Cor: Integer;
  Localizacao, Tipo_ES: String; Qtd: Real);
begin
  cdsEstoque_Local.Close;
  sdsEstoque_Local.ParamByName('ID_PRODUTO').AsInteger := ID_Produto;
  sdsEstoque_Local.ParamByName('ID_COR').AsInteger     := ID_Cor;
  sdsEstoque_Local.ParamByName('LOCALIZACAO').AsString := Localizacao;
  cdsEstoque_Local.Open;

  if not cdsEstoque_Local.IsEmpty then
    cdsEstoque_Local.Edit
  else
  begin
    cdsEstoque_Local.Insert;
    cdsEstoque_LocalID_PRODUTO.AsInteger := ID_Produto;
    cdsEstoque_LocalID_COR.AsInteger     := ID_Cor;
    cdsEstoque_LocalLOCALIZACAO.AsString := Localizacao;
    cdsEstoque_LocalQTD.AsFloat          := 0;
  end;
  if Tipo_ES = 'E' then
    cdsEstoque_LocalQTD.AsFloat := StrToFloat(FormatFloat('0.0000',cdsEstoque_LocalQTD.AsFloat + qtd))
  else
    cdsEstoque_LocalQTD.AsFloat := StrToFloat(FormatFloat('0.0000',cdsEstoque_LocalQTD.AsFloat - qtd));
  cdsEstoque_Local.Post;
  cdsEstoque_Local.ApplyUpdates(0);
end;

end.

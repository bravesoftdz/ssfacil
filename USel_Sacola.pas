unit USel_Sacola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, RxLookup,
  NxCollection, UDMCadNotaFiscal, Mask, ToolEdit, CurrEdit, UCadNotaFiscal_Itens;

type
  TfrmSel_Sacola = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SMDBGrid1: TSMDBGrid;
    sdsProduto: TSQLDataSet;
    cdsProduto: TClientDataSet;
    dspProduto: TDataSetProvider;
    dsProduto: TDataSource;
    StaticText1: TStaticText;
    sdsProduto_Consumo: TSQLDataSet;
    dspProduto_Consumo: TDataSetProvider;
    cdsProduto_Consumo: TClientDataSet;
    dsProduto_Consumo: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoNOME: TStringField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoUNIDADE: TStringField;
    sdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoID: TIntegerField;
    cdsProdutoNOME: TStringField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    Panel2: TPanel;
    btnCopiar: TNxButton;
    mConsumo: TClientDataSet;
    dsmConsumo: TDataSource;
    mConsumoID_Material: TIntegerField;
    mConsumoReferencia: TStringField;
    mConsumoNome: TStringField;
    mConsumoQtd: TFloatField;
    mConsumoVlr_Unitario: TFloatField;
    mConsumoVlr_Total: TFloatField;
    cdsProduto_ConsumoID: TIntegerField;
    cdsProduto_ConsumoITEM: TIntegerField;
    cdsProduto_ConsumoID_MATERIAL: TIntegerField;
    cdsProduto_ConsumoQTD_CONSUMO: TFloatField;
    cdsProduto_ConsumoUNIDADE: TStringField;
    cdsProduto_ConsumoNOME_MAT: TStringField;
    cdsProduto_ConsumoREFERENCIA_MAT: TStringField;
    cdsProduto_ConsumoPRECO_VENDA: TFloatField;
    SQLQuery1: TSQLQuery;
    cdsProduto_ConsumoPRECO_CALCULADO: TFloatField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label4: TLabel;
    qMaterial: TSQLQuery;
    qMaterialID: TIntegerField;
    qMaterialPRECO_VENDA: TFloatField;
    qMaterialREFERENCIA: TStringField;
    qMaterialNOME: TStringField;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    mConsumoVlr_Unitario_Nota: TFloatField;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    mConsumoQtd_Nota: TFloatField;
    Label6: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnCopiarClick(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    ctProdutoLocal : String;
    procedure prc_Gravar_mConsumo;
    procedure prc_Gravar_NotaItens;
    procedure prc_Gravar_NotaFiscal_ProdPrincipal(Item : Integer);

    function fnc_Calcular_Preco : Real;
    function fnc_Calcular_Preco_Orig : Real;
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;

  end;

var
  frmSel_Sacola: TfrmSel_Sacola;

implementation

uses DmdDatabase, uUtilPadrao, USel_Produto;

{$R *.dfm}

procedure TfrmSel_Sacola.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //vTipo_Prod     := '';
  vCodPessoa_Pos := 0;
  Action         := Cafree;
end;

procedure TfrmSel_Sacola.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    BitBtn1.Visible := not(BitBtn1.Visible);
    Label5.Visible  := not(Label5.Visible);
  end;
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Sacola.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsProduto.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_Sacola.btnCopiarClick(Sender: TObject);
var
  vVlrSacola : Real;
  vVlrCalculado : Real;
  vAux : Real;
  vVlrDesconto : Real;
  vVlrAcrescimo : Real;
  vVlrTotal : Real;
  vTipo_Calc : String;
begin
  if trim(RxDBLookupCombo2.Text) = '' then
  begin
    MessageDlg('*** CFOP n�o informada!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Sacola n�o selecionada!', mtError, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit1.AsInteger <= 0 then
  begin
    MessageDlg('*** N�o foi informada a quantidade!', mtError, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit2.AsInteger <= 0 then
  begin
    MessageDlg('*** Sacola n�o esta com o valor informado!', mtError, [mbOk], 0);
    exit;
  end;
  if mConsumo.IsEmpty then
  begin
    MessageDlg('*** Sacola n�o esta com os produtos cadastrados!', mtError, [mbOk], 0);
    exit;
  end;

  ffrmCadNotaFiscal_Itens.vSacolaSelecionada := True;
  vVlrSacola    := CurrencyEdit2.Value;
  vVlrCalculado := fnc_Calcular_Preco;
  //if StrToFloat(FormatFloat('0.00',vVlrCalculado)) <= StrToFloat(FormatFloat('0.00',vVlrSacola)) then
  //begin
  //  MessageDlg('*** Valor dos produtos menor que o valor da Sacola!', mtError, [mbOk], 0);
  //  exit;
  //end;
  if StrToFloat(FormatFloat('0.00',vVlrCalculado)) <= StrToFloat(FormatFloat('0.00',vVlrSacola)) then
    vVlrAcrescimo := StrToFloat(FormatFloat('0.0000',((vVlrSacola / vVlrCalculado) * 100) - 100))
  else
    vVlrDesconto := StrToFloat(FormatFloat('0.0000',100 - ((vVlrSacola / vVlrCalculado) * 100)));
  if StrToFloat(FormatFloat('0.00',vVlrDesconto)) <= StrToFloat(FormatFloat('0.00',0)) then
    vVlrDesconto := StrToFloat(FormatFloat('0.00',0));
  if StrToFloat(FormatFloat('0.00',vVlrAcrescimo)) <= StrToFloat(FormatFloat('0.00',0)) then
    vVlrAcrescimo := StrToFloat(FormatFloat('0.00',0));
  vTipo_Calc := 'D';
  if StrToFloat(FormatFloat('0.0000',vVlrAcrescimo)) > 0 then
    vTipo_Calc := 'A';
  SMDBGrid1.DisableScroll;
  vVlrTotal := 0;
  mConsumo.First;
  while not mConsumo.Eof do
  begin
    vAux := StrToFloat(FormatFloat('0.0000',mConsumoVlr_Unitario.AsFloat));
    if StrToFloat(FormatFloat('0.00',vVlrAcrescimo)) > 0 then
      vAux := StrToFloat(FormatFloat('0.0000',mConsumoVlr_Unitario.AsFloat + (mConsumoVlr_Unitario.AsFloat * vVlrAcrescimo / 100)))
    else
    if StrToFloat(FormatFloat('0.00',vVlrDesconto)) > 0 then
      vAux := StrToFloat(FormatFloat('0.0000',mConsumoVlr_Unitario.AsFloat - (mConsumoVlr_Unitario.AsFloat * vVlrDesconto / 100)));
    mConsumo.Edit;
    mConsumoQtd_Nota.AsFloat := mConsumoQtd.AsFloat * CurrencyEdit1.Value;

    mConsumoVlr_Unitario_Nota.AsFloat := StrToFloat(FormatFloat('0.0000',vAux));
    mConsumoVlr_Total.AsFloat         := StrToFloat(FormatFloat('0.00',mConsumoVlr_Unitario_Nota.AsFloat * mConsumoQtd_Nota.AsFloat));
    vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal + mConsumoVlr_Total.AsFloat));
    mConsumo.Post;
    mConsumo.Next;
  end;
  if StrToFloat(FormatFloat('0.00',vVlrTotal)) <> StrToFloat(FormatFloat('0.00',CurrencyEdit3.Value)) then
  begin
    mConsumo.First;
    mConsumo.Edit;
    //vVlrTotal := vVlrSacola - vVlrTotal;
    vVlrTotal := CurrencyEdit3.Value - vVlrTotal;
    mConsumoVlr_Total.AsFloat := mConsumoVlr_Total.AsFloat + vVlrTotal;
    vAux := StrToFloat(FormatFloat('0.0000',mConsumoVlr_Total.AsFloat / mConsumoQtd_Nota.AsFloat));
    mConsumoVlr_Unitario_Nota.AsFloat := StrToFloat(FormatFloat('0.0000',vAux));
    mConsumo.Post;
  end;

  ffrmCadNotaFiscal_Itens.vItem_Original := 0;
  mConsumo.First;
  while not mConsumo.Eof do
  begin
    prc_Gravar_NotaItens;
    mConsumo.Next;
  end;
  SMDBGrid1.EnableScroll;
  ffrmCadNotaFiscal_Itens.vSacolaSelecionada := False;
  Close;

  {cdsProduto_Consumo.Close;
  sdsProduto_Consumo.ParamByName('ID').AsInteger := cdsProdutoID.AsInteger;
  cdsProduto_Consumo.Open;
  cdsProduto_Consumo.First;
  while not cdsProduto_Consumo.Eof do
  begin
    vAux := StrToFloat(FormatFloat('0.00',cdsProduto_ConsumoPRECO_CALCULADO.AsFloat));
    if StrToFloat(FormatFloat('0.00',vVlrDesconto)) > 0 then
      vAux := StrToFloat(FormatFloat('0.00',cdsProduto_ConsumoPRECO_CALCULADO.AsFloat - (cdsProduto_ConsumoPRECO_CALCULADO.AsFloat * vVlrDesconto / 100)));

    mConsumo.Insert;
    mConsumoID_Material.AsInteger := cdsProduto_ConsumoID_MATERIAL.AsInteger;
    mConsumoReferencia.AsString   := cdsProduto_ConsumoREFERENCIA_MAT.AsString;
    mConsumoNome.AsString         := cdsProduto_ConsumoNOME_MAT.AsString;
    mConsumoQtd.AsFloat           := StrToFloat(FormatFloat('0.00',cdsProduto_ConsumoQTD_CONSUMO.AsFloat * CurrencyEdit2.Value));
    mConsumoVlr_Unitario.AsFloat  := cdsProduto_ConsumoPRECO_VENDA.AsFloat;
    mConsumoVlr_Total.AsFloat     := StrToFloat(FormatFloat('0.00',cdsProduto_ConsumoPRECO_CALCULADO.AsFloat));
    mConsumo.Post;

    cdsProduto_Consumo.Next;
  end;}

end;

function TfrmSel_Sacola.fnc_Calcular_Preco: Real;
var
  vVlrAux : Real;
  vVlrTotal : Real;
begin
  SMDBGrid1.DisableScroll;
  vVlrTotal := 0;
  mConsumo.First;
  while not mConsumo.eof do
  begin
    vVlrAux := mConsumoVlr_Unitario.AsFloat * mConsumoQtd.AsFloat;
    vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal + vVlrAux));
    mConsumo.Next;
  end;
  Result := StrToFloat(FormatFloat('0.00',vVlrTotal));

  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_Sacola.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    CurrencyEdit2.Value := cdsProdutoPRECO_VENDA.AsFloat;
    prc_Gravar_mConsumo;
  end
  else
    mConsumo.EmptyDataSet;
end;

procedure TfrmSel_Sacola.prc_Gravar_mConsumo;
var
  vVlrSacola : Real;
  vVlrCalculado : Real;
  vAux : Real;
  vVlrDesconto : Real;
  vVlrAcrescimo : Real;
  vPerc : Real;
  vTipo_Calc : String; //A= Acrescimo    D= Desconto
  vSaldo : Real;
begin
  mConsumo.EmptyDataSet;

  vVlrSacola    := CurrencyEdit2.Value;
  CurrencyEdit3.Value := CurrencyEdit2.Value * CurrencyEdit1.Value;

  vVlrCalculado := fnc_Calcular_Preco_Orig;
  //if StrToFloat(FormatFloat('0.00',vVlrCalculado)) <= StrToFloat(FormatFloat('0.00',vVlrSacola)) then
  //begin
  //  MessageDlg('*** Valor dos produtos menor que o valor da Sacola!', mtError, [mbOk], 0);
  //  exit;
  //end;
  if StrToFloat(FormatFloat('0.00',vVlrCalculado)) <= StrToFloat(FormatFloat('0.00',vVlrSacola)) then
    vVlrAcrescimo := StrToFloat(FormatFloat('0.0000',((vVlrSacola / vVlrCalculado) * 100) - 100))
  else
    vVlrDesconto := StrToFloat(FormatFloat('0.0000',100 - ((vVlrSacola / vVlrCalculado) * 100)));
  if StrToFloat(FormatFloat('0.00',vVlrDesconto)) <= StrToFloat(FormatFloat('0.00',0)) then
    vVlrDesconto := StrToFloat(FormatFloat('0.00',0))
  else
  if StrToFloat(FormatFloat('0.00',vVlrAcrescimo)) <= StrToFloat(FormatFloat('0.00',0)) then
    vVlrAcrescimo := StrToFloat(FormatFloat('0.00',0));
  vTipo_Calc := 'D';
  if StrToFloat(FormatFloat('0.0000',vVlrAcrescimo)) > 0 then
    vTipo_Calc := 'A';
  cdsProduto_Consumo.Close;
  sdsProduto_Consumo.ParamByName('ID').AsInteger := cdsProdutoID.AsInteger;
  cdsProduto_Consumo.Open;
  cdsProduto_Consumo.First;
  while not cdsProduto_Consumo.Eof do
  begin
    vAux := StrToFloat(FormatFloat('0.0000',cdsProduto_ConsumoPRECO_VENDA.AsFloat));
    if vTipo_Calc = 'A' then
      if StrToFloat(FormatFloat('0.00',vVlrAcrescimo)) > 0 then
        vAux := StrToFloat(FormatFloat('0.0000',cdsProduto_ConsumoPRECO_VENDA.AsFloat + (cdsProduto_ConsumoPRECO_VENDA.AsFloat * vVlrAcrescimo / 100)))
    else
    begin
      if StrToFloat(FormatFloat('0.00',vVlrDesconto)) > 0 then
        vAux := StrToFloat(FormatFloat('0.0000',cdsProduto_ConsumoPRECO_VENDA.AsFloat - (cdsProduto_ConsumoPRECO_VENDA.AsFloat * vVlrDesconto / 100)));
    end;

    mConsumo.Insert;
    mConsumoID_Material.AsInteger     := cdsProduto_ConsumoID_MATERIAL.AsInteger;
    mConsumoReferencia.AsString       := cdsProduto_ConsumoREFERENCIA_MAT.AsString;
    mConsumoNome.AsString             := cdsProduto_ConsumoNOME_MAT.AsString;
    mConsumoQtd.AsFloat               := StrToFloat(FormatFloat('0.00',cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
    mConsumoQtd_Nota.AsFloat          := StrToFloat(FormatFloat('0.00',cdsProduto_ConsumoQTD_CONSUMO.AsFloat * CurrencyEdit1.Value));

    mConsumoVlr_Unitario.AsFloat      := cdsProduto_ConsumoPRECO_VENDA.AsFloat;
    mConsumoVlr_Unitario_Nota.AsFloat := StrToFloat(FormatFloat('0.0000',vAux));
    mConsumoVlr_Total.AsFloat         := StrToFloat(FormatFloat('0.00',vAux * cdsProduto_ConsumoQTD_CONSUMO.AsFloat * CurrencyEdit1.Value));
    mConsumo.Post;

    cdsProduto_Consumo.Next;
  end;

end;

procedure TfrmSel_Sacola.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo1.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'P';
    frmSel_Produto.ShowModal;
    FreeAndNil(frmSel_Produto);
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodProduto_Pos;
  end;
end;

procedure TfrmSel_Sacola.SMDBGrid1DblClick(Sender: TObject);
begin
  if (mConsumo.IsEmpty) or (mConsumoID_Material.AsInteger <= 0) then
    exit;

  vCodProduto_Pos := 0;
  frmSel_Produto := TfrmSel_Produto.Create(Self);
  frmSel_Produto.vTipo_Prod := 'M';
  frmSel_Produto.ShowModal;
  FreeAndNil(frmSel_Produto);
  if vCodProduto_Pos > 0 then
  begin
    qMaterial.Close;
    qMaterial.ParamByName('ID').AsInteger := vCodProduto_Pos;
    qMaterial.Open;

    mConsumo.Edit;
    mConsumoID_Material.AsInteger     := qMaterialID.AsInteger;
    mConsumoReferencia.AsString       := qMaterialREFERENCIA.AsString;
    mConsumoNome.AsString             := qMaterialNOME.AsString;
    mConsumoVlr_Unitario.AsFloat      := qMaterialPRECO_VENDA.AsFloat;
    mConsumoVlr_Unitario_Nota.AsFloat := qMaterialPRECO_VENDA.AsFloat;
    mConsumoVlr_Total.AsFloat         := StrToFloat(FormatFloat('0.00',qMaterialPRECO_VENDA.AsFloat * mConsumoQtd.AsFloat));

    mConsumo.Post;
  end;
end;

function TfrmSel_Sacola.fnc_Calcular_Preco_Orig: Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.CommandText := ' SELECT sum((c.qtd_consumo * ' + IntToStr(CurrencyEdit1.AsInteger) + ' ) * MAT.preco_venda) PRECO_MATERIAL '
                     + ' FROM PRODUTO_CONSUMO C'
                     + ' INNER JOIN PRODUTO MAT'
                     + ' ON C.id_material = MAT.id'
                     + ' WHERE C.ID = :ID';
    sds.ParamByName('ID').AsInteger := cdsProdutoID.AsInteger;
    sds.Open;
    Result := sds.FieldByName('PRECO_MATERIAL').AsFloat;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmSel_Sacola.FormShow(Sender: TObject);
begin
  cdsProduto.Open;
  RxDBLookupCombo2.LookupSource := fDMCadNotaFiscal.dsCFOP;
  if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0 then
    RxDBLookupCombo2.KeyValue := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
end;

procedure TfrmSel_Sacola.prc_Gravar_NotaItens;
var
  vItemAux: Integer;
  vNum_Controle_Tam : Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto : String;
begin
  ffrmCadNotaFiscal_Itens.vSacolaSelecionada := True;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;

  if ffrmCadNotaFiscal_Itens.vItem_Original <= 0 then
  begin
    ffrmCadNotaFiscal_Itens.vItem_Original := vItemAux;
    prc_Gravar_NotaFiscal_ProdPrincipal(vItemAux);
  end;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger        := vItemAux;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := mConsumoID_Material.AsInteger; 
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger      := 0;

  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger   := RxDBLookupCombo2.KeyValue;
  ffrmCadNotaFiscal_Itens.RxDBLookupCombo1.KeyValue       := RxDBLookupCombo2.KeyValue;
  ffrmCadNotaFiscal_Itens.RxDBLookupCombo1Exit(ffrmCadNotaFiscal_Itens);
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;

  ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;

  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.0000',mConsumoQtd_Nota.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000',mConsumoVlr_Unitario_Nota.AsFloat));
  if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));

  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100))
    else
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := mConsumoNome.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := mConsumoReferencia.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat     := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := '';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString        := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString  := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString    := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger   := ffrmCadNotaFiscal_Itens.vItem_Original;

  ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);

  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
end;

procedure TfrmSel_Sacola.BitBtn1Click(Sender: TObject);
var
  vVlrTotal : Real;
begin
  vVlrTotal := 0;
  mConsumo.First;
  while not mConsumo.Eof do
  begin
    vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal + mConsumoVlr_Unitario_Nota.AsFloat * mConsumoQtd_Nota.AsFloat));
    mConsumo.Next;
  end;
  Label5.Caption := FormatFloat('0.00',vVlrTotal);
end;

procedure TfrmSel_Sacola.CurrencyEdit1Exit(Sender: TObject);
begin
  CurrencyEdit3.Value := CurrencyEdit2.Value * CurrencyEdit1.Value;
end;

procedure TfrmSel_Sacola.prc_Gravar_NotaFiscal_ProdPrincipal(Item : Integer);
begin
  fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalID.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalITEM_ORIGINAL.AsInteger := Item;
  fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalID_PRODUTO.AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalVLR_PRODUTO.AsFloat  := CurrencyEdit2.Value;
  fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalQTD.AsFloat          := CurrencyEdit1.Value;
  fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalVLR_TOTAL.AsFloat    := CurrencyEdit3.Value;
  fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.Post;
end;

end.

unit uRelPedido_JW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, DB, DBTables, RLBarcode, jpeg, UDMCadPedido, UDMRel,
  RLFilters, RLPDFFilter;

type
  TfRelPedido_JW = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText17: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDraw7: TRLDraw;
    RLBand4: TRLBand;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel40: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText7: TRLDBText;
    rlEndereco: TRLLabel;
    RLBand5: TRLBand;
    RLLabel56: TRLLabel;
    RLMemo2: TRLMemo;
    RLDraw8: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLLabel6: TRLLabel;
    rlEndFilial: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel57: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel58: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel59: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel60: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel61: TRLLabel;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText9: TRLDBText;
    RLBand7: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLDBText16: TRLDBText;
    RLDBText23: TRLDBText;
    RLBand3: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLLabel22: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText27: TRLDBText;
    RLDraw9: TRLDraw;
    RLImage2: TRLImage;
    RLMemo3: TRLMemo;
    RLDBText25: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText40: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLLabel38: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel39: TRLLabel;
    RLDBText43: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel41: TRLLabel;
    RLDBText44: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vImp_Foto : Boolean;
    vImp_Peso : Boolean;
    vImpPreco : Boolean;

  end;

var
  fRelPedido_JW: TfRelPedido_JW;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfRelPedido_JW.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  if vImp_Foto then
    RLBand2.Height := 64
  else
    RLBand2.Height := 31;
  RLImage2.Visible := vImp_Foto;

  if fDMCadPedido.qParametros_PedUSA_DTVALIDADE.AsString = 'S' then
  begin
    RLDBText3.DataField := 'DTVALIDADE';
    RLDBText27.Visible := False;
    RLLabel28.Visible   := False;
  end
  else
  begin
    RLDBText3.DataField := 'VALIDADE';
    RLDBText27.Visible := True;
    RLLabel28.Visible   := True;
  end;

  if (fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger > 0) and (fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger = fDMCadPedido.cdsPedidoImpID_CLIENTE.AsInteger) then
    RLDBText4.DataField := 'NOME_CONSUMIDOR'
  else
    RLDBText4.DataField := 'NOME_CLIENTE';
  RLLabel38.Visible  := fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'S2';
  RLDBText42.Visible := fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'S2';
  if fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString <> 'S2' then
  begin
    RLDBMemo1.Width := 404;
    RLBand2.Height  := 31;
  end
  else
  begin
    RLDBMemo1.Width := 354;
    RLBand2.Height  := 17;
  end;
end;

procedure TfRelPedido_JW.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  rlEndFilial.Caption  := fDMCadPedido.cdsPedidoImpEND_FILIAL.AsString + ',' + fDMCadPedido.cdsPedidoImpNUM_END_FILIAL.AsString;
  rlEndereco.Caption   := fDMCadPedido.cdsPedidoImpEND_CLIENTE.AsString + ', ' + fDMCadPedido.cdsPedidoImpNUM_END_CLIENTE.AsString;
  RLLabel31.Visible  := ((fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger > 0) and (fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger = fDMCadPedido.cdsPedidoImpID_CLIENTE.AsInteger));
  RLDBText40.Visible := ((fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger > 0) and (fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger = fDMCadPedido.cdsPedidoImpID_CLIENTE.AsInteger));
  try
    RLImage1.Picture.LoadFromFile(fDMCadPedido.cdsFilialENDLOGO.AsString)
  except
     RLImage1.Picture := nil;
  end;
end;

procedure TfRelPedido_JW.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  if trim(fDMCadPedido.qParametros_PedOBS_PEDIDO.AsString) <> '' then
   RLMemo1.Lines.Text := fDMCadPedido.qParametros_PedOBS_PEDIDO.AsString + #13 + #13;
  RLMemo1.Lines.Text := RLMemo1.Lines.Text + fDMCadPedido.cdsPedidoImpOBS.Value;
end;

procedure TfRelPedido_JW.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdPed : Real;
  vTexto : String;
  vAux, I : Integer;
  vVlrTotalAux : Real;
begin
  vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
  vVlrTotalAux := StrToFloat(FormatFloat('0.00',vQtdPed * fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat));
  vAux := 4;
  vTexto := '0.';
  for i := 1 to vAux do
    vTexto := vTexto + '0';
  if vImp_Foto then
  begin
    try
      RLImage2.Picture.LoadFromFile(fDMCadPedido.cdsPedidoImp_ItensEND_FOTO.AsString)
    except
       RLImage2.Picture := nil;
    end;
  end;

  RLMemo3.Lines.Clear;
  vTexto := '';
  if fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'S2' then
  begin
    vTexto := '';
    //if StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedidoImp_ItensCOMPRIMENTO.AsFloat)) > 0 then
    // vTexto := 'Comprimento (mm): ' + fDMCadPedido.cdsPedidoImp_ItensCOMPRIMENTO.AsString;
  end
  else
  if fDMCadPedido.cdsPedidoImp_ItensTIPO_ORCAMENTO_1.AsString = 'C' then
  begin
    vTexto := 'Comprimento (mm): ' + fDMCadPedido.cdsPedidoImp_ItensCOMPRIMENTO.AsString;
    vTexto := vTexto + '  -  Largura (mm): ' + fDMCadPedido.cdsPedidoImp_ItensLARGURA.AsString;
    vTexto := vTexto + '  - Espessura (mm): ' + fDMCadPedido.cdsPedidoImp_ItensESPESSURA.AsString;
  end
  else
  if fDMCadPedido.cdsPedidoImp_ItensTIPO_ORCAMENTO_1.AsString = 'R' then
  begin
    vTexto := 'Diametro (mm): ' + fDMCadPedido.cdsPedidoImp_ItensDIAMETRO.AsString;
    vTexto := vTexto + '  -  Comprimento (mm): ' + fDMCadPedido.cdsPedidoImp_ItensCOMPRIMENTO.AsString;
  end
  else
  if fDMCadPedido.cdsPedidoImp_ItensTIPO_ORCAMENTO_1.AsString = 'T' then
  begin
    vTexto := 'Diametro Externo (mm): ' + fDMCadPedido.cdsPedidoImp_ItensDIAMETRO_EXT.AsString;
    vTexto := vTexto + '  -  Diametro Interno (mm): ' + fDMCadPedido.cdsPedidoImp_ItensDIAMETRO_INT.AsString;
    vTexto := vTexto + '  -  Parede (mm): ' + fDMCadPedido.cdsPedidoImp_ItensPAREDE.AsString;
    vTexto := vTexto + '  -  Comprimento (mm): ' + fDMCadPedido.cdsPedidoImp_ItensCOMPRIMENTO.AsString;
  end;
  RLMemo3.Lines.Text := vTexto;

  RLDBText16.Visible := vImpPreco;
  RLDBText23.Visible := vImpPreco;
  RLDBText44.Visible := vImpPreco;
  RLDBText26.Visible := ((vImpPreco) and (vImp_Peso));
  if fDMCadPedido.qParametros_PedUSA_DTVALIDADE.AsString <> 'S' then
    RLDBText27.Visible := vImp_Peso;
  RLDBText29.Visible := vImp_Peso;
end;

procedure TfRelPedido_JW.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := True;
  RLMemo2.Lines.Clear;
  if trim(fDMCadPedido.cdsPedidoImp_ItensOBS.AsString) = '' then
    PrintIt := False;
  if not PrintIt then
    exit;
  RLMemo2.Lines.Text := fDMCadPedido.cdsPedidoImp_ItensOBS.AsString;
end;

procedure TfRelPedido_JW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedido_JW.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelPedido_JW.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelPedido_JW.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel35.Visible := vImpPreco;
  RLLabel34.Visible := vImpPreco;
  RLLabel41.Visible := vImpPreco;
  RLLabel27.Visible := ((vImpPreco) and (vImp_Peso));
  if fDMCadPedido.qParametros_PedUSA_DTVALIDADE.AsString <> 'S' then
    RLLabel28.Visible := vImp_Peso;
  RLLabel29.Visible := vImp_Peso;
end;

procedure TfRelPedido_JW.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel40.Visible  := vImpPreco;
  RLDBText32.Visible := vImpPreco;
  RLLabel8.Visible   := vImpPreco;
  RLDBText9.Visible  := vImpPreco;
  RLLabel15.Visible  := vImpPreco;
  RLDBText8.Visible  := vImpPreco;
  RLLabel45.Visible  := vImpPreco;
  RLDBText34.Visible := vImpPreco;
end;

end.

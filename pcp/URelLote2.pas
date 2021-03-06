unit URelLote2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadLote, RLBarcode, jpeg, UDMRel;

type
  TfRelLote2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
    RLDraw2: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLDraw5: TRLDraw;
    RLBarcode1: TRLBarcode;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw4: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLDraw6: TRLDraw;
    RLDBText16: TRLDBText;
    RLDraw7: TRLDraw;
    RLDBText18: TRLDBText;
    RLBand2: TRLBand;
    RLDraw8: TRLDraw;
    RLMemo1: TRLMemo;
    RLDraw9: TRLDraw;
    RLImage2: TRLImage;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText3: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLLabel15: TRLLabel;
    RLDBText10: TRLDBText;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText14: TRLDBText;
    RLBand3: TRLBand;
    RLDraw10: TRLDraw;
    RLBand4: TRLBand;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1AfterPrint(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLSubDetail2BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLDetailGrid2BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadLote: TDMCadLote;
    vTipo_Rel: String; //L= Lote   T= Tal�o

  end;

var
  fRelLote2: TfRelLote2;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelLote2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Tag    := 0;
  Action := Cafree;
end;

procedure TfRelLote2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadLote);
end;

procedure TfRelLote2.RLDetailGrid1AfterPrint(Sender: TObject);
begin
  RLLabel14.Visible := False;
  RLLabel16.Visible := False;
end;

procedure TfRelLote2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
  if not PrintIt then
    exit;
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := fDMCadLote.fnc_Buscar_NumPedido(fDMCadLote.mLoteID_Lote.AsInteger);
end;

procedure TfRelLote2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
  if not PrintIt then
    exit;
  if vTipo_Rel = 'T' then
  begin
    RLLabel2.Caption := 'Tal�o N�:';
    RLLabel8.Caption := fDMCadLote.mLoteNum_Talao.AsString + ' /' + fDMCadLote.mLoteQtd_Taloes.AsString;
    RLLabel5.Caption := '2' + FormatFloat('000000',fDMCadLote.mLoteNum_Lote.AsInteger) + FormatFloat('0000',fDMCadLote.mLoteNum_Talao.AsInteger);
  end
  else
  begin
    RLLabel2.Caption := 'N� de Tal�es:';
    RLLabel8.Caption := fDMCadLote.mLoteQtd_Taloes.AsString;
    RLLabel5.Caption   := '9' + FormatFloat('000000',fDMCadLote.mLoteNum_Lote.AsInteger);
  end;
  RLLabel10.Visible := ((vTipo_Rel <> 'L') and (trim(fDMCadLote.mLoteTamanho.AsString) <> ''));
  RLDBText3.Visible := ((vTipo_Rel <> 'L') and (trim(fDMCadLote.mLoteTamanho.AsString) <> ''));

  RLBarcode1.Caption := RLLabel5.Caption;
  RLBarcode1.Refresh;

  if fDMCadLote.qParametrosMOSTRAR_MAT_LOTE.AsString = 'S' then
  begin
    fDMCadLote.cdsProduto_Consumo.Close;
    fDMCadLote.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDMCadLote.mLoteID_Produto.AsInteger;
    fDMCadLote.cdsProduto_Consumo.Open;
  end;
end;

procedure TfRelLote2.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelLote2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelLote2.RLSubDetail2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
end;

procedure TfRelLote2.RLDetailGrid2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux: Real;  
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
  if not PrintIt then
    exit;
  PrintIt := ((fDMCadLote.qParametrosMOSTRAR_MAT_LOTE.AsString = 'S') and (fDMCadLote.cdsProduto_ConsumoIMP_TALAO.AsString = 'S'));
  if not PrintIt then
    exit;
   
  if fDMCadLote.cdsProduto_ConsumoTIPO_CONSUMO.AsString = 'T' then
  begin
    if vTipo_Rel = 'L' then
      vAux := fDMCadLote.fnc_Somar_Consumo
    else
      vAux := fDMCadLote.fnc_Somar_Consumo_Talao;
  end
  else
    vAux := StrToFloat(FormatFloat('0.00000',fDMCadLote.cdsProduto_ConsumoQTD_CONSUMO.AsFloat * fDMCadLote.mLoteQtd.AsFloat));
  RLLabel17.Caption := FormatFloat('0.0000',vAux);
end;

procedure TfRelLote2.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
  if not PrintIt then
    exit;
  PrintIt := (fDMCadLote.qParametrosMOSTRAR_MAT_LOTE.AsString = 'S');
end;

procedure TfRelLote2.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (Tag = 1) and (fDMCadLote.mLoteSelecionado.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
  if not PrintIt then
    exit;
  PrintIt := (fDMCadLote.qParametrosMOSTRAR_MAT_LOTE.AsString = 'S');
end;

end.

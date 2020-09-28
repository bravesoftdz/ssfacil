unit UCadNotaFiscal_Desconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask,
  DBCtrls, ExtCtrls, ToolEdit, CurrEdit, Grids, DBGrids, SMDBGrid, UDMCadNotaFiscal, DB, Math;

type
  TfrmCadNotaFiscal_Desconto = class(TForm)
    Label47: TLabel;
    Label54: TLabel;
    DBEdit23: TDBEdit;
    Label48: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    ceVlrDesconto: TCurrencyEdit;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    cePercentual: TCurrencyEdit;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    ceVlrDesconto_Itens: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure ceVlrDescontoExit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    function  fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;

  end;

var
  frmCadNotaFiscal_Desconto: TfrmCadNotaFiscal_Desconto;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Desconto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Desconto.BitBtn1Click(Sender: TObject);
var
  vVlrDescAux: Currency;
  vVlrDuplAux, vAux: Currency;
  vVlrDesconto: Currency;
begin
  vVlrDescAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsCurrency - fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO_ITENS.AsFloat));

  vVlrDesconto := 0;
  //21/10/2015
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0 then
    vVlrDuplAux := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + vVlrDescAux - fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat
  else
    vVlrDuplAux := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsCurrency + vVlrDescAux - fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_Desconto.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Eof do
    begin
      vAux := StrToFloat(FormatFloat('0.00',(vVlrDuplAux * fDMCadNotaFiscal.cdsNotaFiscal_DescontoPERC_DESCONTO.AsCurrency) / 100));
      vVlrDesconto := vVlrDesconto + vAux;
      vVlrDuplAux  := vVlrDuplAux - vAux;

      fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Next;
    end;

  if vVlrDesconto > 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Desconto.First;
    ceVlrDesconto.Value := vVlrDesconto;
    if fDMCadNotaFiscal.cdsNotaFiscal_Desconto.RecordCount < 2 then
      CurrencyEdit1.Value := fDMCadNotaFiscal.cdsNotaFiscal_DescontoPERC_DESCONTO.AsFloat
    else
      ceVlrDescontoExit(Sender);
  end;

  fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat := CurrencyEdit1.Value;;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat  := StrToFloat(FormatFloat('0.00',ceVlrDesconto.Value + fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO_ITENS.AsFloat));

  if (CurrencyEdit1.Value > 0) and (ceVlrDesconto.Value > 0) and (trim(fDMCadNotaFiscal.cdsNotaFiscalDESCRICAO_DESC.AsString) = '') then
    fDMCadNotaFiscal.cdsNotaFiscalDESCRICAO_DESC.AsString := 'Desconto: ';

  Close;
end;

procedure TfrmCadNotaFiscal_Desconto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  CurrencyEdit1.Value := fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsCurrency;
  ceVlrDesconto.Value := fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsCurrency - fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO_ITENS.AsCurrency;
  ceVlrDesconto_Itens.Value := fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO_ITENS.AsCurrency;

  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsCurrency)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat)) <= 0) then
    CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTOORIG.AsFloat));
end;

procedure TfrmCadNotaFiscal_Desconto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadNotaFiscal_Desconto.CurrencyEdit1Exit(Sender: TObject);
var
  vDescAux : Real;
begin
  vDescAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO_ITENS.AsFloat));
  ceVlrDesconto.Value := 0;
  if CurrencyEdit1.Value > 0 then
  begin
    ceVlrDesconto.Value := (fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsCurrency + vDescAux - fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat) *
                           CurrencyEdit1.Value / 100;
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0 then
      ceVlrDesconto.Value := (fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsCurrency + vDescAux - fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat)
                           * CurrencyEdit1.Value / 100
    else
      ceVlrDesconto.Value := (fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + vDescAux - fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat) * CurrencyEdit1.Value / 100;
  end;
end;

procedure TfrmCadNotaFiscal_Desconto.ceVlrDescontoExit(Sender: TObject);
var
  vDescAux : Real;
begin
  vDescAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO_ITENS.AsFloat));
  if ceVlrDesconto.Value > 0 then
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0 then
      CurrencyEdit1.Value := StrToFloat(FormatFloat('0.0000',ceVlrDesconto.Value * 100 / (fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsCurrency + vDescAux - fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat)))
    else
      CurrencyEdit1.Value := StrToFloat(FormatFloat('0.0000',CurrencyEdit1.Value * 100 / (fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + vDescAux - fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat)));
  end
  else
    CurrencyEdit1.Clear;
end;

procedure TfrmCadNotaFiscal_Desconto.BitBtn7Click(Sender: TObject);
var
  vItemAux: Integer;
begin
  if fnc_Erro then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_DescontoITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_DescontoID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_DescontoITEM.AsInteger        := vItemAux + 1;
  fDMCadNotaFiscal.cdsNotaFiscal_DescontoPERC_DESCONTO.AsFloat := cePercentual.Value;
  fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Post;

  cePercentual.Clear;
  cePercentual.SetFocus;
end;

procedure TfrmCadNotaFiscal_Desconto.BitBtn3Click(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Desconto.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_DescontoID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir o percentual?',mtWarning,[mbOK,mbNO],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Delete;
end;

function TfrmCadNotaFiscal_Desconto.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if cePercentual.Value <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Percentual n�o informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

end.

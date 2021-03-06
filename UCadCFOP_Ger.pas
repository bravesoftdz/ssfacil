unit UCadCFOP_Ger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, RxDBComb, RxLookup,
  ExtCtrls, RzPanel, NxCollection, UDMCadCFOP;

type
  TfrmCadCFOP_Ger = class(TForm)
    RzGroupBox1: TRzGroupBox;
    Label12: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Panel3: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    CheckBox1: TCheckBox;
    RzGroupBox4: TRzGroupBox;
    Label10: TLabel;
    Memo1: TMemo;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    edtCBenef: TEdit;
    ckFCP_Geral: TCheckBox;
    ckFCP_Simples: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtCBenefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCBenefExit(Sender: TObject);
    procedure RxDBLookupCombo7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadCFOP: TDMCadCFOP;
    
  end;

var
  frmCadCFOP_Ger: TfrmCadCFOP_Ger;

implementation

uses rsDBUtils, uUtilPadrao, USel_CBenef, USel_EnqIPI;

{$R *.dfm}

procedure TfrmCadCFOP_Ger.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCFOP_Ger.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadCFOP);
  CheckBox1.Visible := (fDMCadCFOP.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S');
  fDMCadCFOP.cdsTab_CSTICMS_Simples.Close;
  fDMCadCFOP.cdsTab_CSTICMS_Simples.Open;
  fDMCadCFOP.prc_abrir_csticms('G');
end;

procedure TfrmCadCFOP_Ger.btnConfirmarClick(Sender: TObject);
const
  vTipo_Empresa: array[1..12] of String  = ('G','G','G','G','G','G','S','S','S','S','S','S');
  vTipo_Cliente: array[1..12] of String  = ('G','G','G','S','S','S','G','G','G','S','S','S');
  vTipo_Pessoa : array[1..12] of String  = ('J','J','F','J','J','F','J','J','F','J','J','F');
  vTipo_Consum : array[1..12] of Integer = (0,1,1,0,1,1,0,1,1,0,1,1);
var
  vItemAux : Integer;
  i : Integer;
begin
  if RxDBLookupCombo4.Text = '' then
  begin
    MessageDlg('*** CST ICMS n�o lan�ada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if RxDBLookupCombo5.Text = '' then
  begin
    MessageDlg('*** CST IPI n�o lan�ada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vItemAux := 0;
  for i := 1 to 12 do
  begin
    fDMCadCFOP.prc_Inserir_Itens;
    fDMCadCFOP.cdsCFOP_VariacaoITEM.AsInteger := i;
    fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString     := vTipo_Empresa[i];
    fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString     := vTipo_Cliente[i];
    fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString   := vTipo_Pessoa[i];
    fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger := vTipo_Consum[i];
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G' then
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := 'Geral'
    else
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := 'Simples';
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString = 'G' then
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Geral'
    else
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Simples';
    if fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'J' then
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Jur�dica'
    else
    if fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'F' then
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/F�sica';
    if not fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.IsNull then
    begin
      if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 0 then
        fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Cons.Normal'
      else
      if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 1 then
        fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Cons.Final';
    end;
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G' then
    begin
      fDMCadCFOP.cdsCFOP_VariacaoID_CSTICMS.AsInteger  := RxDBLookupCombo4.KeyValue;
      fDMCadCFOP.cdsCFOP_VariacaoCOD_BENEF.AsString    := edtCBenef.Text;
      if ckFCP_Geral.Checked then
        fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_FCP.AsString := 'S'
      else
        fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_FCP.AsString := 'N';
    end
    else
    begin
      fDMCadCFOP.cdsCFOP_VariacaoID_CSTICMS.AsInteger := RxDBLookupCombo1.KeyValue;
      fDMCadCFOP.cdsCFOP_VariacaoCOD_BENEF.AsString   := '';
      if ckFCP_Simples.Checked then
        fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_FCP.AsString := 'S'
      else
        fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_FCP.AsString := 'N';
    end;
    fDMCadCFOP.cdsCFOP_VariacaoID_CSTIPI.AsInteger  := RxDBLookupCombo5.KeyValue;
    if RxDBLookupCombo7.Text <> '' then
      fDMCadCFOP.cdsCFOP_VariacaoID_ENQIPI.AsInteger  := RxDBLookupCombo7.KeyValue;
    if CheckBox1.Checked then
      fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_ST.AsString := 'S'
    else
      fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_ST.AsString := 'N';
    if trim(Memo1.Text) <> '' then
      fDMCadCFOP.cdsCFOP_VariacaoLEI.Value := Memo1.Text;
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G' then
      fDMCadCFOP.cdsCFOP_VariacaoCOD_ICMS.AsString := RxDBLookupCombo4.Text
    else
      fDMCadCFOP.cdsCFOP_VariacaoCOD_ICMS.AsString := RxDBLookupCombo1.Text;
    fDMCadCFOP.cdsCFOP_VariacaoCOD_IPI.AsString  := RxDBLookupCombo5.Text;
    if RxDBLookupCombo7.Text <> '' then
      fDMCadCFOP.cdsCFOP_VariacaoCOD_ENQ.AsString  := RxDBLookupCombo7.Text;


    fDMCadCFOP.cdsCFOP_Variacao.Post;
  end;
  Close;
end;

procedure TfrmCadCFOP_Ger.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCFOP_Ger.edtCBenefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCod_CBenef := edtCBenef.Text;
    frmSel_CBenef := TfrmSel_CBenef.Create(Self);
    if (RxDBLookupCombo4.Text <> '') and (Length(RxDBLookupCombo4.Text) = 2) then
      frmSel_CBenef.vCod_CST := RxDBLookupCombo4.Text;
    frmSel_CBenef.ShowModal;
    if trim(vCod_CBenef) <> '' then
      edtCBenef.Text := vCod_CBenef;
    FreeAndNil(frmSel_CBenef);
  end;
end;

procedure TfrmCadCFOP_Ger.edtCBenefExit(Sender: TObject);
begin
  if not fnc_Existe_CBenef(edtCBenef.Text) then
  begin
    MessageDlg('*** C�digo Benef�cio Fiscal n�o encontrado!', mtInformation, [mbOk], 0);
    edtCBenef.SetFocus;
  end;
end;

procedure TfrmCadCFOP_Ger.RxDBLookupCombo7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo7.Text <> '' then
      viD_EnqIPI_Pos := RxDBLookupCombo7.KeyValue;
    frmSel_EnqIPI := TfrmSel_EnqIPI.Create(Self);
    frmSel_EnqIPI.ShowModal;
    if viD_EnqIPI_Pos > 0 then
      RxDBLookupCombo7.KeyValue := viD_EnqIPI_Pos
    else
      RxDBLookupCombo7.ClearValue;
    FreeAndNil(frmSel_EnqIPI);
  end;
end;

end.

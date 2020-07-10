unit UCadPessoa_ProdICMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, UDMCadPessoa,
  Grids, DBGrids, SMDBGrid, DB, DBCtrls, Buttons, NxEdit;

type
  TfrmCadPessoa_ProdICMS = class(TForm)
    NxPanel1: TNxPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    NxPanel2: TNxPanel;
    btnConfirmar: TNxButton;
    btnExcluir: TNxButton;
    Label5: TLabel;
    SMDBGrid9: TSMDBGrid;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBMemo1: TDBMemo;
    CheckBox1: TCheckBox;
    Label7: TLabel;
    edtCBenef: TEdit;
    SpeedButton4: TSpeedButton;
    cbFinalidade: TNxComboBox;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCBenefExit(Sender: TObject);
    procedure edtCBenefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    vIndice_Loc : String;
  public
    { Public declarations }
    fDMCadPessoa: TDMCadPessoa;
    
  end;

var
  frmCadPessoa_ProdICMS: TfrmCadPessoa_ProdICMS;

implementation

uses rsDBUtils, uUtilPadrao, USel_Produto, USel_CBenef;

{$R *.dfm}

procedure TfrmCadPessoa_ProdICMS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadPessoa.cdsTab_CSTICMS.IndexFieldNames := vIndice_Loc;
  Action := Cafree;
end;

procedure TfrmCadPessoa_ProdICMS.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  vIndice_Loc := fDMCadPessoa.cdsTab_CSTICMS.IndexFieldNames;
  fDMCadPessoa.cdsTab_CSTICMS.IndexFieldNames := 'COD_CST';
  btnConfirmar.Enabled := (fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled   := (fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert]);
end;

procedure TfrmCadPessoa_ProdICMS.btnConfirmarClick(Sender: TObject);
var
  vItem : Integer;
begin
  if (CurrencyEdit1.AsInteger <= 0) or (RxDBLookupCombo1.Text = '') then
  begin
    MessageDlg('*** ID Produto e a CST ICMS s�o campos obrigat�rios!', mtError, [mbOk], 0);
    CurrencyEdit1.SetFocus;
    exit;
  end;
  fDMCadPessoa.cdsPessoa_ProdICMS.Last;
  vItem := fDMCadPessoa.cdsPessoa_ProdICMSITEM.AsInteger;

  fDMCadPessoa.cdsPessoa_ProdICMS.Insert;
  fDMCadPessoa.cdsPessoa_ProdICMSCODIGO.AsInteger     := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_ProdICMSITEM.AsInteger       := vItem + 1;
  fDMCadPessoa.cdsPessoa_ProdICMSID_PRODUTO.AsInteger := CurrencyEdit1.AsInteger;
  fDMCadPessoa.cdsPessoa_ProdICMSID_CSTICMS.AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadPessoa.cdsPessoa_ProdICMSCOD_BENEF.AsString   := edtCBenef.Text;
  if RxDBLookupCombo2.Text <> '' then
    fDMCadPessoa.cdsPessoa_ProdICMSID_LEI.AsInteger := RxDBLookupCombo2.KeyValue;
  if CheckBox1.Checked then
    fDMCadPessoa.cdsPessoa_ProdICMSDRAWBACK.AsString := 'S'
  else
    fDMCadPessoa.cdsPessoa_ProdICMSDRAWBACK.AsString := 'N';
  case cbFinalidade.ItemIndex of
    0 : fDMCadPessoa.cdsPessoa_ProdICMSFINALIDADE.AsString := 'A';
    1 : fDMCadPessoa.cdsPessoa_ProdICMSFINALIDADE.AsString := 'C';
    2 : fDMCadPessoa.cdsPessoa_ProdICMSFINALIDADE.AsString := 'R';
    3 : fDMCadPessoa.cdsPessoa_ProdICMSFINALIDADE.AsString := 'I';
    4 : fDMCadPessoa.cdsPessoa_ProdICMSFINALIDADE.AsString := 'O';
  end;
  fDMCadPessoa.cdsPessoa_ProdICMS.Post;

  CurrencyEdit1.Clear;
  RxDBLookupCombo1.ClearValue;
  edtCBenef.Clear;
  CurrencyEdit1.SetFocus;
end;

procedure TfrmCadPessoa_ProdICMS.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro ?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  fDMCadPessoa.cdsPessoa_ProdICMS.Delete;
end;

procedure TfrmCadPessoa_ProdICMS.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger <= 0 then
    exit;
  fDMCadPessoa.qProd.Close;
  fDMCadPessoa.qProd.ParamByName('ID').AsInteger := CurrencyEdit1.AsInteger;
  fDMCadPessoa.qProd.Open;
  if fDMCadPessoa.qProd.IsEmpty then
  begin
    MessageDlg('*** ID Produto n�o encontrado!', mtError, [mbOk], 0);
    CurrencyEdit1.SetFocus;
    exit;
  end;
  Label3.Caption := 'Refer�ncia: ' + fDMCadPessoa.qProdREFERENCIA.AsString;
  Label4.Caption := 'Nome: ' + fDMCadPessoa.qProdNOME.AsString;
end;

procedure TfrmCadPessoa_ProdICMS.CurrencyEdit1Change(Sender: TObject);
begin
  Label3.Caption := '';
  Label4.Caption := '';
end;

procedure TfrmCadPessoa_ProdICMS.RxDBLookupCombo1Change(Sender: TObject);
begin
  Label5.Caption := '%';
  if RxDBLookupCombo1.Text = '' then
    exit;
  Label5.Caption := '% Base: ' + FormatFloat('0.000',fDMCadPessoa.cdsTab_CSTICMSPERCENTUAL.AsFloat);
  if fDMCadPessoa.cdsTab_CSTICMSCOD_CST.AsString = '51' then
    Label5.Caption := Label5.Caption +  '   % Diferimento: ' + FormatFloat('0.000',fDMCadPessoa.cdsTab_CSTICMSPERC_DIFERIMENTO.AsFloat);
end;

procedure TfrmCadPessoa_ProdICMS.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := CurrencyEdit1.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    FreeAndNil(frmSel_Produto);
    CurrencyEdit1.AsInteger := vCodProduto_Pos;
  end;
end;

procedure TfrmCadPessoa_ProdICMS.edtCBenefExit(Sender: TObject);
begin
  if not fnc_Existe_CBenef(edtCBenef.Text) then
  begin
    MessageDlg('*** C�digo Benef�cio Fiscal n�o encontrado!', mtInformation, [mbOk], 0);
    edtCBenef.SetFocus;
  end;
end;

procedure TfrmCadPessoa_ProdICMS.edtCBenefKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCod_CBenef := edtCBenef.Text;
    frmSel_CBenef := TfrmSel_CBenef.Create(Self);
    if (RxDBLookupCombo1.Text <> '') and (Length(RxDBLookupCombo1.Text) = 2) then
      frmSel_CBenef.vCod_CST := RxDBLookupCombo1.Text;
    frmSel_CBenef.ShowModal;
    if trim(vCod_CBenef) <> '' then
      edtCBenef.Text := vCod_CBenef;
    FreeAndNil(frmSel_CBenef);
  end;
end;

procedure TfrmCadPessoa_ProdICMS.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPessoa.cdsTab_CSTICMS.Close;
  fDMCadPessoa.cdsTab_CSTICMS.Open;
end;

end.

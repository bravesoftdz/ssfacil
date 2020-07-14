unit UComissaoVend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDMComissaoVend, StdCtrls, ExtCtrls, Mask, ToolEdit, CurrEdit,
  NxCollection, RxLookup, Grids, DBGrids, SMDBGrid, UCBase, RzTabs;

type
  TfrmComissaoVend = class(TForm)
    UCControls1: TUCControls;
    RzPageControl1: TRzPageControl;
    TS_Gerar: TRzTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    btnConsultar: TNxButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ckVendedor: TCheckBox;
    RadioGroup2: TRadioGroup;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    btnConfirmar: TNxButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    TS_Consulta: TRzTabSheet;
    Panel3: TPanel;
    Label10: TLabel;
    btnImprimir: TNxButton;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMComissaoVend: TDMComissaoVend;
    vContador : integer;

    procedure prc_ConsProduto;
    procedure prc_Grava_Produto_Comissao_Vend;

  public
    { Public declarations }
  end;

var
  frmComissaoVend: TfrmComissaoVend;

implementation

uses uUtilPadrao, USel_Produto, rsDBUtils, DB;

{$R *.dfm}

procedure TfrmComissaoVend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmComissaoVend.FormShow(Sender: TObject);
begin
  fDMComissaoVend := TDMComissaoVend.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMComissaoVend);
end;

procedure TfrmComissaoVend.RxDBLookupCombo1Change(Sender: TObject);
begin
  ckVendedor.Visible := (RxDBLookupCombo1.Text <> '');
end;

procedure TfrmComissaoVend.btnConsultarClick(Sender: TObject);
begin
  prc_ConsProduto;
end;

procedure TfrmComissaoVend.prc_ConsProduto;

var
  vComando : String;
begin
  fDMComissaoVend.cdsConsProduto.Close;
  //Select
  vComando := 'SELECT P.ID, P.NOME, P.REFERENCIA, '
            + ' case '
            + ' when P.TIPO_REG = ' + QuotedStr('P') + ' Then ' + QuotedStr('Produto')
            + ' when P.TIPO_REG = ' + QuotedStr('S') + ' Then ' + QuotedStr('Semiacabado')
            + ' end Tipo_Produto, ';
  if RxDBLookupCombo1.Text = '' then
    vComando := vComando + ' cast(0 as Double Precision) PERC_COMISSAO '
  else
    vComando := vComando + ' PV.PERC_COMISSAO ' ;
  vComando := vComando + 'FROM PRODUTO P ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' left join produto_comissao_vend pv on p.id = pv.id AND PV.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  vComando := vComando + ' WHERE P.INATIVO = ' + QuotedStr('N');
  //********************
  //vComando := '';
  if CurrencyEdit3.AsInteger > 0 then
    vComando := vComando + ' AND P.ID = ' + IntToStr(CurrencyEdit3.AsInteger)
  else
  begin
    case RadioGroup2.ItemIndex of
      0 : vComando := vComando + ' AND (P.TIPO_REG = ' + QuotedStr('P') + ' or P.TIPO_REG = ' + QuotedStr('S') + ')';
      1 : vComando := vComando + ' AND P.TIPO_REG = ' + QuotedStr('P');
      2 : vComando := vComando + ' AND P.TIPO_REG = ' + QuotedStr('S');
    end;
    if trim(Edit3.Text) <> '' then
      vComando := vComando + ' AND P.REFERENCIA like ' + QuotedStr('%'+Edit3.Text+'%');
    if trim(Edit2.Text) <> '' then
      vComando := vComando + ' AND P.NOME like ' + QuotedStr('%'+Edit2.Text+'%');
    if RxDBLookupCombo1.Text <> '' then
    begin
      if ckVendedor.Checked then
        vComando := vComando + ' AND NOT EXISTS (SELECT 1 FROM produto_comissao_vend PV WHERE PV.ID = P.ID AND PV.id_vendedor = '
      else
        vComando := vComando + ' AND EXISTS (SELECT 1 FROM produto_comissao_vend PV WHERE PV.ID = P.ID AND PV.id_vendedor = ';
      vComando := vComando + IntToStr(RxDBLookupCombo1.KeyValue) + ')';
    end;
  end;
  fDMComissaoVend.sdsConsProduto.CommandText := vComando;
  fDMComissaoVend.cdsConsProduto.Open;
end;

procedure TfrmComissaoVend.CurrencyEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := CurrencyEdit3.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    FreeAndNil(frmSel_Produto);
    if vCodProduto_Pos > 0 then
      CurrencyEdit3.AsInteger := vCodProduto_Pos;
  end
  else
  if key = VK_RETURN then
    btnConsultarClick(Sender);
end;

procedure TfrmComissaoVend.btnConfirmarClick(Sender: TObject);
begin
  if RxDBLookupCombo2.Text = '' then
  begin
    MessageDlg('*** Representante n�o informado!', mtError, [mbOk], 0);
    RxDBLookupCombo2.SetFocus;
    exit;
  end;
  if CurrencyEdit2.Value <= 0 then
  begin
    MessageDlg('*** % Comiss�o n�o informado!', mtError, [mbOk], 0);
    CurrencyEdit2.SetFocus;
    exit;
  end;

  if MessageDlg('Deseja Confirmar os produtos selecionados para o Representante: ' + RxDBLookupCombo2.Text + '?' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vContador := 0;
  SMDBGrid1.DisableScroll;
  fDMComissaoVend.cdsConsProduto.First;
  while not fDMComissaoVend.cdsConsProduto.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
      prc_Grava_Produto_Comissao_Vend;

    fDMComissaoVend.cdsConsProduto.Next;
  end;
  SMDBGrid1.EnableScroll;

  if vContador > 0 then
    MessageDlg('*** Gravado ' + IntToStr(vContador) + ' Produtos no Representante ' + RxDBLookupCombo2.Text, mtConfirmation, [mbOk], 0)
  else
    MessageDlg('*** N�o foi gravado nenhum produto!', mtConfirmation, [mbOk], 0);
  btnConsultarClick(Sender);
  SMDBGrid1.UnSelectAllClick(Sender);
end;

procedure TfrmComissaoVend.prc_Grava_Produto_Comissao_Vend;
var
  vItem : Integer;
begin
  vItem := 0;
  fDMComissaoVend.cdsProduto_Comissao_Vend.Close;
  fDMComissaoVend.sdsProduto_Comissao_Vend.ParamByName('ID').AsInteger          := fDMComissaoVend.cdsConsProdutoID.AsInteger;
  fDMComissaoVend.sdsProduto_Comissao_Vend.ParamByName('ID_VENDEDOR').AsInteger := RxDBLookupCombo2.KeyValue;
  fDMComissaoVend.cdsProduto_Comissao_Vend.Open;
  if not fDMComissaoVend.cdsProduto_Comissao_Vend.IsEmpty then
    fDMComissaoVend.cdsProduto_Comissao_Vend.Edit
  else
  begin
    fDMComissaoVend.qProximoItem.Close;
    fDMComissaoVend.qProximoItem.ParamByName('ID').AsInteger := fDMComissaoVend.cdsConsProdutoID.AsInteger;
    fDMComissaoVend.qProximoItem.Open;
    vItem := fDMComissaoVend.qProximoItemITEM.AsInteger;
    fDMComissaoVend.cdsProduto_Comissao_Vend.Insert;
    fDMComissaoVend.cdsProduto_Comissao_VendID.AsInteger   := fDMComissaoVend.cdsConsProdutoID.AsInteger;
    fDMComissaoVend.cdsProduto_Comissao_VendITEM.AsInteger := vItem + 1;
  end;
  fDMComissaoVend.cdsProduto_Comissao_VendID_VENDEDOR.AsInteger := RxDBLookupCombo2.KeyValue;
  fDMComissaoVend.cdsProduto_Comissao_VendPERC_COMISSAO.AsFloat := CurrencyEdit2.Value;
  fDMComissaoVend.cdsProduto_Comissao_Vend.Post;
  fDMComissaoVend.cdsProduto_Comissao_Vend.ApplyUpdates(0);

  vContador := vContador + 1;
end;

procedure TfrmComissaoVend.btnImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  if RxDBLookupCombo3.Text = '' then
  begin
    MessageDlg('*** Representante n�o informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMComissaoVend.cdsVendCons.Close;
  fDMComissaoVend.sdsVendCons.CommandText := fDMComissaoVend.ctVendCons
                                           + ' AND P.CODIGO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  fDMComissaoVend.cdsVendCons.Open;
  case RadioGroup1.ItemIndex of
    0 : fDMComissaoVend.vTipo_Reg_Cons := 'T';
    1 : fDMComissaoVend.vTipo_Reg_Cons := 'P';
    2 : fDMComissaoVend.vTipo_Reg_Cons := 'S';
  end;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Comissao_Prod_Vend.fr3';
  if FileExists(vArq) then
    fDMComissaoVend.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relat�rio n�o localizado! ' + vArq);
    Exit;
  end;
  fDMComissaoVend.frxReport1.ShowReport;
end;

end.


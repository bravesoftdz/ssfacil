unit UCadOC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPedido, DB,
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl,
  RzEdit, RzDBEdit, RzButton, UCadOC_Itens, UCBase, RzPanel, UCadPedido_Cancelamento, UCadFuncionario, UCadObs_Aux, Menus, 
  NxCollection, Variants, UCadPedido_Desconto;

type
  TfrmCadOC = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    lblCliente: TLabel;
    edtCliente: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    cePedInterno: TCurrencyEdit;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlCliente: TPanel;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    RzTabSheet2: TRzTabSheet;
    pnlTransporte_Geral: TPanel;
    TabSheet3: TRzTabSheet;
    Label39: TLabel;
    Label38: TLabel;
    pnlValores: TPanel;
    Label24: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit14: TDBEdit;
    btnCalcular_Valores: TBitBtn;
    Panel10: TPanel;
    Label76: TLabel;
    Label80: TLabel;
    DBEdit47: TDBEdit;
    DBEdit52: TDBEdit;
    Panel11: TPanel;
    lblSerie: TLabel;
    edtPedCliente: TEdit;
    pnlNota: TPanel;
    Label16: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    DBEdit3: TDBEdit;
    Label17: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    Panel12: TPanel;
    Label13: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    gbxTransportes: TRzGroupBox;
    pnlTransporte: TPanel;
    Label84: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label57: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    Label1: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    RzGroupBox1: TRzGroupBox;
    DBMemo1: TDBMemo;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    Panel3: TPanel;
    Label22: TLabel;
    Label11: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label21: TLabel;
    DBDateEdit2: TDBDateEdit;
    btnCancelar_Pedido: TBitBtn;
    btnCancelar_Item: TBitBtn;
    Panel4: TPanel;
    Label25: TLabel;
    Shape1: TShape;
    Shape5: TShape;
    Label30: TLabel;
    Shape6: TShape;
    Label31: TLabel;
    Label3: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    UCControls1: TUCControls;
    Panel5: TPanel;
    Label7: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    SpeedButton3: TSpeedButton;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    Label4: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SpeedButton7: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ckImpProjeto: TCheckBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnImprimir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    RzGroupBox4: TRzGroupBox;
    Label27: TLabel;
    SpeedButton10: TSpeedButton;
    RxDBLookupCombo12: TRxDBLookupCombo;
    Label20: TLabel;
    gbxMapa: TRzGroupBox;
    Memo1: TMemo;
    Shape10: TShape;
    Label50: TLabel;
    Shape7: TShape;
    Label32: TLabel;
    ckNaoAprovado: TCheckBox;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    PopupMenu1: TPopupMenu;
    OCCompleta1: TMenuItem;
    OCSaldo1: TMenuItem;
    Label23: TLabel;
    DBEdit4: TDBEdit;
    btnAjustarQtd: TBitBtn;
    btnGravarOrdProd: TBitBtn;
    Label28: TLabel;
    ceNumOrdProd: TCurrencyEdit;
    Label29: TLabel;
    DBEdit8: TDBEdit;
    lblReserva: TLabel;
    btnConsReserva: TNxButton;
    btnCopiarPedido: TNxButton;
    DBText2: TDBText;
    Label33: TLabel;
    btnDesconto: TBitBtn;
    Label34: TLabel;
    DBEdit10: TDBEdit;
    Label35: TLabel;
    DBEdit9: TDBEdit;
    Panel2: TPanel;
    Label63: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label36: TLabel;
    cbxOpcao: TComboBox;
    Label67: TLabel;
    Personalizados1: TMenuItem;
    N1: TMenuItem;
    OrdemdeCompra11: TMenuItem;
    Label37: TLabel;
    DBEdit11: TDBEdit;
    Label40: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    OC21: TMenuItem;
    Shape8: TShape;
    Label41: TLabel;
    Shape9: TShape;
    Label42: TLabel;
    RzGroupBox3: TRzGroupBox;
    Label43: TLabel;
    SpeedButton9: TSpeedButton;
    Label44: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnCalcular_ValoresClick(Sender: TObject);
    procedure pnlClienteExit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtPedClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePedInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnCancelar_PedidoClick(Sender: TObject);
    procedure btnCancelar_ItemClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure RxDBLookupCombo12CloseUp(Sender: TObject);
    procedure RxDBLookupCombo12DropDown(Sender: TObject);
    procedure RxDBLookupCombo12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel3Exit(Sender: TObject);
    procedure OCCompleta1Click(Sender: TObject);
    procedure OCSaldo1Click(Sender: TObject);
    procedure btnAjustarQtdClick(Sender: TObject);
    procedure btnGravarOrdProdClick(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure btnConsReservaClick(Sender: TObject);
    procedure btnCopiarPedidoClick(Sender: TObject);
    procedure btnDescontoClick(Sender: TObject);
    procedure OrdemdeCompra11Click(Sender: TObject);
    procedure OC21Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure RxDBLookupCombo9DropDown(Sender: TObject);
    procedure RxDBLookupCombo9CloseUp(Sender: TObject);
  private
    { Private declarations }

    fDMCadPedido: TDMCadPedido;

    ffrmCadOC_Itens: TfrmCadOC_Itens;
    ffrmCadPedido_Cancelamento: TfrmCadPedido_Cancelamento;
    ffrmCadPedido_Desconto: TfrmCadPedido_Desconto;
    ffrmCadFuncionario: TfrmCadFuncionario;
    ffrmCadObs_Aux: TfrmCadObs_Aux;

    vVlr_Frete_Ant: Real;
    vInclusao_Edicao: String; //I=Incluir   E=Editar

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_Pedido;
    procedure prc_Posicionar_Cliente;
    procedure prc_Habilitar_CamposNota;
    procedure prc_Limpar_Edit_Consulta;

    procedure prc_Controle_Imp(Tipo_Imp: String = 'N');
    procedure prc_scroll2(DataSet: TDataSet);

    procedure prc_Mostrar_Reserva;
    procedure prc_Atualiza_Aprovacao_OC(ID : Integer);

    function fnc_Buscar_Num_Ordem(ID_OC: Integer; Ajuste: Boolean = False): String;

    function fnc_Verifica_Registro: Boolean;
    function fnc_senha(Opcao_Senha, Campo_Senha, Tipo, Desc1, Desc2, Desc3: String ; Item: Integer): Boolean;
    function fnc_Excluir(Item: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  frmCadOC: TfrmCadOC;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, uRelOC, uRelOC_Hidro, USel_Pessoa, UDMUtil, USel_ContaOrc, USenha,
  uUtilCliente, uCalculo_Pedido, uCadOC_Item_Qtd, UCadOC_Reserva, UCadPedido_Copia, uGrava_Pedido, UConsMotivoNaoAprov,
  USel_CentroCusto;

{$R *.dfm}

procedure TfrmCadOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vTipo_Pedido := '';
  fDMCadPedido.cdsProjeto.Close;
  Action := Cafree;
end;

procedure TfrmCadOC.btnExcluirClick(Sender: TObject);
var
  vNumOC: Integer;
begin
  if not fnc_Verifica_Registro then
    exit;

  prc_Posiciona_Pedido;

  if fDMCadPedido.cdsPedido.IsEmpty then
    exit;

  if not fnc_Excluir(0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if ((fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.cdsPedidoAPROVADO_PED.AsString = 'A'))
    or ((fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.cdsPedidoIMPRESSO.AsString = 'S')) then
  begin
    if not fnc_senha('EXC','SENHA_PEDIDO','','','','',0) then
      exit;
  end;

  vNumOC := fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger;
  Label36.Visible := True;
  Refresh;

  prc_Excluir_Registro;

  fDMCadPedido.mSenha.EmptyDataSet;

  btnConsultarClick(Sender);

  Label36.Visible := False;
  Refresh;

  MessageDlg('*** OC ' + IntToStr(vNumOC) + ' Exclu�da', mtConfirmation, [mbOk], 0);
end;

procedure TfrmCadOC.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOC.prc_Excluir_Registro;
begin
  uGrava_Pedido.prc_Excluir_Pedido(fDMCadPedido);
end;

procedure TfrmCadOC.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vAux: Real;
  vLimiteCad: Real; 
  ffrmSenha: TfrmSenha;
begin
  if fDMCadPedido.qParametros_FinUSA_LIMITE_COMPRAS.AsString = 'S' then
  begin
    vAux := fnc_Limite_Compra_Usado(fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,fDMCadPedido.cdsPedidoID.AsInteger,fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime);
    vAux := StrToFloat(FormatFloat('0.00',vAux + fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat));
    vLimiteCad := StrToFloat(FormatFloat('0.00',fnc_Limite_Compra_Cadastrado(fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger)));
    //if (StrToFloat(FormatFloat('0.00',vAux)) > StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsClienteVLR_LIMITE_COMPRA.AsFloat))) and
    //   (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsClienteVLR_LIMITE_COMPRA.AsFloat)) > 0) then
    if (StrToFloat(FormatFloat('0.00',vAux)) > StrToFloat(FormatFloat('0.00',vLimiteCad))) and
       (StrToFloat(FormatFloat('0.00',vLimiteCad)) > 0) then
    begin
      vSenha    := '';
      if not fnc_senha('LCR','SENHA_CREDITO','','Valor em Compras no m�s: ' + FormatFloat('###,###,##0.00',vAux),'',
                       'Valor do Limite cadastrado: ' + FormatFloat('###,###,##0.00',vLimiteCad),0) then
        exit;
    end;
  end;

  //Ajusta projeto na OC
  if (fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString = 'S') and (fDMCadPedido.cdsPedidoID_PROJETO.AsInteger > 0) then
  begin
    fDMCadPedido.cdsPedido_Itens.First;
    while not fDMCadPedido.cdsPedido_Itens.Eof do
    begin
      if fDMCadPedido.cdsPedido_Cli.IsEmpty then
      begin
        fDMCadPedido.cdsPedido_Cli.Insert;
        fDMCadPedido.cdsPedido_CliID.AsInteger              := fDMCadPedido.cdsPedidoID.AsInteger;
        fDMCadPedido.cdsPedido_CliITEM.AsInteger            := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
        fDMCadPedido.cdsPedido_CliID_CENTROCUSTO.AsInteger  := fDMCadPedido.cdsPedidoID_PROJETO.AsInteger;
        fDMCadPedido.cdsPedido_CliQTD.AsFloat               := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
        fDMCadPedido.cdsPedido_CliNOME_CENTROCUSTO.AsString := RxDBLookupCombo8.Text;
        fDMCadPedido.cdsPedido_Cli.Post;
      end
      else
      begin
        fDMCadPedido.cdsPedido_Cli.First;
        if (fDMCadPedido.cdsPedido_Cli.RecordCount = 1) then
        begin
          fDMCadPedido.cdsPedido_Cli.Edit;
          fDMCadPedido.cdsPedido_CliID_CENTROCUSTO.AsInteger := fDMCadPedido.cdsPedidoID_PROJETO.AsInteger;
          fDMCadPedido.cdsPedido_CliQTD.AsFloat              := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
          fDMCadPedido.cdsPedido_Cli.Post;
        end;
      end;

      if (fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensQTD_SOBRA_OC.AsFloat > 0) then
      begin
        //prc_Gravar_Sobra_OC;
      end;

      fDMCadPedido.cdsPedido_Itens.Next;
    end;
  end;

  //*****************

  uGrava_Pedido.prc_Gravar(fDMCadPedido);
  vIDAux := fDMCadPedido.cdsPedidoID.AsInteger;
  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPedido.vMSGErro, mtError, [mbOk], 0);
    exit;
  end;

  TS_Consulta.TabEnabled     := True;
  prc_Habilitar_CamposNota;
  btnCancelar_Item.Enabled   := True;
  btnCancelar_Pedido.Enabled := True;
  btnAjustarQtd.Enabled      := True;

  fDMCadPedido.mSenha.EmptyDataSet;

  RzPageControl1.ActivePage := TS_Consulta;

  prc_Atualiza_Aprovacao_OC(vIDAux);

  prc_Consultar(vIDAux);
  prc_Posiciona_Pedido;
end;

procedure TfrmCadOC.prc_Inserir_Registro;
begin
  if uUtilPadrao.fnc_Selecionar_Filial <= 0 then
    exit;

  fDMCadPedido.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  Memo1.Clear;
  //fDMCadPedido.prc_Inserir;
  UGrava_Pedido.prc_Inserir_Ped(fDMCadPedido);

  lblNome_Filial.Caption := vFilial_Nome;
  fDMCadPedido.cdsPedidoTIPO_REG.AsString := 'C';

  if fDMCadPedido.cdsPedido.State in [dsBrowse] then
    exit;

  prc_Habilitar_CamposNota;
  btnCancelar_Item.Enabled   := False;
  btnCancelar_Pedido.Enabled := False;
  btnAjustarQtd.Enabled      := False;

  fDMCadPedido.cdsPedidoID_REGIMETRIB.AsInteger := fDMCadPedido.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadPedido.cdsPedidoSIMPLES_FILIAL.AsString := fDMCadPedido.cdsFilialSIMPLES.AsString;

  if fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S' then
    fDMCadPedido.cdsPedidoAPROVADO_PED.AsString := 'P'
  else
    fDMCadPedido.cdsPedidoAPROVADO_PED.AsString := 'A';
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOC.FormShow(Sender: TObject);
var
  i: Integer;
  vData: TDateTime;
begin
  vTipo_Pedido     := 'C';
  vInclusao_Edicao := '';
  fDMCadPedido     := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  fDMCadPedido.qParametros_OC.Close;
  fDMCadPedido.qParametros_OC.Open;
  fDMCadPedido.prc_Abrir_cdsCliente('F');
  if fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString = 'S' then
    fDMCadPedido.cdsProjeto.Open;
  Label21.Visible     := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P');
  DBDateEdit2.Visible := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P');
  RzGroupBox2.Visible := (fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString = 'S');
  Label4.Visible      := (fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString = 'S');
  RxDBLookupCombo8.Visible := (fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString = 'S');
  SpeedButton8.Visible     := (fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString = 'S');
  ckImpProjeto.Visible     := (fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString = 'S');
  if fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString <> 'S' then
    ckImpProjeto.Checked := False;

  fDMCadPedido.cdsPedido_Consulta.AfterScroll := prc_scroll2;

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if fDMCadPedido.cdsParametrosUSA_GRADE.AsString <> 'S' then
    begin
      if (SMDBGrid2.Columns[i].FieldName = 'TAMANHO') then
        SMDBGrid2.Columns[i].Visible := False;
    end;
    if (SMDBGrid2.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid2.Columns[i].Visible := ((fDMCadPedido.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or
                                      (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or
                                      (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'B'));
  end;
  RzGroupBox4.Visible   := (fDMCadPedido.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  gbxMapa.Visible       := (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S');
  Shape10.Visible       := (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S');
  Label50.Visible       := (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S');
  Shape7.Visible        := (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S');
  Label32.Visible       := (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S');
  ckNaoAprovado.Visible := (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S');
  Label23.Visible       := (fDMCadPedido.qParametros_OCUSAR_GERAR_COBRANCA.AsString = 'S');
  DBEdit4.Visible       := (fDMCadPedido.qParametros_OCUSAR_GERAR_COBRANCA.AsString = 'S');

  Label29.Visible       := (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S');
  DBEdit8.Visible       := (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S');

  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'VLR_DUPLICATA' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametros_OCUSAR_GERAR_COBRANCA.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'NUM_ORDPROD' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S');
  end;
  Label28.Visible        := (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S');
  ceNumOrdProd.Visible   := (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S');
  btnConsReserva.Visible := (fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S');

  vData          := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit1.Date := vData;

  Label37.Visible  := (fDMCadPedido.qParametros_OCUSA_NUM_DOC.AsString = 'S');
  DBEdit11.Visible := (fDMCadPedido.qParametros_OCUSA_NUM_DOC.AsString = 'S');

  Label40.Visible       := (fDMCadPedido.qParametros_OCUSA_NUM_DOC.AsString = 'S');
  CurrencyEdit1.Visible := (fDMCadPedido.qParametros_OCUSA_NUM_DOC.AsString = 'S');

  if (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.qParametros_OCUSA_APROVACAO_ITEM.AsString = 'S') then
    StaticText1.Caption := 'Duplo clique para consultar    F4=Motivo N�o Aprovado';

  Shape8.Visible  := ((fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.qParametros_PedUSA_APROVACAO_ITEM.AsString = 'S'));
  Shape9.Visible  := ((fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.qParametros_PedUSA_APROVACAO_ITEM.AsString = 'S'));
  Label41.Visible := ((fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.qParametros_PedUSA_APROVACAO_ITEM.AsString = 'S'));
  Label42.Visible := ((fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.qParametros_PedUSA_APROVACAO_ITEM.AsString = 'S'));
end;

procedure TfrmCadOC.prc_Consultar(ID: Integer);
begin
  fDMCadPedido.cdsPedido_Consulta.Close;
  fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.ctConsulta + ' WHERE PED.TIPO_REG = ' + QuotedStr('C');
  if ID > 0 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.ID = ' + IntToStr(ID)
  else
  begin
    if cePedInterno.AsInteger > 0 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.NUM_PEDIDO = ' + cePedInterno.Text;
    if not(RxDBLookupCombo1.Text = '') then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                             ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if Trim(edtPedCliente.Text) <> '' then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                             ' AND PED.PEDIDO_CLIENTE = ' + QuotedStr(edtPedCliente.Text);
    if DateEdit1.Date > 10 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText
                          + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText
                          + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if Trim(edtCliente.Text) <> '' then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText
                                      + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + ')'
                                      + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + '))';

    if (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and not(ckNaoAprovado.Checked) then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.APROVADO_PED <> ' + QuotedStr('N');
    if ceNumOrdProd.AsInteger > 0 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.NUM_ORDPROD = ' + IntToStr(ceNumOrdProd.AsInteger);

    case cbxOpcao.ItemIndex of
      0: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND COALESCE(PED.FATURADO,''N'') <> ' + QuotedStr('S')
                                                      + ' AND PED.QTD > 0 ';
      1: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.FATURADO = ' + QuotedStr('S');
    end;

    if CurrencyEdit1.AsInteger > 0 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.NUM_DOC = ' + IntToStr(CurrencyEdit1.AsInteger);

  end;
  fDMCadPedido.cdsPedido_Consulta.Open;
end;

procedure TfrmCadOC.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadOC.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido.State in [dsBrowse]) or not(fDMCadPedido.cdsPedido.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar altera��o/inclus�o do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPedido.mSenha.EmptyDataSet;

  fDMCadPedido.cdsPedido.CancelUpdates;

  prc_Habilitar_CamposNota;
  btnCancelar_Item.Enabled   := True;
  btnCancelar_Pedido.Enabled := True;
  btnAjustarQtd.Enabled      := True;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  Panel3.Enabled := True;
  vInclusao_Edicao := '';
end;

procedure TfrmCadOC.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOC.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido.IsEmpty) or not(fDMCadPedido.cdsPedido.Active) or (fDMCadPedido.cdsPedidoID.AsInteger < 1) then
    exit;

  if vInclusao_Edicao <> 'C' then
  begin
    //Conforme pedido de Fabiana por ordem da Michele no dia 07/04/2016, s� travar se j� tenha sido liberado
    if ((fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.cdsPedidoAPROVADO_PED.AsString = 'A')) then
      //or ((fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.cdsPedidoIMPRESSO.AsString = 'S')) then
    begin
      if not fnc_senha('ALT','SENHA_PEDIDO','','','','',0) then
        exit;
    end;
  end;
  vInclusao_Edicao   := '';

  fDMCadPedido.mSenha.EmptyDataSet;

  fDMCadPedido.cdsPedido.Edit;
  TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;

  btnCancelar_Item.Enabled   := False;
  btnCancelar_Pedido.Enabled := False;
  btnAjustarQtd.Enabled      := False;
  if (fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat > 0) then
    Panel3.Enabled := False;
end;

procedure TfrmCadOC.btnConfirmarClick(Sender: TObject);
begin
  fDMCadPedido.cdsPedidoID_VENDEDOR.Clear;
  fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := 0;
  if RxDBLookupCombo3.Text <> '' then
    fDMCadPedido.cdsPedidoNOME_CLIENTE.AsString := RxDBLookupCombo3.Text;
  fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString := fDMCadPedido.cdsPedidoNUM_PEDIDO.AsString;
  prc_Gravar_Registro;
  Panel3.Enabled   := True;
  vInclusao_Edicao := '';
end;

procedure TfrmCadOC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPedido);
end;

procedure TfrmCadOC.prc_Posiciona_Pedido;
begin
  fDMCadPedido.prc_Localizar(fDMCadPedido.cdsPedido_ConsultaID.AsInteger);
  fDMCadPedido.cdsPedido_Itens.Close;
  fDMCadPedido.cdsPedido_Itens.Open;
  vFilial      := fDMCadPedido.cdsPedidoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadPedido.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadPedido.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
  Memo1.Lines.Clear;
  if fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S' then
     Memo1.Lines.Text := fnc_Buscar_Num_Ordem(fDMCadPedido.cdsPedidoID.AsInteger);
end;

function TfrmCadOC.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or
        (fDMCadPedido.cdsPedido_ConsultaID.AsInteger < 1) then
    exit;

  Result := True;
end;

procedure TfrmCadOC.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Itens.Active) and (fDMCadPedido.cdsPedido_Itens.IsEmpty) or (fDMCadPedido.cdsPedido_ItensITEM.AsInteger < 1) then
    Exit;

  if (fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat > 0) then
  begin
    MessageDlg('*** Item j� possui quantidade faturada!',mtError, [mbOk], 0);
    Exit;
  end;

  if not fnc_Excluir(fDMCadPedido.cdsPedido_ItensITEM.AsInteger) then
    exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  uGrava_Pedido.prc_Excluir_Item_Ped( fDMCadPedido);

  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadOC.btnInserir_ItensClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Fornecedor n�o informado!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if trim(fDMCadPedido.cdsClienteUF.AsString) = '' then
  begin
    MessageDlg('*** Fornecedor sem UF!', mtError, [mbOk], 0);
    Exit;
  end;

  //02/06/2016  incluido a filial
  if ((fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'G') or
     (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S')) and (fDMCadPedido.qParametros_ProdMATERIAL_FORNECEDOR_OC.AsString = 'S') then
    uCalculo_Pedido.prc_Filtrar_Produto_Cliente(fDMCadPedido,False);
  //****************

  fDMCadPedido.prc_Inserir_Itens;

  ffrmCadOC_Itens := TfrmCadOC_Itens.Create(self);
  ffrmCadOC_Itens.fDMCadPedido := fDMCadPedido;
  ffrmCadOC_Itens.ShowModal;
  FreeAndNil(ffrmCadOC_Itens);
end;

procedure TfrmCadOC.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Pedido;
      if fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S' then
        prc_Mostrar_Reserva;
    end;
  end;
end;

procedure TfrmCadOC.btnAlterar_ItensClick(Sender: TObject);
var
  vMSGAux: String;
  vID_ProdutoAux: Integer; //
  vID_CorAux: Integer; //
  vTamanhoAux: String; //
  vItemAux: Integer; //
  vPrecoAux: Real; //
  vPerc_IpiAux, vPerc_ICMSAux: Real;
  vCarimboAux, vCaixinhaAux: String;
  vDtEntregaAux: TDateTime;
begin
  vMSGAux := '';
  if (fDMCadPedido.cdsPedido_Itens.IsEmpty) or (fDMCadPedido.cdsPedido_ItensITEM.AsInteger <= 0) then
    exit;

  if (fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat <= 0) then
    vMSGAux := vMSGAux + #13 + '*** Item j� faturado!'
  else
  if (fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat > 0) then
    vMSGAux := vMSGAux + #13 + '*** Item j� possui quantidade faturada!';

  if (fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat > 0) then
    vMSGAux := vMSGAux + #13 + '*** Item quantidade cancelada!';

  if trim(vMSGAux) = '' then
    if not fnc_Excluir(fDMCadPedido.cdsPedido_ItensITEM.AsInteger) then
      exit;

  if Trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    Exit;
  end;

  //02/06/2016  incluido a filial
  if ((fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'G') or
     (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S')) and (fDMCadPedido.qParametros_ProdMATERIAL_FORNECEDOR_OC.AsString = 'S') then
    uCalculo_Pedido.prc_Filtrar_Produto_Cliente(fDMCadPedido,False);
  //****************

  vID_ProdutoAux := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  vID_CorAux     := fDMCadPedido.cdsPedido_ItensID_COR.AsInteger;
  vTamanhoAux    := fDMCadPedido.cdsPedido_ItensTAMANHO.AsString;
  vPrecoAux      := StrToFloat(FormatFloat('0.00000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  vItemAux       := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  vPerc_IpiAux   := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat));
  vPerc_ICMSAux  := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat));
  vCarimboAux    := fDMCadPedido.cdsPedido_ItensCARIMBO.AsString;
  vCaixinhaAux   := fDMCadPedido.cdsPedido_ItensCAIXINHA.AsString;
  vDtEntregaAux  := fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime;

  fDMCadPedido.cdsPedido_Itens.Edit;

  ffrmCadOC_Itens := TfrmCadOC_Itens.Create(self);
  ffrmCadOC_Itens.fDMCadPedido := fDMCadPedido;
  ffrmCadOC_Itens.ShowModal;

  FreeAndNil(ffrmCadOC_Itens);

  //19/01/2019  vai alterar o pre�o em todos os tamanhos do produto com a mesma cor
  if (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadPedido.cdsPedido_ItensTAMANHO.AsString) <> '')  then
  begin
    if (vID_CorAux <> fDMCadPedido.cdsPedido_ItensID_COR.AsInteger)
      or (StrToFloat(FormatFloat('0.00000000',vPrecoAux)) <> StrToFloat(FormatFloat('0.00000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)))
      or (StrToFloat(FormatFloat('0.00',vPerc_IpiAux))  <> StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat)))
      or (StrToFloat(FormatFloat('0.00',vPerc_ICMSAux)) <> StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat)))
      or (trim(vCarimboAux) <> trim(fDMCadPedido.cdsPedido_ItensCARIMBO.AsString))
      or (trim(vCaixinhaAux) <> trim(fDMCadPedido.cdsPedido_ItensCAIXINHA.AsString))
      or (vDtEntregaAux <> fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime) then
    begin
      SMDBGrid2.DisableScroll;
      uGrava_Pedido.prc_Alterar_Item_Tam(fDMCadPedido,
                                         fDMCadPedido.cdsPedido_ItensID_COR.AsInteger,
                                         fDMCadPedido.cdsPedido_ItensITEM.AsInteger,
                                         fDMCadPedido.cdsPedido_ItensITEM_ORIGINAL.AsInteger,
                                         StrToFloat(FormatFloat('0.00000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)),
                                         StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat)),
                                         StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat)),
                                         fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime,
                                         fDMCadPedido.cdsPedido_ItensCARIMBO.AsString,
                                         fDMCadPedido.cdsPedido_ItensCAIXINHA.AsString);

      SMDBGrid2.EnableScroll;
    end;
  end;
  //*******************

  btnCalcular_ValoresClick(Sender);
  fDMCadPedido.cdsPedido_Itens.Locate('ITEM',vItemAux,[loCaseInsensitive]);
end;

procedure TfrmCadOC.btnCalcular_ValoresClick(Sender: TObject);
begin
  SMDBGrid2.DisableScroll;
  uCalculo_Pedido.prc_Calcular_Desconto_Novo(fDMCadPedido,False);
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadOC.pnlClienteExit(Sender: TObject);
begin
  prc_Posicionar_Cliente;
  fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := 0;
  if trim(fDMCadPedido.cdsClienteENDERECO_ENT.AsString) <> '' then
    fDMCadPedido.cdsPedidoLOCALENTREGA.AsString := 'E';
  fDMCadPedido.cdsPedidoID_TRANSPORTADORA.AsInteger := fDMCadPedido.cdsClienteID_TRANSPORTADORA.AsInteger;
  fDMCadPedido.cdsPedidoID_REDESPACHO.AsInteger     := fDMCadPedido.cdsClienteID_REDESPACHO.AsInteger;
  if (fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger > 0) and (fDMCadPedido.cdsPedidoID_CONDPGTO.IsNull) then
    fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger := fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger;
end;

procedure TfrmCadOC.prc_Posicionar_Cliente;
begin
  fDMCadPedido.vAliqIcms := 0;
  fDMCadPedido.vSiglaUF  := '';
  if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if fDMCadPedido.cdsUFUF.AsString  <> fDMCadPedido.cdsClienteUF.AsString then
    fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);
  if (fDMCadPedido.cdsFilialID.AsInteger <> fDMCadPedido.cdsPedidoFILIAL.AsInteger) then
    fDMCadPedido.cdsFilial.Locate('CODIGO',fDMCadPedido.cdsPedidoFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.vAliqIcms := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;
  fDMCadPedido.vSiglaUF  := fDMCadPedido.cdsClienteUF.AsString;
end;

procedure TfrmCadOC.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMCadPedido.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOC.prc_Habilitar_CamposNota;
begin
  pnlItem.Enabled          := not(pnlItem.Enabled);
  pnlTransporte.Enabled    := not(pnlTransporte.Enabled);
  Panel5.Enabled           := not(Panel5.Enabled);

  btnCalcular_Valores.Enabled := not(btnCalcular_Valores.Enabled);
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
  btnDesconto.Enabled      := not(btnDesconto.Enabled);

  DBMemo1.ReadOnly         := not(DBMemo1.ReadOnly);
  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);
  TabSheet3.Enabled        := not(TabSheet3.Enabled);
end;

procedure TfrmCadOC.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPedido.cdsPedido_Consulta.IsEmpty then
    exit;

  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'S') then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'P') then
    Background  := clAqua
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'C') then
  begin
    Background  := clRed;
    AFont.Color := clWhite
  end
  else
  if (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaAPROVADO_PED.AsString = 'P') then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end
  else
  if (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaAPROVADO_PED.AsString = 'N') then
  begin
    Background  := $00AAAAFF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmCadOC.SpeedButton1Click(Sender: TObject);
begin
  fDMCadPedido.cdsCliente.Close;
  fDMCadPedido.cdsCliente.Open;
end;

procedure TfrmCadOC.SpeedButton2Click(Sender: TObject);
begin
  fDMCadPedido.cdsTransportadora.Close;
  fDMCadPedido.cdsTransportadora.Open;
end;

procedure TfrmCadOC.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPedido.cdsPedido);
end;

procedure TfrmCadOC.edtPedClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOC.cePedInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOC.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOC.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPedido.cdsCondPgto.Close;
  fDMCadPedido.cdsCondPgto.Open;
end;

procedure TfrmCadOC.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensAPROVADO_ITEM.AsString = 'P') then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end
  else
  if (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensAPROVADO_ITEM.AsString = 'N') then
  begin
    Background  := $00AAAAFF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmCadOC.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'F';
    frmSel_Pessoa.ShowModal;
    fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadOC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    Label17.Visible := not(Label17.Visible);
    DBEdit3.Visible := not(DBEdit3.Visible);
    btnGravarOrdProd.Visible := not(btnGravarOrdProd.Visible);
  end;
end;

procedure TfrmCadOC.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDmCadpedido.cdsTransportadora.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOC.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadPedido.cdsPedido_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadOC.DBEdit4Exit(Sender: TObject);
var
  vAux: Integer;
begin
  vAux := uGrava_Pedido.fnc_Existe_OC(fDMCadPedido);
  if vAux > 0 then
    MessageDlg('*** N� Pedido do cliente j� foi digitado, est� no pedido interno ' + IntToStr(vAux) , mtError, [mbOk], 0);
end;

procedure TfrmCadOC.btnCancelar_PedidoClick(Sender: TObject);
begin
  ffrmCadPedido_Cancelamento                 := TfrmCadPedido_Cancelamento.Create(self);
  ffrmCadPedido_Cancelamento.fDMCadPedido    := fDMCadPedido;
  ffrmCadPedido_Cancelamento.vOpcao_Cancelar := 'P';
  ffrmCadPedido_Cancelamento.ShowModal;
  FreeAndNil(ffrmCadPedido_Cancelamento);
end;

procedure TfrmCadOC.btnCancelar_ItemClick(Sender: TObject);
begin
  ffrmCadPedido_Cancelamento                 := TfrmCadPedido_Cancelamento.Create(self);
  ffrmCadPedido_Cancelamento.fDMCadPedido    := fDMCadPedido;
  ffrmCadPedido_Cancelamento.vOpcao_Cancelar := 'I';
  ffrmCadPedido_Cancelamento.ShowModal;
  FreeAndNil(ffrmCadPedido_Cancelamento);
end;

procedure TfrmCadOC.SpeedButton5Click(Sender: TObject);
begin
  ffrmCadFuncionario := TfrmCadFuncionario.Create(self);
  ffrmCadFuncionario.ShowModal;

  FreeAndNil(ffrmCadFuncionario);

  SpeedButton6Click(sender);
end;

procedure TfrmCadOC.SpeedButton6Click(Sender: TObject);
begin
  fDMCadPedido.cdsFuncionario.Close;
  fDMCadPedido.cdsFuncionario.Open;
end;

procedure TfrmCadOC.BitBtn1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo6.Text) = '' then
  begin
    MessageDlg('*** Observa��o n�o informada!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(fDMCadPedido.cdsPedidoOBS.Value) = '' then
    fDMCadPedido.cdsPedidoOBS.Value := fDMCadPedido.cdsObs_AuxOBS.AsString
  else
    fDMCadPedido.cdsPedidoOBS.Value := fDMCadPedido.cdsPedidoOBS.Value + #13 + fDMCadPedido.cdsObs_AuxOBS.AsString;
  RxDBLookupCombo6.ClearValue;
  RxDBLookupCombo6.SetFocus;
end;

procedure TfrmCadOC.SpeedButton3Click(Sender: TObject);
begin
  ffrmCadObs_Aux := TfrmCadObs_Aux.Create(self);
  ffrmCadObs_Aux.ShowModal;

  FreeAndNil(ffrmCadObs_Aux);
  fDMCadPedido.cdsObs_Aux.Close;
  fDMCadPedido.cdsObs_Aux.Open;
end;

procedure TfrmCadOC.Panel5Enter(Sender: TObject);
begin
  fDMCadPedido.cdsObs_Aux.Close;
  fDMCadPedido.cdsObs_Aux.Open;
end;

procedure TfrmCadOC.DBEdit14Enter(Sender: TObject);
begin
  vVlr_Frete_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat));
end;

procedure TfrmCadOC.DBEdit14Exit(Sender: TObject);
var
  vAux: Real;
begin
  if trim(DBEdit14.Text) = '' then
    vAux := 0
  else
    vAux := StrToFloat(DBEdit14.Text);
  if StrToFloat(FormatFloat('0.00',vVlr_Frete_Ant)) <> StrToFloat(FormatFloat('0.00',vAux)) then
    btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadOC.SpeedButton8Click(Sender: TObject);
begin
  fDMCadPedido.cdsProjeto.Close;
  fDMCadPedido.cdsProjeto.Open;
end;

procedure TfrmCadOC.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    cePedInterno.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadOC.prc_Limpar_Edit_Consulta;
begin
  cePedInterno.Clear;
  edtCliente.Clear;
  edtPedCliente.Clear;
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfrmCadOC.SpeedButton10Click(Sender: TObject);
begin
  fDMCadPedido.cdsContaOrcamento.Close;
  fDMCadPedido.cdsContaOrcamento.Open;
end;

procedure TfrmCadOC.RxDBLookupCombo12CloseUp(Sender: TObject);
begin
  RxDBLookupCombo12.LookupDisplay := 'DESCRICAO';
end;

procedure TfrmCadOC.RxDBLookupCombo12DropDown(Sender: TObject);
begin
  RxDBLookupCombo12.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadOC.RxDBLookupCombo12KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadPedido.cdsPedidoID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    fDMCadPedido.cdsPedidoID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos;
  end;
end;

function TfrmCadOC.fnc_Buscar_Num_Ordem(ID_OC: Integer; Ajuste: Boolean = False): String;
var
  sds: TSQLDataSet;
  vCont: Integer;
begin
  Result := '';

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  sds.CommandText := 'select distinct mat.num_ordem, l.nome '
                   + ' from lote_mat mat '
                   + ' inner join lote l on (mat.num_ordem = l.num_ordem) '
                   + ' where mat.id_oc = :ID_OC'
                   + ' order by mat.num_ordem';
  sds.ParamByName('ID_OC').AsInteger := ID_OC;
  sds.Open;
  vCont := 0;
  Result := '';
  while not sds.Eof do
  begin
    if trim(Result) <> '' then
      Result := Result + ', ';
    if not Ajuste then
      Result := Result + 'OP: ' + sds.FieldByName('num_ordem').AsString + '  ' + sds.FieldByName('nome').AsString
    else
      Result := sds.FieldByName('num_ordem').AsString;
    vCont := vCont + 1;
    sds.Next;
  end;
  if (Ajuste) and (vCont > 1) then
    Result := '';
end;

function TfrmCadOC.fnc_senha(Opcao_Senha, Campo_Senha, Tipo, Desc1, Desc2, Desc3: String ; Item: Integer): Boolean;
var
  ffrmSenha: TfrmSenha;
  vSenha_Pertence: String;
begin
  fDMCadPedido.cdsParametros.Close;
  fDMCadPedido.cdsParametros.Open;
  Result := True;

  if (trim(fDMCadPedido.cdsParametros.FieldByName(Campo_Senha).AsString) <> '') or
     (trim(fDMCadPedido.qParametros_Usuario.FieldByName(Campo_Senha).AsString) <> '') then
  begin
    vSenha    := '';
    vSenha_Pertence := 'Principal';
    ffrmSenha := TfrmSenha.Create(self);
    ffrmSenha.Panel1.Visible := (Tipo = 'R');
    ffrmSenha.Label2.Caption := Desc1;
    ffrmSenha.Label4.Caption := Desc2;
    ffrmSenha.Label3.Caption := Desc3;

    ffrmSenha.ShowModal;
    FreeAndNil(ffrmSenha);
    if (trim(vSenha) = '') and (Tipo <> 'R') then
    begin
      Result := False;
      MessageDlg('*** Senha n�o informada!', mtError, [mbOk], 0);
      exit;
    end;
    if Tipo <> 'R' then
    begin
      if vSenha <> fDMCadPedido.cdsParametros.FieldByName(Campo_Senha).AsString then
      begin
        if vSenha <> fDMCadPedido.qParametros_Usuario.FieldByName(Campo_Senha).AsString then
        begin
          Result := False;
          MessageDlg('*** Senha incorreta!', mtError, [mbOk], 0);
          exit;
        end
        else
          vSenha_Pertence := vUsuario;
      end;
      if fDMCadPedido.qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S' then
      begin
        if not fDMCadPedido.mSenha.Locate('Tipo;Item',VarArrayOf([Tipo,Item]),[locaseinsensitive]) then
        begin
          fDMCadPedido.mSenha.Insert;
          fDMCadPedido.mSenhaTipo_Alt.AsString       := Tipo;
          fDMCadPedido.mSenhaSenha.AsString          := vSenha;
          fDMCadPedido.mSenhaItem.AsInteger          := Item;
          fDMCadPedido.mSenhaTipo_Doc.AsString       := 'OC';
          fDMCadPedido.mSenhaSenha_Pertence.AsString := vSenha_Pertence;
          fDMCadPedido.mSenha.Post;
        end;
      end;
    end;
  end;
end;

procedure TfrmCadOC.Panel3Exit(Sender: TObject);
begin
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <> fDMCadPedido.cdsClienteCODIGO.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  prc_Verifica_Limite_Compra(fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,0,fDMCadPedido.cdsClienteVLR_LIMITE_COMPRA.AsFloat,fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime);
end;

procedure TfrmCadOC.prc_Controle_Imp(Tipo_Imp: String);
begin
  prc_Posiciona_Pedido;

  //02/06/2016  incluido a filial
  if ((fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'G') or
     (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S')) and (fDMCadPedido.qParametros_ProdMATERIAL_FORNECEDOR_OC.AsString = 'S') then
    uCalculo_Pedido.prc_Filtrar_Produto_Cliente(fDMCadPedido,False);
  //****************

  fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.cdsPedidoImp.Close;
  fDMCadPedido.sdsPedidoImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp.Open;

  fDMCadPedido.cdsPedidoImp_Itens.Close;
  fDMCadPedido.sdsPedidoImp_Itens.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp_Itens.Open;

  if fDMCadPedido.qParametros_FinUSA_END_CCUSTO.AsString = 'S' then
  begin
    fDMCadPedido.cdsTriCCusto.Close;
    fDMCadPedido.sdsTriCCusto.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.cdsTriCCusto.Open;
  end;

  vEmail_Fortes := fDMCadPedido.cdsPedidoImpEMAIL_COMPRAS_FORN.AsString;
  if (trim(fDMCadPedido.cdsPedidoImpEMAIL_COMPRAS.AsString) <> '') then
    vEmail_Fortes := fDMCadPedido.cdsPedidoImpEMAIL_COMPRAS.AsString;
  vEmail_Assunto_Fortes := 'Ordem de Compra N� ' + fDMCadPedido.cdsPedidoImpNUM_PEDIDO.AsString;
  vEmail_Fortes_Corpo   := 'Em anexo Ordem de Compra  N� ' + fDMCadPedido.cdsPedidoImpNUM_PEDIDO.AsString;
  vTipo_Config_Email    := 4;
  vFilial               := fDMCadPedido.cdsPedidoImpFILIAL.AsInteger;

  if Tipo_Imp = 'P' then //Personalizado
    exit;

  if fDMCadPedido.cdsParametrosTIPO_REL_OC.AsString = 'PE' then
  begin
    fRelOC_Hidro              := TfRelOC_Hidro.Create(Self);
    fRelOC_Hidro.fDMCadPedido := fDMCadPedido;
    fRelOC_Hidro.vImpProjeto  := ckImpProjeto.Checked;
    fRelOC_Hidro.RLReport1.PreviewModal;
    fRelOC_Hidro.RLReport1.Free;
    FreeAndNil(fRelOC_Hidro);
  end
  else
  begin
    fRelOC              := TfRelOC.Create(Self);
    fRelOC.vNumOPImp    := '';
    if fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S' then
      fRelOC.vNumOPImp := fnc_Buscar_Num_Ordem(fDMCadPedido.cdsPedidoImpID.AsInteger);
    fRelOC.fDMCadPedido := fDMCadPedido;
    fRelOC.vImpProjeto  := ckImpProjeto.Checked;
    if Tipo_Imp = 'S' then
      fRelOC.vImpSaldo := True
    else
      fRelOC.vImpSaldo := False;
    fRelOC.RLReport1.PreviewModal;
    fRelOC.RLReport1.Free;
    FreeAndNil(fRelOC);
  end;

  if fDMCadPedido.cdsPedidoIMPRESSO.AsString <> 'S' then
  begin
    fDMCadPedido.cdsPedido.Edit;
    fDMCadPedido.cdsPedidoIMPRESSO.AsString := 'S';
    fDMCadPedido.cdsPedido.Post;
    fDMCadPedido.cdsPedido.ApplyUpdates(0);
  end;
end;

procedure TfrmCadOC.OCCompleta1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Controle_Imp('N');
end;

procedure TfrmCadOC.OCSaldo1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Controle_Imp('S');
end;

procedure TfrmCadOC.prc_scroll2(DataSet: TDataSet);
begin
  OCSaldo1.Enabled := (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'P');
end;

procedure TfrmCadOC.btnAjustarQtdClick(Sender: TObject);
var
  ffrmCadOC_Item_Qtd: TfrmCadOC_Item_Qtd;
begin
  if StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)) <= 0 then
  begin
    MessageDlg('*** Item j� esta faturado completo!', mtInformation, [mbOk], 0);
    exit;
  end;
  if StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) <= 0 then
  begin
    MessageDlg('*** Item n�o possui quantidade faturada, alterar o item na op��o (Alterar Produto)!', mtInformation, [mbOk], 0);
    exit;
  end;

  if not fnc_senha('ALT','SENHA_PEDIDO','','','','',0) then
    exit;

  if (fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat > 0) and (fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat > 0)  then
  begin
    fDMCadPedido.cdsPedido.Edit;
    fDMCadPedido.cdsPedido_Itens.Edit;

    fDMCadPedido.cdsPedido_Item_Qtd.Close;
    fDMCadPedido.sdsPedido_Item_Qtd.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
    fDMCadPedido.sdsPedido_Item_Qtd.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
    fDMCadPedido.cdsPedido_Item_Qtd.Open;

    fDMCadPedido.vGravou_OK_Ajuste := True;

    ffrmCadOC_Item_Qtd := TfrmCadOC_Item_Qtd.Create(self);
    ffrmCadOC_Item_Qtd.fDMCadPedido := fDMCadPedido;
    ffrmCadOC_Item_Qtd.vQtdAnt      := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_Item_QtdQTD.AsFloat));
    ffrmCadOC_Item_Qtd.ShowModal;

    if fDMCadPedido.vGravou_OK_Ajuste then
    begin
      btnCalcular_ValoresClick(Sender);
      btnConfirmarClick(Sender);
      prc_Habilitar_CamposNota;
    end;
  end;
end;

procedure TfrmCadOC.btnGravarOrdProdClick(Sender: TObject);
var
  vTexto: String;
  sds: TSQLDataSet;
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) then
  begin
    ShowMessage('Primeiro deve ser feito a consulta!');
    exit;
  end;

  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    fDMCadPedido.cdsPedido_Consulta.First;
    while not fDMCadPedido.cdsPedido_Consulta.Eof do
    begin
       vTexto := Monta_Numero(fnc_Buscar_Num_Ordem(fDMCadPedido.cdsPedido_ConsultaID.AsInteger,True),0);
       if trim(vTexto) <> '' then
       begin
         sds.CommandText := 'UPDATE PEDIDO P SET P.NUM_ORDPROD = ' + vTexto
                          + ' WHERE P.ID = ' + IntToStr(fDMCadPedido.cdsPedido_ConsultaID.AsInteger);
         sds.ExecSQL;
       end;
      fDMCadPedido.cdsPedido_Consulta.Next;
    end;
  except
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadOC.DBEdit8Enter(Sender: TObject);
var
  sds: TSQLDataSet;
  vExisteAux: Boolean;
begin
  if fDMCadPedido.cdsPedidoNUM_ORDPROD.AsInteger <= 0 then
    vExisteAux := False
  else
  begin
    vExisteAux := True;
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM LOTE_MAT L2 WHERE L2.ID_OC = :ID_OC ';
      sds.ParamByName('ID_OC').AsInteger := fDMCadPedido.cdsPedidoID.AsInteger;
      sds.Open;
      vExisteAux := sds.FieldByName('CONTADOR').AsInteger > 0;
    except
    end;
    FreeAndNil(sds);
  end;
  DBEdit8.ReadOnly := vExisteAux;
end;

function TfrmCadOC.fnc_Excluir(Item: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  fDMCadPedido.vMSGErro := '';
  if Item <= 0 then
  begin
    if fDMCadPedido.fnc_Existe_Fat(fDMCadPedido.cdsPedidoID.AsInteger) > 0 then
      fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Ordem de compra n�o exclu�da pois j� foi entregue!';
  end;

  if trim(fDMCadPedido.vMSGErro) = '' then
  begin
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'select NUM_ORDEM from LOTE_MAT_OC L '
                     + ' WHERE L.ID_OC = ' + IntToStr(fDMCadPedido.cdsPedidoID.AsInteger);
    if Item > 0 then
      sds.CommandText := sds.CommandText + ' AND L.ITEM_OC = ' + IntToStr(Item);
    sds.Open;
    while not sds.Eof do
    begin
      if sds.FieldByName('NUM_ORDEM').AsInteger > 0 then
        fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + ' N� Ordem Produ��o: ' + sds.FieldByName('NUM_ORDEM').AsString;
      sds.Next;
    end;
    if trim(fDMCadPedido.vMSGErro) <> '' then
      fDMCadPedido.vMSGErro := 'OC j� esta reservada para: ' + fDMCadPedido.vMSGErro;
  end;
  if trim(fDMCadPedido.vMSGErro) <> '' then
  begin
    Result := False;
    MessageDlg(fDMCadPedido.vMSGErro, mtError, [mbOk], 0);
  end
  else
    Result := True;
end;

procedure TfrmCadOC.prc_Mostrar_Reserva;
var
  sds: TSQLDataSet;
  vObsAux: WideString;
begin
  vObsAux := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'select distinct(NUM_ORDEM) from LOTE_MAT_OC L ' +
                       ' WHERE L.ID_OC = ' + IntToStr(fDMCadPedido.cdsPedidoID.AsInteger);
    sds.Open;
    while not sds.Eof do
    begin
      if sds.FieldByName('NUM_ORDEM').AsInteger > 0 then
      begin
        if vObsAux = '' then
          vObsAux := sds.FieldByName('NUM_ORDEM').AsString
        else
          vObsAux := vObsAux + ', ' + sds.FieldByName('NUM_ORDEM').AsString;
      end;
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
  if trim(vObsAux) <> '' then
  begin
    vObsAux := 'Reservado para O.P.: ' + vObsAux;
    lblReserva.Caption := vObsAux;
  end;
end;

procedure TfrmCadOC.btnConsReservaClick(Sender: TObject);
begin
  frmCadOC_Reserva := TfrmCadOC_Reserva.Create(self);
  frmCadOC_Reserva.vID_OC_Loc := fDMCadPedido.cdsPedidoID.AsInteger;
  frmCadOC_Reserva.ShowModal;
  FreeAndNil(frmCadOC_Reserva);
end;

procedure TfrmCadOC.btnCopiarPedidoClick(Sender: TObject);
var
  ffrmCadPedido_Copia: TfrmCadPedido_Copia;
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  fDMCadPedido.mSenha.EmptyDataSet;
  vInclusao_Edicao := '';
  ffrmCadPedido_Copia := TfrmCadPedido_Copia.Create(self);
  ffrmCadPedido_Copia.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Copia.vNum_Pedido := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  ffrmCadPedido_Copia.ShowModal;
  FreeAndNil(ffrmCadPedido_Copia);

  if (fDMCadPedido.Tag = 1) then
  begin
    //02/06/2016  incluido a filial
  if ((fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'G') or
     (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S')) and (fDMCadPedido.qParametros_ProdMATERIAL_FORNECEDOR_OC.AsString = 'S') then
      uCalculo_Pedido.prc_Filtrar_Produto_Cliente(fDMCadPedido,False);
    //****************
    if (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) then
      fDMCadPedido.cdsPedido.Post;
    fDMCadPedido.cdsPedido.Edit;
    vInclusao_Edicao := 'C';
    RzPageControl1.ActivePage := TS_Cadastro;
    btnAlterarClick(Sender);
  end;
  //15/07/2019
  if fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S' then
    fDMCadPedido.cdsPedidoAPROVADO_PED.AsString := 'P'
  else
    fDMCadPedido.cdsPedidoAPROVADO_PED.AsString := 'A';
    
  fDMCadPedido.Tag := 0;
end;

procedure TfrmCadOC.btnDescontoClick(Sender: TObject);
begin
  ffrmCadPedido_Desconto := TfrmCadPedido_Desconto.Create(self);
  ffrmCadPedido_Desconto.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Desconto.ShowModal;

  FreeAndNil(ffrmCadPedido_Desconto);
  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadOC.OrdemdeCompra11Click(Sender: TObject);
var
  vArq : String;
begin
  prc_Controle_Imp('P');

  fDMCadPedido.qFilial_Rel.Close;
  fDMCadPedido.qFilial_Rel.ParamByName('ID').AsInteger      := fDMCadPedido.cdsPedidoImpFILIAL.AsInteger;
  fDMCadPedido.qFilial_Rel.ParamByName('TIPO').AsInteger    := 3;
  fDMCadPedido.qFilial_Rel.ParamByName('POSICAO').AsInteger := 1;
  fDMCadPedido.qFilial_Rel.Open;
  vArq := fDMCadPedido.qFilial_RelCAMINHO.AsString;

  if FileExists(vArq) then
    fDMCadPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relat�rio n�o localizado! ' + vArq);
    Exit;
  end;
  fDMCadPedido.frxReport1.ShowReport;
end;

procedure TfrmCadOC.OC21Click(Sender: TObject);
var
  vArq : String;
begin
  prc_Controle_Imp('P');

  fDMCadPedido.qFilial_Rel.Close;
  fDMCadPedido.qFilial_Rel.ParamByName('ID').AsInteger      := fDMCadPedido.cdsPedidoImpFILIAL.AsInteger;
  fDMCadPedido.qFilial_Rel.ParamByName('TIPO').AsInteger    := 3;
  fDMCadPedido.qFilial_Rel.ParamByName('POSICAO').AsInteger := 2;
  fDMCadPedido.qFilial_Rel.Open;
  vArq := fDMCadPedido.qFilial_RelCAMINHO.AsString;

  if FileExists(vArq) then
    fDMCadPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relat�rio n�o localizado! ' + vArq);
    Exit;
  end;
  fDMCadPedido.frxReport1.ShowReport;
end;

procedure TfrmCadOC.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F4) and (fDMCadPedido.cdsPedido_Consulta.Active) then
  begin
    frmConsMotivoNaoAprov := TfrmConsMotivoNaoAprov.Create(self);
    frmConsMotivoNaoAprov.vID_OC_Loc   := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    frmConsMotivoNaoAprov.vItem_OC_Loc := 0;
    frmConsMotivoNaoAprov.ShowModal;
    FreeAndNil(frmConsMotivoNaoAprov);
  end;
end;

procedure TfrmCadOC.SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F4) and (fDMCadPedido.cdsPedido_ItensITEM.AsInteger > 0) then
  begin
    frmConsMotivoNaoAprov := TfrmConsMotivoNaoAprov.Create(self);
    frmConsMotivoNaoAprov.vID_OC_Loc   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
    frmConsMotivoNaoAprov.vItem_OC_Loc := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
    frmConsMotivoNaoAprov.ShowModal;
    FreeAndNil(frmConsMotivoNaoAprov);
  end;
end;

procedure TfrmCadOC.prc_Atualiza_Aprovacao_OC(ID: Integer);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'EXECUTE procedure prc_atualiza_aprov_ped ' + IntToStr(ID);
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadOC.RxDBLookupCombo9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_Centro_Custo := fDMCadPedido.cdsPedidoID_CENTROCUSTO.AsInteger;
    frmSel_CentroCusto := TfrmSel_CentroCusto.Create(Self);
    frmSel_CentroCusto.ShowModal;
    fDMCadPedido.cdsPedidoID_CENTROCUSTO.AsInteger := vID_Centro_Custo;
  end;
end;

procedure TfrmCadOC.SpeedButton9Click(Sender: TObject);
begin
  fDMCadPedido.cdsCentroCusto.Close;
  fDMCadPedido.cdsCentroCusto.Open;
end;

procedure TfrmCadOC.RxDBLookupCombo9DropDown(Sender: TObject);
begin
  RxDBLookupCombo9.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadOC.RxDBLookupCombo9CloseUp(Sender: TObject);
begin
  RxDBLookupCombo9.LookupDisplay := 'DESCRICAO';   
end;

end.

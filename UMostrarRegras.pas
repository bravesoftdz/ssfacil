unit UMostrarRegras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmMostrarRegras = class(TForm)
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Monta_Regra_ST;

  public
    { Public declarations }
  end;

var
  frmMostrarRegras: TfrmMostrarRegras;

implementation

{$R *.dfm}

procedure TfrmMostrarRegras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmMostrarRegras.FormShow(Sender: TObject);
begin
  prc_Monta_Regra_ST;
end;

procedure TfrmMostrarRegras.prc_Monta_Regra_ST;
begin
  Memo1.Clear;

  memo1.Lines.Add(' MVA 73,85% ');
  memo1.Lines.Add(' Vlr dos Itens: 100,00');
  memo1.Lines.Add(' ');
  memo1.Lines.Add('se o MVA for ajustado');
  memo1.Lines.Add('     Ajustar ST: (73,85 / 100) + 1 = 1,7385');
  memo1.Lines.Add('           Perc_Aux1 = 100 - 4 = 96  (4 � o % proprio)');
  memo1.Lines.Add('          perc_aux2 = 100 - 18 = 82 (18 � o % interno do Parana)');
  memo1.Lines.Add('       Perc_MVA = (((1,7385 * 96) / 82) - 1) * 100 = 103,53');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' Perc_MVA = Se for ajustado vai para 103,53');
  memo1.Lines.Add(' Perc_MVA = Se n�o for ajustado 73,85');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' Base ICMS ST:  100,00 * 103,53% (MVA) = 103,53 + 100,00 = 203,53');
  memo1.Lines.Add(' Base ICMS Proprio: 100');
  memo1.Lines.Add(' % ICMS Interno: 18%   (este � o % se fosse vendido para dentro da UF)');
  memo1.Lines.Add(' % ICMS Proprio: 4% (importado)');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' VlrICMS Proprio: 100,00 * 4% = 4,00   (este � o vlr do icms interestadual)');
  memo1.Lines.Add(' VlrICMS Interno: 203,53 * 18% = 36,64');
  memo1.Lines.Add(' Vlr ST:  36,64 - 4,00 = 32,64');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' Total da Nota: 100 + 32,64 = 100,64');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' ======================');
  memo1.Lines.Add(' vai verificar se o produto � importa��o, isto �, para usar o 4% que esta cadastrado na filial como % da lista camex.');
  memo1.Lines.Add(' para usar o % da lista camex, o produto tem que ser da origem "1", "2", "3", "8" e o');
  memo1.Lines.Add('   campo "Aplicar o % de ICMS diferenciado sobre Produtos Importados com sa�da InterEstadual (Lista Camex)" tem que estar');
  memo1.Lines.Add('   marcado no cadastro de produtos na aba Fiscal.');
  memo1.Lines.Add('   outra regra para usar os 4% � a UF do cliente n�o pode ser igual a UF da Filial, isto �, venda pra fora do estado.');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' No cadastro do NCM, se o campo "Usar MVA da UF de destino (Empresa Optante do Simples)" estiver marcado, o sistema vai');
  memo1.Lines.Add(' usar a UF da Filial.  Exemplo se estiver fazendo uma venda do RS para SP e este campo estiver marcado, o sistema');
  memo1.Lines.Add(' vai usar para calculo a UF da FILIAL que � RS (por isto este campo n�o pode estar marcado, quem usava ele era a Brazilia Bike)');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' No cadastro de Produtos, existe a aba "UF" onde posso informar o % de redu��o da base do icms, o % de redu��o da base da ST ou');
  memo1.Lines.Add('    pode ser informado o % do icms interno, que se informado ele vai ter prioridade.');
  memo1.Lines.Add('    Tamb�m nesta aba pode ser informado o % do icms proprio (interestadual) , que se informado vai ter prioridade.');
  memo1.Lines.Add(' No cadastro de Produtos, na aba "Fiscal" tem o campo "% Base de ICMS:" se informado vai servir para reduzir a base do icms proprio.');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' % ICMS Interno da UF :');
  memo1.Lines.Add('    prioridade:  No cadastro de produto, Cadastro da NCM por UF, e no cadastro da UF');
  memo1.Lines.Add('            Aqui n�o pode ser 4%');
  memo1.Lines.Add(' % ICMS Proprio (Interestadual):');
  memo1.Lines.Add('    Prioridade: No cadastro do produto, Cadastro da NCM por UF, e no cadastro da UF.... aqui tem a excess�o se o produto');
  memo1.Lines.Add('    for de origem importado a prioridade vai ser a lista camex que esta lan�ado no cadastro da filial que � 4%.');
  memo1.Lines.Add('            os lan�ados aqui podem ser 4% 7% ou 12%');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' BaseICMST : Vlr_Total + Vlr_IPI + Vlr_Frete + Vlr_Seguro + Outras_Despesas');
  memo1.Lines.Add('     (verificar que tem o esquema de ajuste do MVA, isto serve para alguns estados e alguns produtos)');
  memo1.Lines.Add(' 	(esta informa��o esta na tela de NCM)');
  memo1.Lines.Add(' 	(Ver que tamb�m tem a op��o no NCM da redu��o do MVA)');
  memo1.Lines.Add(' BaseICMS Proprio  : Vlr_Total + Vlr_Frete + Vlr_Seguro + Outras_Despesas');
  memo1.Lines.Add('      (Vlr_IPI s� vai ser calculado no icms proprio, se estiver marcado no item da nota que o ipi soma na base do icms)');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' Vlr_ICMS Proprio: BaseICMS Proprio * Perc_ICMS_Proprio / 100');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' Somar a BaseICMSST :  BaseICMSST + (BaseICMSST * MVA / 100)');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' Vlr_ICMS_Interno: (BaseICMSST * Perc_ICM_Interno / 100)');
  memo1.Lines.Add(' ');
  memo1.Lines.Add(' vVlrSubst := (BaseICMSST * vPerc_Interno / 100) - Vlr_ICMS Proprio))');
end;

end.

unit Visita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Comp.Client;

type
  TDestino = record
    NomeMorador: string;
    Numero: Integer;
    Bloco: string;
  end;

  TfrmVisita = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtNumApto: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtNomeMorador: TEdit;
    Button1: TButton;
    edtDoc: TMaskEdit;
    Label6: TLabel;
    edtBloco: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    FNome: string;
    FDocumento: Integer;
    FDestino: TDestino;
    FData: TDate;

    function ValidarDados: boolean;
    function ObterUltimoId(Tabela: string; Conexao: TFDQuery): Integer;
    function RemoverCaracteresDocumento(document: string): string;
  public
    { Public declarations }
  end;

var
  frmVisita: TfrmVisita;

implementation

uses
  Principal, System.RegularExpressions;

{$R *.dfm}
{ TfrmVisita }

procedure TfrmVisita.Button1Click(Sender: TObject);
var
  lIdApto, lIdVisita: Integer;
begin
  FNome := edtNome.Text;
  FDocumento := StrToIntDef(RemoverCaracteresDocumento(edtDoc.Text), 0);
  FData := Date;
  FDestino.NomeMorador := edtNomeMorador.Text;
  FDestino.Numero := strToIntDef(edtNumApto.Text, 0);
  FDestino.Bloco := edtBloco.Text;

  if ValidarDados then
  begin
    frmPrincipal.qryDestinos.SQL.Text := 'SELECT * FROM banco_fluxo_pessoas.destinos WHERE num_apto = &apto and bloco = &bloco';
    frmPrincipal.qryDestinos.Macros.MacroByName('apto').Value := FDestino.Numero;
    frmPrincipal.qryDestinos.Macros.MacroByName('bloco').Value := FDestino.Bloco;

    frmPrincipal.qryDestinos.Open();

    if frmPrincipal.qryDestinos.IsEmpty() then
      begin
        lIdApto := ObterUltimoId('destinos', frmPrincipal.qryDestinos);

        frmPrincipal.qryDestinos.Append();
        frmPrincipal.qryDestinos.FieldByName('num_apto').AsInteger := FDestino.Numero;
        frmPrincipal.qryDestinos.FieldByName('bloco').AsString := FDestino.Bloco;
        frmPrincipal.qryDestinos.FieldByName('id').AsInteger := lIdApto;
        frmPrincipal.qryDestinos.Post();
      end;

    frmPrincipal.qryDestinos.Close();

    frmPrincipal.qryVisitas.SQL.Text := 'SELECT * FROM banco_fluxo_pessoas.visitas WHERE documento = &doc';
    frmPrincipal.qryVisitas.Macros.MacroByName('doc').Value := FDocumento;

    frmPrincipal.qryVisitas.Open();

    if  frmPrincipal.qryVisitas.IsEmpty() then
      begin
        lIdVisita := ObterUltimoId('visitas', frmPrincipal.qryVisitas);

        frmPrincipal.qryVisitas.Append();
        frmPrincipal.qryVisitas.FieldByName('id').AsInteger := lIdVisita;
        frmPrincipal.qryVisitas.FieldByName('documento').AsInteger := FDocumento;
        frmPrincipal.qryVisitas.FieldByName('nome').AsString := FNome;
        frmPrincipal.qryVisitas.Post();
      end;

    frmPrincipal.qryVisitas.Close();

    frmPrincipal.qryVisDes.SQL.Text := 'SELECT * FROM banco_fluxo_pessoas.visitas_destinos';
    frmPrincipal.qryVisDes.Open();

    frmPrincipal.qryVisDes.Append();
    frmPrincipal.qryVisDes.FieldByName('id_visitas').AsInteger := lIdVisita;
    frmPrincipal.qryVisDes.FieldByName('id_destinos').AsInteger := lIdApto;
    frmPrincipal.qryVisDes.FieldByName('data').AsDateTime := Date;
    frmPrincipal.qryVisDes.Post();

    frmPrincipal.qryVisDes.Close();

    ModalResult := mrOk;
  end;
end;

function TfrmVisita.ValidarDados: boolean;
begin
  Result := True;

 if FNome.IsEmpty() then
  Result := False;

 if FDocumento < 9 then
  Result := False;

 if FData = 0 then
  Result := False;

 if not Result then
  begin
    ShowMessage('Preencha os campos com valores válidos!');
    Abort;
  end;

 if FDestino.NomeMorador.IsEmpty() then
  Result := False;

 if FDestino.Numero = 0 then
  Result := False;

 if FDestino.Bloco.IsEmpty() then
  Result := False;

 if not Result then
  begin
    ShowMessage('Preencha os campos de destino corretamente');
    Abort;
  end;

  Result := True;
end;

function TfrmVisita.RemoverCaracteresDocumento(document: string): string;
begin
  Result := TRegEx.Replace(document, '[^\d]', '');
end;

function TfrmVisita.ObterUltimoId(Tabela: string; Conexao: TFDQuery): Integer;
begin
  Conexao.SQL.Add('SELECT MAX(id) FROM banco_fluxo_pessoas.&Tabela');
  Conexao.Macros.MacroByName('Tabela').Value := Tabela;

  Result := Conexao.FieldByName('max').AsInteger + 1;
end;
end.

unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons,
  Data.DB, Data.SqlExpr, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.Phys.SQLiteVDataSet, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Vcl.DBCtrls, Vcl.Menus, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    Conexao: TFDConnection;
    qryDestinos: TFDQuery;
    qryVisDes: TFDQuery;
    qryVisitas: TFDQuery;
    dtsDestinos: TDataSource;
    dtsVisitas: TDataSource;
    Button2: TButton;
    SearchBox1: TSearchBox;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel2: TPanel;
    Label13: TLabel;
    Panel3: TPanel;
    Label14: TLabel;
    procedure Panel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure PreencherTabela;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Visita;
{$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  PreencherTabela();
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  qryVisitas.Free();
  qryVisDes.Free();
end;

procedure TfrmPrincipal.Panel1Click(Sender: TObject);
var
  lfrmVisita: TfrmVisita;
begin
  lfrmVisita :=  TfrmVisita.Create(nil);
  try
    lfrmVisita.ShowModal();

    if (lfrmVisita.ModalResult = mrOk) then
    begin
      ShowMessage(Format('Resultado, %s', [mrOk.ToString()]));
    end;
  finally
    lfrmVisita.Free();
  end;
end;

procedure TfrmPrincipal.PreencherTabela;
begin
  qryVisitas.SQL.Text := 'SELECT documento, nome FROM banco_fluxo_pessoas.visitas';
  qryVisitas.Open();
end;

end.

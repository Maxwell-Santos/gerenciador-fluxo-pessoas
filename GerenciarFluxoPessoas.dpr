program GerenciarFluxoPessoas;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  Visita in 'Visita.pas' {frmVisita},
  GerarRelatorio in 'GerarRelatorio.pas' {Relatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmVisita, frmVisita);
  Application.CreateForm(TRelatorio, Relatorio);
  Application.Run;
end.

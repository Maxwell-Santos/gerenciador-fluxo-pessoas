unit GerarRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.CheckLst, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TRelatorio = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Button1: TButton;
    Bloco: TComboBox;
    ComboBox1: TComboBox;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Relatorio: TRelatorio;

implementation

{$R *.dfm}

end.

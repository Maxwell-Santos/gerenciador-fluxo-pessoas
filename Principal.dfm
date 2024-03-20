object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Gerenciador de Fluxo de Pessoas'
  ClientHeight = 535
  ClientWidth = 815
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Label8: TLabel
    Left = 108
    Top = 151
    Width = 80
    Height = 15
    Caption = 'Procurar Visita'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'LblPesquisaVisita'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 116
    Top = 449
    Width = 112
    Height = 21
    Caption = 'nome do sujeito'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 300
    Top = 449
    Width = 93
    Height = 21
    Caption = '12.581.196-4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 116
    Top = 426
    Width = 37
    Height = 17
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 300
    Top = 426
    Width = 72
    Height = 17
    Caption = 'Documento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button2: TButton
    Left = 438
    Top = 439
    Width = 227
    Height = 31
    Cancel = True
    Caption = 'Adicionar nova visita'
    TabOrder = 0
  end
  object SearchBox1: TSearchBox
    Left = 206
    Top = 148
    Width = 459
    Height = 25
    AutoSelect = False
    AutoSize = False
    TabOrder = 1
    TextHint = 'Pesquisar'
  end
  object DBGrid1: TDBGrid
    Left = 108
    Top = 183
    Width = 557
    Height = 212
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'documento'
        Title.Alignment = taCenter
        Title.Caption = 'RG'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Destino'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Data'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 108
    Top = 80
    Width = 557
    Height = 41
    Cursor = crHandPoint
    BevelOuter = bvNone
    BorderWidth = 2
    Color = 14079702
    ParentBackground = False
    TabOrder = 3
    StyleName = 'Windows'
    OnClick = Panel1Click
    object Label13: TLabel
      Left = 2
      Top = 2
      Width = 553
      Height = 37
      Align = alClient
      Alignment = taCenter
      Caption = 'Cadastrar visitante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      OnClick = Panel1Click
      ExplicitLeft = 42
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitLeft = 4
    ExplicitTop = 26
    ExplicitWidth = 807
    object Label14: TLabel
      Left = 249
      Top = 18
      Width = 324
      Height = 19
      Caption = 'Gerenciador de fluxo - Condom'#237'nio Vit'#243'ria'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Inter'
      Font.Style = []
      ParentFont = False
    end
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 528
    Top = 8
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=banco_fluxo_pessoas'
      'User_Name=postgres'
      'Password=123'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 568
    Top = 8
  end
  object qryDestinos: TFDQuery
    ChangeAlertName = 'qryDestinso'
    Connection = Conexao
    SQL.Strings = (
      '')
    Left = 608
    Top = 8
  end
  object qryVisDes: TFDQuery
    ChangeAlertName = 'qryDestinso'
    Connection = Conexao
    SQL.Strings = (
      '')
    Left = 640
    Top = 8
  end
  object qryVisitas: TFDQuery
    ChangeAlertName = 'qry1'
    Connection = Conexao
    SQL.Strings = (
      '')
    Left = 672
    Top = 8
  end
  object dtsDestinos: TDataSource
    DataSet = qryDestinos
    Left = 728
    Top = 8
  end
  object dtsVisitas: TDataSource
    DataSet = qryVisitas
    Left = 776
    Top = 8
  end
end

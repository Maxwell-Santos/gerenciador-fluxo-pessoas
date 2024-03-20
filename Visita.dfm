object frmVisita: TfrmVisita
  Left = 0
  Top = 0
  Caption = 'Cadastrar nova Visita'
  ClientHeight = 358
  ClientWidth = 428
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 193
    Height = 23
    Caption = 'Cadastrar nova visita'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Inter'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 73
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 24
    Top = 137
    Width = 89
    Height = 15
    Caption = 'Documento (RG)'
  end
  object Label4: TLabel
    Left = 290
    Top = 209
    Width = 40
    Height = 15
    Caption = 'N'#176' Apto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'NomeMorador'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 209
    Width = 82
    Height = 15
    Caption = 'Nome Morador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'NomeMorador'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 351
    Top = 209
    Width = 31
    Height = 15
    Caption = 'Bloco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'NomeMorador'
    Font.Style = []
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 24
    Top = 94
    Width = 250
    Height = 23
    ImeName = 'edtNome'
    TabOrder = 0
    TextHint = 'Insira o nome da visita'
  end
  object edtNumApto: TEdit
    Left = 290
    Top = 230
    Width = 55
    Height = 23
    MaxLength = 2
    TabOrder = 3
  end
  object edtNomeMorador: TEdit
    Left = 24
    Top = 230
    Width = 250
    Height = 23
    TabOrder = 2
    TextHint = 'Insira o nome do morador'
  end
  object Button1: TButton
    Left = 24
    Top = 286
    Width = 379
    Height = 30
    Cursor = crHandPoint
    Caption = 'Cadastrar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object edtDoc: TMaskEdit
    Left = 24
    Top = 158
    Width = 249
    Height = 23
    EditMask = '99\.999\.999-9;1;_'
    MaxLength = 12
    TabOrder = 1
    Text = '  .   .   - '
    TextHint = '00.000.000-0'
  end
  object edtBloco: TEdit
    Left = 351
    Top = 230
    Width = 52
    Height = 23
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 5
  end
end

object Relatorio: TRelatorio
  Left = 0
  Top = 0
  Caption = 'Gerar Relat'#243'rio'
  ClientHeight = 431
  ClientWidth = 768
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 64
    Top = 52
    Width = 29
    Height = 15
    Caption = 'In'#237'cio'
  end
  object Label2: TLabel
    Left = 183
    Top = 52
    Width = 20
    Height = 15
    Caption = 'Fim'
  end
  object Label3: TLabel
    Left = 335
    Top = 51
    Width = 28
    Height = 15
    Caption = 'Local'
  end
  object Label4: TLabel
    Left = 64
    Top = 16
    Width = 80
    Height = 23
    Caption = 'Relat'#243'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Inter'
    Font.Style = []
    ParentFont = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 64
    Top = 73
    Width = 105
    Height = 23
    Date = 45354.000000000000000000
    Time = 0.943124386576528200
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 183
    Top = 73
    Width = 105
    Height = 23
    Date = 45354.000000000000000000
    Time = 0.943124386576528200
    TabOrder = 1
  end
  object Button1: TButton
    Left = 549
    Top = 71
    Width = 156
    Height = 25
    Cancel = True
    Caption = 'Filtrar'
    TabOrder = 4
  end
  object Bloco: TComboBox
    Left = 335
    Top = 72
    Width = 57
    Height = 23
    TabOrder = 2
    Text = 'Bloco'
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E'
      'F')
  end
  object ComboBox1: TComboBox
    Left = 403
    Top = 72
    Width = 105
    Height = 23
    TabOrder = 3
    Text = 'Apartamento'
    Items.Strings = (
      '11'
      '12'
      '13'
      '14'
      '21'
      '22'
      '23'
      '24'
      '31'
      '32'
      '33'
      '34'
      '')
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 112
    Width = 641
    Height = 233
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Data'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Nome'
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Documento'
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Bloco'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Apto'
        Width = 89
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 64
    Top = 376
    Width = 156
    Height = 25
    Caption = 'Limpar filtros'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 549
    Top = 376
    Width = 156
    Height = 25
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 6
  end
end

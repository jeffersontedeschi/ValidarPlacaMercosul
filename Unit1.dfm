object Form1: TForm1
  Left = 335
  Top = 154
  Width = 248
  Height = 169
  BorderIcons = [biSystemMenu]
  Caption = 'Placa Mercosul - Valida'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 232
    Height = 130
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 17
      Width = 180
      Height = 13
      Caption = 'Digite a Placa que gostaria de Validar.'
    end
    object Button1: TButton
      Left = 68
      Top = 81
      Width = 81
      Height = 33
      Caption = 'Validar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 23
      Top = 41
      Width = 185
      Height = 33
      MaxLength = 7
      TabOrder = 1
    end
  end
end

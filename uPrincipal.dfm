object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'Certificado via WinCrypt'
  ClientHeight = 233
  ClientWidth = 490
  Color = clBtnFace
  Constraints.MaxHeight = 350
  Constraints.MaxWidth = 600
  Constraints.MinHeight = 272
  Constraints.MinWidth = 401
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  DesignSize = (
    490
    233)
  TextHeight = 15
  object btnLerCertificado: TButton
    Left = 289
    Top = 200
    Width = 112
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ler Certificado'
    TabOrder = 0
    OnClick = btnLerCertificadoClick
    ExplicitLeft = 184
  end
  object Button1: TButton
    Left = 407
    Top = 200
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Sair'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitLeft = 302
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 474
    Height = 186
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemHeight = 17
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 369
  end
end

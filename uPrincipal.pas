unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TfPrincipal = class(TForm)
    btnLerCertificado: TButton;
    Button1: TButton;
    ListBox1: TListBox;
    procedure btnLerCertificadoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses CryptSimples;

{$R *.dfm}

procedure TfPrincipal.btnLerCertificadoClick(Sender: TObject);
var
  oCryptSimple : TCryptSimple;
begin
  oCryptSimple := TCryptSimple.Create;

  try
    oCryptSimple.SelecionarCertificado();

    ListBox1.Items.Clear;
    ListBox1.Items.Add('Chave: '+oCryptSimple.NumeroSerial);
    ListBox1.Items.Add('Nome: '+oCryptSimple.NomeEmpresa);
    ListBox1.Items.Add('Vencimento: '+oCryptSimple.DataVencimento);

  finally
    oCryptSimple.Free;
  end;
end;

procedure TfPrincipal.Button1Click(Sender: TObject);
begin
  Close;
end;

end.

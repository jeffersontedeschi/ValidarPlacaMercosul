unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function ValidaPlacaVeiculo(sPlaca:String): Boolean;
var
  i : byte;
begin

  sPlaca := UpperCase(sPlaca);
  Result := Length(sPlaca) = 7;

  // Se em alguma linhar resultar False "not(Result)",
  // ele já finaliza a verificação e gera mensagem para o usuario.

  if (Result) then
  for i := 1 to 7 do begin
      // Testa as 3 primeiras casas...
      if (i <= 3) then
      Result := sPlaca[i] in ['A'..'Z'];

      if not(Result) then exit;

      // Testa a quarta casa...
      if (i = 4) then
      Result := sPlaca[i] in ['0'..'9'];

      if not(Result) then Exit;

      // Testa a quinta casa...
      if (i = 5) then
      Result := sPlaca[i] in ['A'..'Z','0'..'9'];


      if not(Result) then Exit;

      // Testa as duas ultimas casas...
      if (i > 5) then
      Result := sPlaca[i] in ['0'..'9'];

      if not(Result) then Exit;
  end;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
        if ValidaPlacaVeiculo(edit1.text) then
         ShowMessage('Placa Válida!')
        else
         ShowMessage('Placa não Válida!');
end;

end.

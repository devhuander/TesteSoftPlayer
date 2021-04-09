unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uspQuery;

type
  TfTarefa1 = class(TForm)
    lbColunas: TLabel;
    lbTabelas: TLabel;
    lbCondicoes: TLabel;
    lbSQLGerado: TLabel;
    mmoColunas: TMemo;
    mmoTabelas: TMemo;
    mmoCondicoes: TMemo;
    mmoSQLGerado: TMemo;
    btGerarSQL: TButton;
    procedure btGerarSQLClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btGerarSQLClick(Sender: TObject);
var
  spQuery: TspQuery;
begin
  spQuery := TspQuery.Create(nil);
  mmoSQLGerado.Lines.Clear;

  try
    spQuery.spCondicoes.Text := mmoCondicoes.Lines.Text;
    spQuery.spTabelas.Text   := mmoTabelas.Lines.Text;
    spQuery.spColunas.Text   := mmoColunas.Lines.Text;

    mmoSQLGerado.Lines.Add(spQuery.GeraSQL);
  finally
    spQuery.Free;
  end;
end;
procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action   := TCloseAction.caFree;
  fTarefa1 := nil;
end;

procedure TfTarefa1.FormShow(Sender: TObject);
begin
  mmoColunas.SetFocus;
end;

end.

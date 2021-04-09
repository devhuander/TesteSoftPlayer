unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  ufTarefa1, ufTarefa2, ufTarefa3;

type
  TViewPrincipal = class(TForm)
    mmnPrincipal: TMainMenu;
    mniTarefas: TMenuItem;
    mniTarefa1: TMenuItem;
    mniTarefa2: TMenuItem;
    mniTarefa3: TMenuItem;
    procedure mniTarefa1Click(Sender: TObject);
    procedure mniTarefa2Click(Sender: TObject);
    procedure mniTarefa3Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowForm(frmShow: TFormClass; var Ref);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

{ TViewPrincipal }

procedure TViewPrincipal.ShowForm(frmShow: TFormClass; var Ref);
begin
  if Assigned(TForm(Ref)) then
  begin
    with TForm(Ref) do
    begin
      Show;
      BringToFront;
    end;
  end
  else
  begin
    Application.CreateForm(frmShow, TForm(Ref));
    with  TForm(Ref) do
    begin
      Position := poMainFormCenter;
      Show;
    end;
  end;
end;

procedure TViewPrincipal.mniTarefa1Click(Sender: TObject);
begin
  ShowForm(TfTarefa1, fTarefa1);
end;

procedure TViewPrincipal.mniTarefa2Click(Sender: TObject);
begin
  ShowForm(TfTarefa2, fTarefa2);
end;

procedure TViewPrincipal.mniTarefa3Click(Sender: TObject);
begin
  ShowForm(TfTarefa3, fTarefa3);
end;

end.

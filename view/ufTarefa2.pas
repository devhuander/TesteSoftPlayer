unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Controller.Threads;

type
  TfTarefa2 = class(TForm)
    lblThread1: TLabel;
    edtThread1: TEdit;
    edtThread2: TEdit;
    lblThread2: TLabel;
    btnExecutar: TButton;
    pbThread1: TProgressBar;
    pbThread2: TProgressBar;
    procedure btnExecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ThreadTempo1, ThreadTempo2: TThreadTarefa2;
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.btnExecutarClick(Sender: TObject);
begin
  ThreadTempo1 := TThreadTarefa2.Create(pbThread1, StrToInt(edtThread1.Text));
  ThreadTempo2 := TThreadTarefa2.Create(pbThread2, StrToInt(edtThread2.Text));

  ThreadTempo1.Start;
  ThreadTempo2.Start;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(ThreadTempo1) then
  begin
    if not ThreadTempo1.Finished then
    begin
      ThreadTempo1.Terminate;
      ThreadTempo1.WaitFor;
      ThreadTempo1.Free;
    end;
  end;

  if Assigned(ThreadTempo2) then
  begin
    if not ThreadTempo2.Finished then
    begin
      ThreadTempo2.Terminate;
      ThreadTempo2.WaitFor;
      ThreadTempo2.Free;
    end;
  end;

  Action   := TCloseAction.caFree;
  fTarefa2 := nil;
end;

end.

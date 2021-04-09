unit Interfaces.Tarefa3;

interface

uses Data.DB;

type
  iTarefa3 = interface
    ['{EE65CB6C-5062-4828-B49B-7DA93B138CFF}']
    function GetDataSource: TDataSource;

    function RetornaTotal: Double;
    function RetornaDivisao: Double;

    property DataSource: TDataSource read GetDataSource;
  end;

implementation

end.

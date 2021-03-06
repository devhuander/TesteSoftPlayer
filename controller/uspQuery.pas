unit uspQuery;

interface

uses Interfaces.SPQuery, Classes, System.SysUtils, StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys;

type

  TspQuery = class(TFDQuery, iSPQuery)
  private
    { private declarations }
    FspCondicoes: TStringList;
    FspColunas:   TStringList;
    FspTabelas:   TStringList;
  protected
    { protected declarations }
    {$REGION 'Metodos get_set'}
      function GetSpCondicoes: TStringList;
      procedure SetSPCondicoes(aValue: TStringList);

      function GetSpColunas: TStringList;
      procedure SetSPColunas(aValue: TStringList);

      function GetSpTabelas: TStringList;
      procedure SetSPTabelas(aValue: TStringList);
    {$ENDREGION}
  public
    { public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    ///  <summary>Valida??o da tabela, com restri??o de uma ?nica tabela</summary>
    ///  <date>08/04/2021</date>
    ///  <author>Huander Leao</author>
    procedure VerificarTabela;
    ///  <summary>Percorre a StringList e retorna uma string para formar a condi??o da SQL</summary>
    ///  <return>String montada do recurso</return>
    ///  <param name="aStringList">Lista para ser percorrida</param>
    ///  <param name="aTipoList">Identificador de separador de condi??es</param>
    ///  <date>08/04/2021</date>
    ///  <author>Huander Leao</author>
    function ListaParaString(aStringList: TStringList; aTipoLista: TTipoLista): String;
    ///  <summary>Forma a SQL de acordo com a tabela, colunas e condicoes</summary>
    ///  <return>Ser? retornada a consulta</return>
    ///  <date>08/04/2021</date>
    ///  <author>Huander Leao</author>
    function GeraSQL: String;
  published
    { published declarations }
    property spCondicoes: TStringList read GetSpCondicoes write SetSpCondicoes;
    property spColunas:   TStringList read GetSpColunas   write SetSpColunas;
    property spTabelas:   TStringList read GetSpTabelas   write SetSpTabelas;
  end;

implementation

{ TspQuery }

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FspCondicoes := TStringList.Create;
  FspColunas   := TStringList.Create;
  FspTabelas   := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin
  FspCondicoes.Free;
  FspColunas.Free;
  FspTabelas.Free;
  inherited Destroy;
end;

procedure TspQuery.VerificarTabela;
begin
  if FspTabelas.Count = 0 then
    raise Exception.Create('Falta informar a tabela' + #13 + 'ATEN??O!')
  else if FspTabelas.Count > 1 then
    raise Exception.Create('Informe somente uma tabela' + #13 +
                           'ATEN??O!');
end;

function TspQuery.GeraSQL: String;
begin
  SQL.Clear;
  VerificarTabela;

  Result := '';
  Result := 'select ' + ListaParaString(FspColunas, TTipoLista.tpColunas);
  Result := Result + ' from ' + FspTabelas.Strings[0];
  Result := Result + ' ' + ListaParaString(FspCondicoes, TTipoLista.tpCondicoes);

  SQL.Add(Result);
end;

function TspQuery.ListaParaString(aStringList: TStringList;
                                  aTipoLista:  TTipoLista): String;
var
  I: Integer;
begin
  Result := '';

  for I := 0 to Pred(aStringList.Count) do
  begin
    case aTipoLista of
      tpColunas:
      begin
         if Result <> '' then
           Result := Result + ', ';
      end;

      tpCondicoes:
      begin
        if Result = '' then
        begin
          if Copy(Trim(aStringList.Strings[I]), 0, 3) = 'and' then
            Result := Copy(Trim(aStringList.Strings[I]), 4, Length(Trim(aStringList.Strings[I])))
          else if Copy(Trim(aStringList.Strings[I]), 0, 2) = 'or' then
            Result := Copy(Trim(aStringList.Strings[I]), 3, Length(Trim(aStringList.Strings[I])))
          else Result := ' ' + Trim(aStringList.Strings[I]);

          Continue;
        end
        else if (Pos('AND ', Trim(UpperCase(Trim(aStringList.Strings[I])))) <= 0) and
                (Pos('OR ', Trim(UpperCase(Trim(aStringList.Strings[I])))) <= 0) then
          Result := Result + ' and '
        else
          Result := Result + ' ';
      end;
    end;

    Result := Result + Trim(aStringList.Strings[I]);
  end;

  if (Result = '') and (aTipoLista = TTipoLista.tpColunas) then
    Result := ' * '
  else if (Result <> '') and (aTipoLista = TTipoLista.tpCondicoes) then
    Result := 'where' + Result;
end;

{$REGION 'Get_Sets'}
function TspQuery.GetSpColunas: TStringList;
begin
  Result := FspColunas;
end;

function TspQuery.GetSpCondicoes: TStringList;
begin
  Result := FspCondicoes;
end;

function TspQuery.GetSpTabelas: TStringList;
begin
  Result := FspTabelas;
end;

procedure TspQuery.SetSPColunas(aValue: TStringList);
begin
  FspColunas := aValue;
end;

procedure TspQuery.SetSPCondicoes(aValue: TStringList);
begin
  FspCondicoes := aValue;
end;

procedure TspQuery.SetSPTabelas(aValue: TStringList);
begin
  FspTabelas := aValue;
end;

{$ENDREGION}

end.

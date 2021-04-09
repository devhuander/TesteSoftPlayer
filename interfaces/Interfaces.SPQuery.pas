unit Interfaces.SPQuery;

interface


uses Classes;


type
  TTipoLista = (tpColunas, tpCondicoes);

  iSPQuery = interface
    ['{A611BD8F-B384-4ED0-AF5D-3BCA658B451D}']

    function  GetSpColunas: TStringList;
    procedure SetSPColunas(aValue: TStringList);

    function  GetSpTabelas: TStringList;
    procedure SetSPTabelas(aValue: TStringList);

    function  GetSpCondicoes: TStringList;
    procedure SetSPCondicoes(aValue: TStringList);

    property spColunas: TStringList   read GetSpColunas   write SetSpColunas;
    property spTabelas: TStringList   read GetSpTabelas   write SetSpTabelas;
    property spCondicoes: TStringList read GetSpCondicoes write SetSpCondicoes;

    ///  <summary>Valida��o da tabela, com restri��o de uma �nica tabela</summary>
    ///  <date>08/04/2021</date>
    ///  <author>Huander Leao</author>
    procedure VerificarTabela;
    ///  <summary>Percorre a StringList e retorna uma string para formar a condi��o da SQL</summary>
    ///  <return>String montada do recurso</return>
    ///  <param name="aStringList">Lista para ser percorrida</param>
    ///  <param name="aTipoList">Identificador de separador de condi��es</param>
    ///  <date>08/04/2021</date>
    ///  <author>Huander Leao</author>
    function ListaParaString(aStringList: TStringList; aTipoLista: TTipoLista): String;
    ///  <summary>Forma a SQL de acordo com a tabela, colunas e condicoes</summary>
    ///  <return>Ser� retornada a consulta</return>
    ///  <date>08/04/2021</date>
    ///  <author>Huander Leao</author>
    function GeraSQL: String;

  end;

implementation

end.

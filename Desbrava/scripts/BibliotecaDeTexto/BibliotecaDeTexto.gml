
function Consulta(texto)
{
	Tabela = LerLinha(texto,0,".");
	Rotulos = LerLinha(texto,1,".");
	Valores = LerLinha(texto,2,".");
	Definidor = LerLinha(texto,3,".");
	Condicao = LerLinha(texto,4,".")
	return Tabela+Rotulos+Valores+Definidor+Condicao;
}

function LerLinha(texto, numLinha, identificador)
{
    var lista = string_split(texto, identificador);
    return lista[numLinha];
}

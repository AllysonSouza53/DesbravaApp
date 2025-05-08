clique = function()
{
	confirmacao = monitorador();
	if (confirmacao == 1)
	{
		texto = LerArquivo(working_directory+"BancoInterno\\Buscar\\memoria.txt");
		show_message(texto);
	}
}
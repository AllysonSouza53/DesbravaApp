if(ativo)
{
	tecla = keyboard_lastchar;
	cod_tecla = keyboard_key;
	if(cod_tecla!= vk_backspace && string_width(texto)<= TamanhoTexto(limite_caracter)) {
		inserir_caractere(tecla)
	}else{
		if (ativo && pos_cursor > 0 && cod_tecla = vk_backspace)
		{
			deletar_caractere();
		}
	}
}
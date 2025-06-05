texto = "";
tecla ="";
ativo = false;
pos_cursor = x+4;
x_mouse = 0;
tamanho_texto_restante= 0;
local_cursor = 0;
indice_cursor = 0;
limite_caracter = 21;
tamanho_texto = 0;
cod_tecla = 0;

ativar = function()
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (mouse_x >= x && mouse_x <= x + 300 && mouse_y >= y && mouse_y <= y + 30)
        {
            ativo = true;

        }
        else
        {
            ativo = false;
        }
    }
}

entrada_mouse_cursor = function()
{
    if (ativo && mouse_check_button_pressed(mb_left))
    {
        if (mouse_x >= x + 4 && mouse_x <= x + 300 && mouse_y >= y && mouse_y <= y + 30)
        {
            x_mouse = mouse_x - (x + 4);
			tamanho_texto_restante = 0;
            local_cursor = 0;
            
            for (var i = 1; i <= string_length(texto); i++)
            {
                tamanho_texto_restante += string_width(string_copy(texto, i, 1));
                if (x_mouse < tamanho_texto_restante)
                {
                    local_cursor = i - 1;
					indice_cursor = local_cursor;
                    break;
                }
            }
            
            if (x_mouse >= tamanho_texto_restante)
            {
                local_cursor = string_length(texto);
				indice_cursor = local_cursor;
            }
            
            pos_cursor = x + 4 + string_width(string_copy(texto, 1, indice_cursor));
        }
    }
}

inserir_caractere = function(letra)
{
    texto = string_insert(letra, texto, indice_cursor + 1);
    indice_cursor += 1;
	pos_cursor = pos_cursor+string_width(tecla);
}

deletar_caractere = function()
{
    if (indice_cursor > 0)
    {
        texto = string_delete(texto, indice_cursor, 1);
        indice_cursor -= 1;
        pos_cursor = x + 4 + string_width(string_copy(texto, 1, indice_cursor));
    }
}

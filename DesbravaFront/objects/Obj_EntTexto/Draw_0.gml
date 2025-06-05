if(ativo)
{
	draw_sprite(Spr_EntTexto,1,x,y);
	draw_set_color(c_black);
	draw_line(pos_cursor,y+4,pos_cursor,y+26);
	draw_set_color(-1);
}else{
	draw_sprite(Spr_EntTexto,0,x,y);
}
draw_set_color(c_black);
draw_text(x+4,y+4,texto);
tamanho_texto = string_width(texto);
if(tamanho_texto>=TamanhoTexto(limite_caracter))
{
	draw_set_color(c_red);
	draw_text(x+4,y+32,"Limite atingido");
}
draw_set_color(-1);
draw_set_font(-1);

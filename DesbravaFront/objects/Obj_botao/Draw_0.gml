//desenha no objeto
draw_self();
//centraliza o texto
draw_set_halign(1);//valor 1 centraliza o texto:horizontal
draw_set_valign(1);//valor 1 centraliza o texto:vertical
//define a font
draw_set_font(Font_Arial);
//desenha o texto
//draw_text(x,y,texto_botao);
draw_text_transformed(x,y,texto_botao,escala_texto_x,escala_texto_y,0)
//resetando font, por todos os set serem variaveis globais, devemos resetalo logo após que for feito
draw_set_font(-1);
//Resetando, pois por serem comandos globais devem ser resetados
draw_set_halign(-1);//valor -1 reseta o texto:horizontal
draw_set_valign(-1);//valor -1 reseta o texto:vertical
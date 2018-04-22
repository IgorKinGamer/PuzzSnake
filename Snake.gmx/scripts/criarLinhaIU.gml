// criarLinhaIU([x, y,] tamanhos[, direção])
// tamanhos: lista
// direção: 0 - horizontal; 1 -  vertical

var _x;
var _y;
var tamanhos;
var direcao;

_x = 0;
_y = 0;
direcao = 0; // Horizontal

if (argument_count == 1)
{
    tamanhos = argument[0];
}
else if (argument_count == 2)
{
    tamanhos = argument[0];
    direcao  = argument[1];
}
else if (argument_count == 3)
{
    _x       = argument[0];
    _y       = argument[1];
    tamanhos = argument[2];
}
else if (argument_count == 4)
{
    _x       = argument[0];
    _y       = argument[1];
    tamanhos = argument[2];
    direcao  = argument[3];
}

var nPosicoes = ds_list_size(tamanhos);

var linha = instance_create(_x, _y, obj_IU_Linha);

linha.direcao = direcao;
linha.tamanhos = tamanhos;
linha.nPosicoes = nPosicoes;
//linha.objetos = ds_list_create();
//ds_list_add(linha.objetos, );
linha.deslocamentos = ds_list_create();
linha.deslocamentos[|0] = 0;
var i;
for (i = 1; i < nPosicoes; i++)
    linha.deslocamentos[|i] =
            linha.deslocamentos[|i-1] + tamanhos[|i-1];

return linha;


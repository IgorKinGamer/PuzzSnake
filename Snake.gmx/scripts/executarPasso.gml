// executarPasso()

// Descobre a nova posição
var dx, dy, xNovo, yNovo;
switch (direcao)
{
    case DIR_ESQUERDA: dx = -1; dy =  0; break;
    case DIR_DIREITA:  dx =  1; dy =  0; break;
    case DIR_CIMA:     dx =  0; dy = -1; break;
    case DIR_BAIXO:    dx =  0; dy =  1; break;
}
xNovo = x + dx*BLOCO;
yNovo = y + dy*BLOCO;

var chao, membro, ultimoMembro;
chao = instance_place(xNovo, yNovo, obj_Chao);
membro = instance_place(xNovo, yNovo, obj_Membro);
ultimoMembro = ds_list_find_value(corpo, ds_list_size(corpo) - 1);
// Verifica se vai morrer
if (chao != noone || (membro != noone && membro != ultimoMembro))
{
    morrer();
    exit;
}

// Verifica se tem comida
var comida = instance_place(xNovo, yNovo, obj_Comida); // Ineficiente...
if (comida != noone)
    comer(comida);
else
    sprite_index = spr_Cabeca; // Para de sorrir

// Verifica se deve crescer
if (nCrescer > 0)
{
    ds_list_add(corpo, instance_create(0, 0, obj_Membro));
    nCrescer--;
}

// Move todos os membros
moverMembros(xNovo, yNovo);

// Avança a música
avancarMusica();


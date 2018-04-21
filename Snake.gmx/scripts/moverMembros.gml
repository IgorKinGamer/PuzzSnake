// moverMembros(xNovo, yNovo)

var xNovo = argument0;
var yNovo = argument1;

// Move cada membro
var i;
for (i = ds_list_size(corpo) - 1; i > 0; i--)
{
    var membro, anterior;
    membro = corpo[|i];
    anterior = corpo[|i - 1];
    membro.x = anterior.x;
    membro.y = anterior.y;
}

// Move a cabeça
x = xNovo;
y = yNovo;
direcaoAnt = direcao;


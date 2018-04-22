// colocarNaLinhaIU(linha, objeto, posição, alinhamento)

var linha       = argument[0];
var objeto      = argument[1];
var posicao     = argument[2] - 1;
var alinhamento = 0.5;

if (argument_count == 4)
    alinhamento = argument[3];

//linha.objetos[...] = objeto
//objeto.IU_Linha_alinhamento = alinhamento;

// Posiciona
objeto.x = linha.x;
objeto.y = linha.y;

var desl = linha.deslocamentos[|posicao] + alinhamento*linha.tamanhos[|posicao];
if (linha.direcao == 0) // Horizontal
    objeto.x += desl;
else                    // Vertical
    objeto.y += desl;


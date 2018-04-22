// criarTextoIU(texto, fonte, cor[, alinH, alinV])
// alin<H ou V>: -1, 0, 1

var txt   = argument[0];
var fonte = argument[1];
var cor   = argument[2];
var alinH;
var alinV;

alinH = 0;
alinV = 0;

if (argument_count == 5)
{
    alinH = argument[3];
    alinV = argument[4];
}

var texto = instance_create(0, 0, obj_IU_Texto);

switch (alinH)
{
    case -1: alinH = fa_left;   break;
    case 0:  alinH = fa_center; break;
    case 1:  alinH = fa_right;  break;
}
switch (alinV)
{
    case -1: alinV = fa_top;    break;
    case 0:  alinV = fa_middle; break;
    case 1:  alinV = fa_bottom; break;
}

texto.texto = txt;
texto.alinH = alinH;
texto.alinV = alinV;
texto.fonte = fonte;
texto.cor   = cor;

return texto;


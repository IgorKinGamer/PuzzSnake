// criarEfeito(x, y, raio, tempo)

var _x    = argument0;
var _y    = argument1;
var raio  = argument2;
var tempo = argument3;

var efeito = instance_create(_x, _y, obj_Efeito);
efeito.raio = raio;
efeito.tempo = tempo;


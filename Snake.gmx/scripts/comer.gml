// comer(comida: obj_Comida)

var comida = argument0;

// Manda crescer de acordo com a comida
switch (comida.object_index)
{
    case obj_Comida: // Cresce em um bloco
        nCrescer++;
        break;
    case obj_Comidona: // Cresce em ? blocos
        nCrescer += 3;
        break;
}

// Cria efeito
criarEfeito(comida.x + BLOCO/2, comida.y + BLOCO/2, 128, 0.5 * room_speed);

// Sorri
sprite_index = spr_CabecaVitoria;

// Destrói a comida
with (comida)
    instance_destroy();
   
// Som
audio_play_sound(som_Comida, 0, false);


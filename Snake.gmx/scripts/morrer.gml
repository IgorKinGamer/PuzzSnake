// morrer()

estado = EST_MORTA;

sprite_index = spr_CabecaDerrota;
direcao = direcao ^ 1; // TODO

// Choro
audio_play_sound(choose(som_Morte1, som_Morte2), 0, false);

// Para música
if (global.notaFundo != -1)
    audio_stop_sound(global.notaFundo);

instance_create(0, 0, obj_ReiniciadorDeFase);


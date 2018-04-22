// morrer()

estado = EST_MORTA;

sprite_index = spr_CabecaDerrota;
direcao = direcao ^ 1; // TODO

// Para música
if (global.notaFundo != -1)
    audio_stop_sound(global.notaFundo);

instance_create(0, 0, obj_ReiniciadorDeFase);


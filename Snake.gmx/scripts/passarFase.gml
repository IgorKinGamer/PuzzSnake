// passarFase()

estado = EST_GANHOU;

// Sorri
sprite_index = spr_CabecaVitoria;

// Som
audio_play_sound(som_Vitoria, 0, false);

// Efeito etc.
instance_create(0, 0, obj_PassadorDeFase);


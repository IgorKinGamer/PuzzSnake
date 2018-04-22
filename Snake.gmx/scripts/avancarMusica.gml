// avancarMusica()

// Melodia: toca a nota
var nota = global.melodia[| global.posMelodia ];
// TODO Notas aleatórias
//if (nota == -2)
//    nota = notaAleatoria();
audio_play_sound(nota, 0, false);
global.posMelodia++;
// Final
if (global.posMelodia == ds_list_size(global.melodia))
    global.posMelodia = 0;


// Fundo: Para a nota anterior e toca a nova
// Verifica se mudou de nota
var notaNova = global.fundo[| global.posFundo ];
if (notaNova != global.notaFundo)
{
    // Para a anterior (se houver)
    if (global.notaFundo != -1)
        audio_stop_sound(global.notaFundo);
    // Atualiza a nota e toca (se houver)
    global.notaFundo = notaNova;
    if (notaNova != -1)
        audio_play_sound(notaNova, 0, false);
}
global.posFundo++;
// Final
if (global.posFundo == ds_list_size(global.fundo))
    global.posFundo = 0;


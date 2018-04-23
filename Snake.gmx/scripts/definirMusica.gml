// definirMusica()

var defMelodia, defFundo;

ds_list_clear(global.notas);
switch (room)
{
    case TelaInicial:
    case FaseCanos:
    case FaseManobras:
    case TelaLD41:
        // Batida
        defMelodia = "usausuas" + "usau uaa" + "usaxsuas" + "uxuxxxxx";
        defFundo   = " ";
        ds_list_add(global.notas, "u", "s", "a");
        break;
    
    default:
        // Música 1
        defMelodia = "1 3 24  " + "3 4321  " + "1 3 24  " + "3 432 1 "
                + "1 2 13  " + "xxxxxxxx" + "1 1 21 3" + "xxxxxxxx";
        defFundo   = "CCCCCCCC" + "FFFFFFFF" + "aaaaaaaa" + "FFFFFFFF";
        ds_list_add(global.notas, "1", "2", "3", "4");
        break;
}

ds_list_clear(global.melodia);
decodificarMelodia(defMelodia);
ds_list_clear(global.fundo)
decodificarFundo(defFundo);

global.posMelodia = 0;
global.posFundo   = 0;
global.notaFundo  = -1;


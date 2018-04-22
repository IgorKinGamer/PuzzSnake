// decodificarMelodia(defMelodia: String)

var defMelodia = argument0;

var i;
// Cada nota
for (i = 1; i <= string_length(defMelodia); i++)
{
    var defNota = string_char_at(defMelodia, i); // Indexado de 1 a n!
    // "x" significa nota aleatória
    if (defNota == "x")
        defNota = global.notas[| irandom(ds_list_size(global.notas) - 1) ];
    var nota;
    switch (defNota)
    {
        // Música 1
        case "1": nota = mus1_1; break;
        case "2": nota = mus1_2; break;
        case "3": nota = mus1_3; break;
        case "4": nota = mus1_4; break;
        
        // Batida
        case "u": nota = mus_Bat_tu; break;
        case "s": nota = mus_Bat_ts; break;
        case "a": nota = mus_Bat_ta; break;
        
        case " ": nota = -1;         break;
        //case "": nota = ; break;
    }
    global.melodia[|i - 1] = nota;
}


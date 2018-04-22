// decodificarFundo(defFundo: String)

var defFundo = argument0;

var i;
// Cada nota
for (i = 1; i <= string_length(defFundo); i++)
{
    var defNota = string_char_at(defFundo, i); // Indexado de 1 a n!
    var nota;
    switch (defNota)
    {
        case "C": nota = mus1_C;  break;
        case "F": nota = mus1_F;  break;
        case "a": nota = mus1_Am; break;
        
        case " ": nota = -1;      break;
        //case "": nota = ; break;
    }
    global.fundo[|i - 1] = nota;
}


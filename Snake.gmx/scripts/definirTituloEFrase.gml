// definirTituloEFrase()

// TODO Padrão temporário
txtTitulo = "";
txtFrase = "";

switch (room)
{
    case FaseInicio:
        txtTitulo = "Start";
        txtFrase = "Let's go!";
        break;
    case FasePulos:
        txtTitulo = "To climb or not to climb";
        txtFrase = "Not so straightforward";
        break;
    case FasePendurada:
        txtTitulo = "Climb and fall";
        txtFrase = "Get there!";
        break;
    case FaseMergulho:
        txtTitulo = "Dive";
        txtFrase = "Head dive";
        break;
    case FaseCanos:
        txtTitulo = "Pipes";
        txtFrase = "Just flow";
        break;
    case FaseManobras:
        txtTitulo = "Maneuvers";
        txtFrase = "Can't get back!";
        break;
    case TelaLD41:
        txtTitulo = "LD41";
        txtFrase = "That's all, folks!";
        break;
/*
    case Fase:
        txtTitulo = "";
        txtFrase = "";
        break;
*/
}

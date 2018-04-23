/// definirVelocidade()

switch (room)
{
    case FaseInicio:
    case FasePulos:
        tempoPasso = 0.5 * room_speed;
        break;
    
    case FasePendurada:
    case FaseMergulho:
    case FaseContorno:
    case FaseImpulso:
    case FaseCanos:
        tempoPasso = 0.45 * room_speed;
        break;
    
    case FaseManobras:
        tempoPasso = 0.4 * room_speed;
        break;
    
    /*
    case Fase:
        tempoPasso = 0. * room_speed;
        break;
    */
}

tempoPasso = round(tempoPasso);


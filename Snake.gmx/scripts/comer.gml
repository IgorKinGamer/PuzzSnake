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

// Destrói a comida
with (comida)
    instance_destroy();

// Som TODO


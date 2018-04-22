// aplicarGravidade()

// Quanto deve mover
var movTotalY = velV + gravidade/2;
velV += gravidade;

var deslH = sprite_get_xoffset(sprite_index);
var deslV = sprite_get_yoffset(sprite_index);

// Para cada membro, verifica quanto pode descer
var movY = movTotalY;
var i;
for (i = 0; i < numMembros(); i++)
{
    var membro = corpo[|i];
    var xBase, yBase;
    xBase = membro.x + BLOCO/2 - deslH;
    yBase = membro.y + BLOCO   - deslV;
    var chao = collision_line(
            xBase, yBase, xBase, yBase + movY,
            obj_Chao, false, true
    );
    // Bateu no chão
    if (chao != noone)
    {
        velV = 0;    
    
        // Arredonda o y para BLOCO e descobre quantos blocos desce
        var yFinal = ceil(yBase/BLOCO)*BLOCO;
        // Avança de BLOCO em BLOCO até encostar (tem que encostar)
        while (instance_position(xBase, yFinal, obj_Chao) == noone)
            yFinal += BLOCO;
        // Atualiza o quanto vai mover
        movY = yFinal - yBase;
    }
}

// Colisão com comida e objetivo
for (i = 0; i < numMembros(); i++)
{
    var membro = corpo[|i];
    var xBase, yBase;
    xBase = membro.x + BLOCO/2 - deslH;
    yBase = membro.y + BLOCO   - deslV;
    yCima = membro.y - deslV;
    
    // Comida
    var comida;
    do
    {
        comida = collision_line(
            xBase, yBase, xBase, yBase + movY,
            obj_Comida, false, true
        );
        if (comida != noone)
            if (membro == id) // Cabeça
                comer(comida);
            else
                destruirComida(comida);
    }
    until (comida == noone);
    
    // Objetivo
    var objetivo = collision_line(
        xBase, yCima, xBase, yBase + movY - 1,
        obj_Objetivo, false, true
    );
    if (objetivo != noone)
        if (membro == id) // Cabeça
            passarFase();
        else
            perderFase();
}

var naTela = false;
// Move cada membro
for (i = 0; i < numMembros(); i++)
{
    var membro = corpo[|i];
    membro.y = round(membro.y + movY);
    
    // Verifica se ainda está na tela
    var xBase, yCima, yBaixo;
    //xBase = membro.x - deslH;
    yCima  = membro.y - deslV;
    yBaixo = membro.y - deslV + BLOCO - 1;
    // O x é "quadradinho" (TODO não considera deslH)
    if (membro.x >= 0 && membro.x < room_width
            && yBaixo >= 0 && yCima < room_height)
        naTela = true;
}

// Saiu da tela: morre
if (!naTela)
    morrer();

// criarLista([val, ...])

var lista = ds_list_create();

var i;
for (i = 0; i < argument_count; i++)
    ds_list_add(lista, argument[i]);

return lista;


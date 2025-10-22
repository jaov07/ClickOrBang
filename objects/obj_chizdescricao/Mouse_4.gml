// obj_chizdescricao - Mouse Left Pressed
var nome_layer = "popup_layer";
var layer_id = layer_get_id(nome_layer);

// checa se a layer existe
if (layer_id != -1) {
    // pega instâncias dentro da layer usando o ID
    var instancias = layer_get_all_instances(layer_id);

    // só prosseguir se realmente retornou uma ds_list
    if (ds_exists(instancias, ds_type_list)) {
        var tamanho = ds_list_size(instancias);
        for (var i = 0; i < tamanho; i++) {
            with (instancias[| i]) instance_destroy();
        }
        ds_list_destroy(instancias);
    }

    // destrói a layer usando o ID
    layer_destroy(layer_id);
}

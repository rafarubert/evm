 var tipo = "";
    var item_atual;
    $(document).ready(function(){
       $("#coluna-esquerda").sortable({
           connectWith: '.connect',
           stop: function(event, ui){
               tipo = "in";
           } 
       });
       $("#coluna-direita").sortable({
           connectWith: '.connect',
           stop: function(event, ui){
               tipo = "out";
           } 
       });
    });
    function dragVendedores(id, ID, revenda){
      item_atual = id; 
      if (tipo == "out") {
          $("#item_" + id).fadeOut('slow', function(){
              $("#item_" + id).remove();
          });
      }
      else {   
          var html = '<input type="hidden" name="campanha[campanha_vendedores_attributes]['+ID+'][premio_id]" id="campanha_vendedores_'+ID+'" value="'+ID+'"';
          $("#janela").append(html);
      }
    }

    function adicionar(){
        var valor = $("#valor-item").val();    
        $("#items").append("<li id=\"item_"+ item_atual +"\">" + valor + "</li>");
        $("#container-janela").remove();
    }
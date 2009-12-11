var tipo = "";
var id_item;
var id_objeto;
var nome_revenda;
$(document).ready(function(){
   $("#coluna-esquerda").sortable({
       connectWith: '.connect',
       stop: function(event, ui){
           tipo = "in";
       },
	   receive: function(event, ui) { $('#campanha_vendedores_'+id_objeto+'').fadeOut('slow', function(){
          		$('#campanha_vendedores_'+id_objeto+'').remove();
      		});
 		}
   });
   $("#coluna-direita").sortable({
       connectWith: '.connect',
       stop: function(event, ui){
           tipo = "out";
       },
	   receive: function(event, ui) { var html = '<input type="text" name="campanha[campanha_vendedores_attributes]['+id_objeto+'][premio_id]" id="campanha_vendedores_'+id_objeto+'" value="'+id_objeto+'"';
      $("#janela").append(html); } 
   });
});
function dragVendedores(id, ID, revenda){
  id_item = id; 
  id_objeto = ID; 
  nome_revenda = revenda; 

}

function adicionar(){
    var valor = $("#valor-item").val();    
    $("#items").append("<li id=\"item_"+ item_atual +"\">" + valor + "</li>");
    $("#container-janela").remove();
}
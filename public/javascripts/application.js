var tipo = "";
var id_item;
var id_objeto;
var nome_revenda;
$(document).ready(function(){
   $(".produtos-esquerda").sortable({
       connectWith: '.conexao',
       stop: function(event, ui){
                 tipo = "in";
             },
       	   receive: function(event, ui) { $('#campanha_produtos_'+id_objeto+'').fadeOut('slow', function(){
                		$('#campanha_produtos_'+id_objeto+'').remove();
						$("#item_"+id_objeto).html("");
            		});
       		}
   });
   $(".produtos-direita").sortable({
       connectWith: '.conexao',
	          stop: function(event, ui){
	              tipo = "out";
	          },
	   receive: function(event, ui) { var html = 		"<div id=\"container-janela\" style=\"background: #CCC; left:250px; padding: 50px; position:absolute; top:400px; \">";
              html += "<input type=\"text\" id=\"valor-item\" />"; 
              html += '<input onclick="javascript: adicionar();" type="button" id="valor-item" value="adicionar"/>';

              html += "</div>";
              $("#janela").append(html); } 
   });
});

function adicionar(){
    var valor = $("#valor-item").val();
    $("#item_"+id_objeto).html(" ("+valor+" pontos)");
    $("#container-janela").remove();
}

$(document).ready(function(){
   $(".revendas-esquerda").sortable({
       connectWith: '.conexao',
       stop: function(event, ui){
                 tipo = "in";
             },
       	   receive: function(event, ui) { $('#campanha_vendedores_'+id_objeto+'').fadeOut('slow', function(){
                		$('#campanha_vendedores_'+id_objeto+'').remove();
            		});
       		}
   });
   $(".revendas-direita").sortable({
       connectWith: '.conexao',
	          stop: function(event, ui){
	              tipo = "out";
	          },
	   receive: function(event, ui) { var html = '<input type="hidden" name="campanha[campanha_vendedores_attributes]['+id_objeto+'][premio_id]" id="campanha_vendedores_'+id_objeto+'" value="'+id_objeto+'"';
	         $("#janela").append(html); } 
   });
});



function dragVendedores(id, ID){
  id_item = id; 
  id_objeto = ID; 
  nome_revenda = revenda; 

}

function todasRevendas(){
	var html = "";
    if ($("#todas-revendas").attr("checked")){
	   	$.each($(".revendas-esquerda"), function(indice, elemento){

		    html = $(this).html();
		    $(this).html("");	
		});
		$(".revendas-direita").html(html);
    }else {
	   	$.each($(".revendas-direita"), function(indice, elemento){

		    html = $(this).html();
		    $(this).html("");	
		});
		$(".revendas-esquerda").html(html);
	}

	
}





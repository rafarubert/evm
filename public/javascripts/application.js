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
    function setarId(id){
      item_atual = id; 
      if (tipo == "out") {
          $("#item_" + id).fadeOut('slow', function(){
              $("#item_" + id).remove();
          });
      }
      else {   
          var html = "<div id=\"container-janela\">";
          html += "<input type=\"text\" id=\"valor-item\" />"; 
          html += '<input onclick="javascript: adicionar();" type="button" id="valor-item" value="\m/"/>';
          html += "</div>";
          $("#janela").append(html);
      }
    }

    function adicionar(){
        var valor = $("#valor-item").val();    
        $("#items").append("<li id=\"item_"+ item_atual +"\">" + valor + "</li>");
        $("#container-janela").remove();
    }
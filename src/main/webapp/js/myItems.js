
	function getMyItems(){
		$( "#mainTitle" ).html( "Mis Items!" );
		$.ajax({
	        type: "GET",
	        dataType: "json",
	        url: "truequeLibre/miPerfil/items",
	        success: function (data) {
	        	var items = "";
	        	data.forEach( function(el){
	        		items += generarVistaMyItem(el);
	        	});
	            $('#dynamicRow').html(items);
	            $('.img-thumbnail').tooltip();
	        }
	    });
	}
	
	function generarVistaMyItem(item){	
//		console.log(item);
		var vista = sprintf("<div class=\"col-md-4\" id=\"%s\">",item.id);
		vista += sprintf("<h4>%s</h4>",item.title);
		vista += sprintf("<img src=\"%s\" alt=\"%s\" class=\"img-thumbnail\" width=\"100\" height=\"100\" " + 
				" data-toggle=\"tooltip\" data-placement=\"right\" title=\"%s\" data-html=\"true\" >"
				,item.ml.thumbnail,item.description, item.description);
		vista += sprintf("<p><button class=\"btn btn-primary btn-sm\" data-toggle=\"modal\" " + 
		"data-target=\"#modalDeleteItem\" onclick=\"actualizarModalDeleteItem(%s,%s);\">Borrar Item</button></p>",item.id, "1");
		vista += "</div>";
		return vista;
	}
	
	function deleteItem(idDeItem){
		$("#modalDeleteItem").modal('hide');
		//Me crea bien el deleteRequest pero llega mal al servidor
		//Stringify funciona bien
		$.ajax({
	        type: "DELETE",
					contentType: 'application/json', 
	        url: "truequeLibre/miPerfil/items/"+idDeItem,
	        dataType:"json",
	    });
  	$("#descripcionResultadoOperacion").html('Operacion Exitosa!');
		getMyItems();
	}
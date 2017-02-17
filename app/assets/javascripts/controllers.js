var IndexController = (function() {
	function XhrGetRequest() {
		$("#btnXhrGet").click(function() {
			$.get("/xhr_get_request", {}, function(response) {
				BootstrapDialog.show({
					title: "Respuesta de Petición XHR GET",
					message: JSON.stringify(response, null, 4),
					type: BootstrapDialog.TYPE_INFO,
					buttons: [{
						label: "Cerrar",
						cssClass: "btn-info",
						action: function(dialog) {
							dialog.close();
						}
					}]
				});
			});
		});
	}
	
	function XhrPostRequest() {
		$("#btnXhrPost").click(function() {
			$.post("/xhr_post_request", {
				authenticity_token: AUTH_TOKEN,
				name: "Nombre",
				lastname: "Apellidos",
				number: 5674,
				bool: false
			}, function(response) {
				BootstrapDialog.show({
					title: "Respuesta de Petición XHR POST",
					message: JSON.stringify(response, null, 4),
					type: BootstrapDialog.TYPE_SUCCESS,
					buttons: [{
						label: "Cerrar",
						cssClass: "btn-success",
						action: function(dialog) {
							dialog.close();
						}
					}]
				});
			});
		});
	}
	
	function init() {
		XhrGetRequest();
		XhrPostRequest();
	}
	
	return {
		init: init
	};
})();
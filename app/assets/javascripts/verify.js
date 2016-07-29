$(document).ready(function(){
	var i = 0;
	$("#restrict").click(function(){
		i += 1;
		if (i === 1) {
			var content = '<div class="alert alert-danger" id="warning"><strong>Tienes que ser mayor de edad para continuar</strong></div>';
			$("#notice").append(content);
		}
		else {}
	});
});
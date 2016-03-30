$(document).ready(function(){
	
	$('#recoverType').change(function(){
		var choice = $(this).children('option:selected').val();
		if (choice == 'system'){
			$('#inputSQLFileContainer').hide();
		}else if(choice == 'custom'){
			$('#inputSQLFileContainer').show();
		}
	});
});
$(document).ready(function(){
	var items = $('li');
	$('.my_button').on('click', function(){
		$('#my_screen').append(items);
	});
});

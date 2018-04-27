function total_cost() {
	var total = 0;
	$('.ttlcst').each(function(i){
		var cost= $(this).html();
		if (!isNan(total)) total += Number(total)
	});
	total = total.toFixed(2);
	$('total').html(total)
}
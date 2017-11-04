# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$('#bill_customer_name').autocomplete
	  source: $('#bill_customer_name').data('autocomplete-source')
##########
	$('#bill_valid_up_to').datepicker (dateFormat: 'dd-mm-yy')

##########

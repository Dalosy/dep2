$ ->	
  	$('.new_number_but').on 'ajax:success', (e, data, status, xhr) ->
  		$(@).closest("tr").fadeOut()  		
  		$('.new_number').append data
$ ->
  	$('.row-remove-tel').on 'ajax:success', (e, data, status, xhr) ->  		
  		$(@).closest("tr").fadeOut()
$ ->
  	$('.new_number').on "ajax:success", ".new_tel", (e) ->  		
  		$(@).closest("tr").fadeOut()	

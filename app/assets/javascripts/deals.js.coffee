$ ->	
  	$('.new_deal_but').on 'ajax:success', (e, data, status, xhr) ->  		 		
  		$('.new_deals').append data
$ ->
  	$('.row-remove-deal').on 'ajax:success', (e, data, status, xhr) ->  		
  		$(@).closest("tr").fadeOut()
$ ->
  	$('.new_deals').on "ajax:success", ".new_deal", (e) ->  		
  		$(@).closest("tr").fadeOut()

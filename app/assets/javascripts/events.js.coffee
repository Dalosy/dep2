$ ->	
  	$('.new_event_type_but').on 'ajax:success', (e, data, status, xhr) ->
  		$('.history_action').html data
$ ->	
  	$('.history_action').on 'ajax:success', '.new_event_but_2', (e) ->
  		$('.new_event_but_2').remove()
$ ->	
  	$('.history_action').on 'ajax:success', '.new_event_but_3', (e) ->
  		$('.new_event_but_3').remove()
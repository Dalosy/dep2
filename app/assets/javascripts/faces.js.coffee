$ ->	
  	$('.new_face_but').on 'ajax:success', (e, data, status, xhr) ->  		 		
  		$('.new_faces').append data
$ ->
  	$('.row-remove-face').on 'ajax:success', (e, data, status, xhr) ->  		
  		$(@).closest("tr").fadeOut()
$ ->
  	$('.new_faces').on "ajax:success", ".new_face", (e) ->  		
  		$(@).closest("tr").fadeOut()

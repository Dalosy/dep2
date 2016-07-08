 $ ->
  $('.addtest').on 'ajax:success', (e, data, status, xhr) ->
  	# $('.addaction').append data
  	if data?.html_content
  		if data?.html_content?.replace
  			to_replace = data.html_content.replace
  			for k, v of to_replace
  				$(k).html v
  				console.log k
  				console.log v

  		if data?.html_content?.append
  			to_append = data.html_content.append
  			for k1, v1 of to_append
  				$(k1).append v1
					



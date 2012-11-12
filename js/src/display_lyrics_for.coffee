GL.displayLyricsFor = (artist, title) ->
  # prepare artist and title to be arguments for the service
  artist = artist.replace ' ', '_'
  title = title.replace ' ', '_'

  request = new XMLHttpRequest()
  request.open 'GET', "http://lyrics.wikia.com/#{artist}:#{title}"

  request.onreadystatechange = ->
    if request.readyState == 4 and request.status == 200
      lyricsDocument = document.implementation.createHTMLDocument 'lyrics'
      lyricsDocument.documentElement.innerHTML = request.responseText

      lyrics = lyricsDocument.getElementsByClassName('lyricbox')[0].innerHTML
        .replace(/\n/g, '') # removes newline characters...
        .replace(/<br>/g, '\n') # ...to convert breaks into newline characters...
        .replace(/<.+>/g, '') # ...to safely strip all other tags...
        .replace(/\n/g, '<br>') # ...and put breaks back where they belong

      lyrics = '(no lyrics found)' if lyrics.length == 0
    else
      lyrics = '(no lyrics found)'

    GL.elements.lyricsElement.innerHTML = lyrics

  request.send()

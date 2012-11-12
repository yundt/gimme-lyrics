GL.updateView = ->
  if GL.player.track
    artist = GL.player.track.artists[0].toString()
    title = GL.player.track.name

    GL.elements.titleElement.innerHTML = title
    GL.elements.artistElement.innerHTML = artist

    GL.displayLyricsFor artist, title

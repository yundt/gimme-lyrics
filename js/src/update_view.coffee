GL.updateView = ->
  if GL.player.track
    GL.elements.titleElement.innerHTML = GL.player.track.name
    GL.elements.artistElement.innerHTML = GL.player.track.artists[0].toString()

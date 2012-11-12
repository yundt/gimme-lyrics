window.onload = ->
  GL.sp = getSpotifyApi 1
  GL.models = GL.sp.require 'sp://import/scripts/api/models'
  GL.player = GL.models.player

  GL.elements = {}

  GL.elements.titleElement = document.getElementById 'title'
  GL.elements.artistElement = document.getElementById 'artist'

  if GL.player.track
    GL.elements.titleElement.innerHTML = GL.player.track.name
    GL.elements.artistElement.innerHTML = GL.player.track.artists[0].toString()

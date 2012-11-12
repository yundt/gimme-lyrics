GL.init = ->
  GL.sp = getSpotifyApi 1
  GL.models = GL.sp.require 'sp://import/scripts/api/models'
  GL.player = GL.models.player

  GL.elements = {}

  GL.elements.titleElement = document.getElementById 'title'
  GL.elements.artistElement = document.getElementById 'artist'
  GL.elements.lyricsElement = document.getElementById 'lyrics'

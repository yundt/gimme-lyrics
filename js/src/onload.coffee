window.onload = ->
  GL.init()

  GL.updateView()

  GL.player.observe GL.models.EVENT.CHANGE, (event) ->
    GL.updateView() if event.data.curtrack

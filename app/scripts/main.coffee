player = window.app.mainViewModel.playerVM

$(document).bind "keydown", "space", (event) ->
  player.togglePause()
  event.preventDefault()

$(document).bind "keydown", "alt+- alt+down", (event) ->
  volume = player.currentVolume()
  player.changeVolume(volume - 10)
  event.preventDefault()

# on mac OS, + is on = key
$(document).bind "keydown", "alt+= alt++ alt+up", (event) ->
  volume = player.currentVolume()
  player.changeVolume(volume + 10)
  event.preventDefault()

$(document).bind "keydown", "alt+left", (event) ->
  player.previous()
  event.preventDefault()

$(document).bind "keydown", "alt+right", (event) ->
  player.next()
  event.preventDefault()

$(document).bind "keydown", "alt+c", (event) ->
  RouteConfig.goToAction("myMusic")
  event.preventDefault()

$(document).bind "keydown", "alt+r", (event) ->
  RouteConfig.goToAction("radio")
  event.preventDefault()

$(document).bind "keydown", "alt+e", (event) ->
  RouteConfig.goToAction("explore")
  event.preventDefault()

$(document).bind "keydown", "alt+n", (event) ->
  RouteConfig.goToAction("nowPlaying")
  event.preventDefault()

$(document).bind "keydown", "/ shift+/", (event) ->
  app.mainViewModel.searchInputVM.focusOnSearchInput()
  $("#searchValue").focus()
  event.preventDefault()

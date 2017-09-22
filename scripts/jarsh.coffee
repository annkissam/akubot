module.exports = (robot) ->
  robot.hear /Jarsh/i, (msg) ->
    msg.send 'https://media.giphy.com/media/Vuw9m5wXviFIQ/giphy.gif'

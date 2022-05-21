module.exports = (robot) ->
  greetings = ["wena choro", "hola", "hola buenas", "qué tal", "buenas tardes"]
  robot.hear /^hola$/i, (res) ->
    res.send res.random greetings
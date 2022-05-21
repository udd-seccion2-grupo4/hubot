module.exports = (robot) ->
  robot.respond /enviar a (\w+) (.*)/i, (res) ->
    grupo = res.match[1]
    texto = res.match[2]
    robot.messageRoom grupo, texto
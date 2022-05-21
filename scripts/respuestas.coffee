module.exports = (robot) ->
  
  robot.hear /qué hora es\?/i, (res) ->
    nombre = res.match[1]
    today = new Date()
    dd = String(today.getDate()).padStart(2, '0')
    mm = String(today.getMonth() + 1).padStart(2, '0')
    yyyy = today.getFullYear()
    h = today.getHours()
    min = today.getMinutes()
    today = h + ':' + min + ' del ' + yyyy  + '-' + mm + '-' + dd
    res.send "Las " + today

  robot.hear /cuanto es (\d+) \+ (\d+)\?/i, (res) ->
    primero = parseInt(res.match[1])
    segundo = parseInt(res.match[2])
    res.send "Es " + (primero + segundo)

  robot.hear /cuanto es (\d+) \* (\d+)\?/i, (res) ->
    primero = parseInt(res.match[1])
    segundo = parseInt(res.match[2])
    res.send "Es " + (primero * segundo)

  robot.hear /^ping$/i, (res) ->
    res.send "pong"

  robot.hear /^pong$/i, (res) ->
    res.send "ping"
  
  repliesBienMal = ['Nosé.', 'Parece.', 'No creo.','Al parecer si.', 'No.', 'Hmm?', 'zi.', 'Mas o menos.', 'Hmmmm, no.']
  robot.respond /me.+\?$/i, (res) ->
    res.send res.random repliesBienMal

  robot.hear /valor uf/i, (res) ->
    robot.http("https://mindicador.cl/api/uf")
        .get() (err, _, body) ->
            if err
                res.reply "murió el servicio"
                return
            data = JSON.parse body
            res.send "$ " + data.serie[0].valor + " al día " + data.serie[0].fecha

  robot.hear /google (.*)/i, (res) ->
    query = res.match[1]
    res.send "https://letmegooglethat.com/?q=" + encodeURIComponent(query)

  robot.respond /le fue mal a nelson en la votación para contituyente\?/i, (res) ->
    nombre = res.match[1]
    res.send "si, pésimo, pero se lo contara a sus nietos, si es que aún sigue vivo"
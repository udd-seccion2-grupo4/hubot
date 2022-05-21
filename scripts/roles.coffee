module.exports = (robot) ->

  roles = {
    "nelson": "Vocero y Constituyente",
    "javier": "Jefe de Proyecto",
    "nicolas": "Desarrollador y Profe",
    "luis": "DevOps",
    "pablo": "Desarrollador"
  }

  robot.respond /qué rol tiene (.*)\?/i, (res) ->
    persona = res.match[1]
    if persona of roles
      res.send persona+ " tiene rol de "+roles[persona]
    else
      res.send "no es del equipo ese muchacho"

  team = {
    "vocero": "nelson",
    "sre": "javier",
    "dev": "nicolas",
    "devops": "luis",
    "qa": "pablo"
  }
  robot.respond /quién es el (.*) de la célula\?/i, (res) ->
    rol = res.match[1]
    if rol of team
      res.send team[rol]+" tiene el rol de "+rol
    else
      res.send "no hay nadie asignado para el rol de "+rol
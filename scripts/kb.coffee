module.exports = (robot) ->
  
  kb = {
    "devops": "es un modo de abordar la cultura, la automatización y el diseño de las plataformas para generar mayor valor empresarial y capacidad de respuesta, mediante la prestación ágil de servicios de alta calidad.",
    "chatops": "ChatOps a veces se conoce como colaboración impulsada por conversación o DevOps impulsada por conversación.",
    "ci": "Los principales conceptos que se le atribuyen son la integración, la distribución y la implementación continuas",
    "cd": "es un método para distribuir las aplicaciones a los clientes con frecuencia mediante el uso de la automatización en las etapas del desarrollo de aplicaciones.",
    "terraform": "Terraform es un software de infraestructura como código (infrastructure as code) desarrollado por HashiCorp. Permite a los usuarios definir y configurar la infraestructura de un centro de datos en un lenguaje de alto nivel, generando un plan de ejecución para desplegar la infraestructura en OpenStack, por ejemplo, u otros proveedores de servicio tales como AWS, IBM Cloud (antiguamente Bluemix), Google Cloud Platform, Linode, Microsoft Azure, Oracle Cloud Infrastructure o VMware vSphere. La infraestructura se define utilizando la sintaxis de configuración de HashiCorp denominada HashiCorp Configuration Language (HCL) o, en su defecto, el formato JSON.",
    "ansible": "Ansible es un motor open source que automatiza los procesos para preparar la infraestructura, gestionar la configuración, implementar las aplicaciones y organizar los sistemas, entre otros procedimientos de TI.",
    "gitlab": "Gitlab Inc. es una compañía de núcleo abierto y es la principal proveedora del software GitLab, un servicio web de forja, control de versiones y DevOps basado en Git. Además de gestor de repositorios, el servicio ofrece también alojamiento de wikis y un sistema de seguimiento de errores, todo ello publicado bajo una licencia de código abierto, principalmente.",
    "slack": "Slack es una herramienta de comunicación en equipo y surgió con el nombre de Dharma creada por Stewart Butterfield, Eric Costello, Cal Henderson, y Serguei Mourachov. Slack surge como una herramienta interna utilizada por la compañía Tiny Speck en el desarrollo de Glitch, un juego en línea actualmente obsoleto",
    "bot": "Un bot es un programa informático que efectúa automáticamente tareas reiterativas mediante Internet a través de una cadena de comandos o funciones autónomas previas para asignar un rol establecido; y que posee capacidad de interacción, cambiando de estado para responder a un estímulo",
    "shiftleft": "ShiftLeft es una práctica orientada a detectar y prevenir defectos al principio del proceso de entrega del software. La idea es mejorar la calidad moviendo las tareas a la izquierda tan pronto como sea posible en el ciclo de vida. El Shift Left testing, significa realizar una prueba antes en el proceso de desarrollo de software.",
  }

  robot.respond /qué es (.*)\?/i, (res) ->
    concepto = res.match[1]
    if concepto of kb
      res.send kb[concepto]
    else
      res.send "no sé"
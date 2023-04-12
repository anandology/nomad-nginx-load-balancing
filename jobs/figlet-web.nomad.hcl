job "figlet-web" {
  type = "service"

  group "figlet-web" {
    count = 2

    network {
      port "web" {
        to = 8080
      }
    }

    service {
      name     = "figlet-web"
      port     = "web"

      tags = ["capstone-service"]

    }

    task "figlet-web-task" {

      env {
        PORT    = "${NOMAD_PORT_http}"
        NODE_IP = "${NOMAD_IP_http}"
      }      

      driver = "docker"

      config {
        image = "anandology/figlet-web"
        ports = ["web"]
      }
    }
  }
}

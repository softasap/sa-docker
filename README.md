sa-docker
=========

[![Build Status](https://travis-ci.org/softasap/sa-docker.svg?branch=master)](https://travis-ci.org/softasap/sa-docker)

Installs basic docker packages (via Omnibus installer) & optional docker-compose

Example of usage (all parameters are optional)

Simple

  roles:
    - {
        role: "sa-docker"
      }


Advanced (all params optional):


  roles:
    - {
        role: "sa-docker",
        option_install_docker_compose: true,
        docker_compose_venv_directory: /home/slavko/venv/dockerenv
      }

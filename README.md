sa-docker
=========

[![Build Status](https://travis-ci.org/softasap/sa-docker.svg?branch=master)](https://travis-ci.org/softasap/sa-docker)
[![Build Status](https://github.com/softasap/sa-docker/workflows/CI/badge.svg?event=push)](https://github.com/softasap/sa-docker/actions?query=workflow%3ACI)

Installs basic docker packages (via Omnibus installer) & optional docker-compose

Example of usage (all parameters are optional)

Simple

```YAML
  roles:
    - {
        role: "sa-docker"
      }
```


Advanced (all params optional):


```YAML
  roles:
    - {
        role: "sa-docker",
        option_install_docker_compose: true,
        docker_compose_venv_directory: /home/slavko/venv/dockerenv
      }
```


Usage with ansible galaxy workflow
----------------------------------

If you installed the sa-docker  role using the command


`
   ansible-galaxy install softasap.sa-docker
`

the role will be available in the folder library/sa-docker

Please adjust the path accordingly.

```YAML

     - {
         role: "softasap.sa-docker"
       }

```



Copyright and license
---------------------

Code licensed under the [BSD 3 clause] (https://opensource.org/licenses/BSD-3-Clause) or the [MIT License] (http://opensource.org/licenses/MIT).

Subscribe for roles updates at [FB] (https://www.facebook.com/SoftAsap/)

Join Gitter channel at [Gitter] (https://gitter.im/softasap/)

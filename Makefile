init:
	pipenv install --python 3

update-from-requirements:
	pipenv install -r ./molecule/requirements-dev.txt

molecule-docker-centos7:
	MOLECULE_DISTRO=centos7 MOLECULE_TEST_ROLE=$(notdir $(CURDIR)) molecule converge -s docker

molecule-docker-fedora33:
	MOLECULE_DISTRO=fedora33 MOLECULE_TEST_ROLE=$(notdir $(CURDIR)) molecule converge -s docker

molecule-docker-xenial:
	MOLECULE_DISTRO=ubuntu1604 MOLECULE_TEST_ROLE=$(notdir $(CURDIR)) molecule converge -s docker

molecule-docker-xenial-interactive:
	docker exec -it geerlingguy/docker-ubuntu1604-ansible:latest /bin/bash

molecule-docker-beaver:
	MOLECULE_DISTRO=ubuntu1804 MOLECULE_TEST_ROLE=$(notdir $(CURDIR)) molecule converge -s docker

molecule-docker-focal:
	MOLECULE_DISTRO=ubuntu2004 MOLECULE_TEST_ROLE=$(notdir $(CURDIR)) molecule converge -s docker

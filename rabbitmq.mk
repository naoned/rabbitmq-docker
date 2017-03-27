makefile_path:=$(abspath $(lastword $(MAKEFILE_LIST)))
makefile_dir:=$(patsubst %/,%,$(dir $(makefile_path)))

up-rabbitmq:
	COMPOSE_PROJECT_NAME="naoned" docker-compose -f $(makefile_dir)/docker-compose.yml up -d

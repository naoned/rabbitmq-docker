mkfile_path:=$(abspath $(lastword $(MAKEFILE_LIST)))
current_dir:=$(patsubst %/,%,$(dir $(mkfile_path)))

up-rabbitmq:
	COMPOSE_PROJECT_NAME="naoned" docker-compose -f $(current_dir)/docker-compose.yml up -d

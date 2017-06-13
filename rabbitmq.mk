COMPOSER_VENDOR_DIR_PATH?=vendor/naoned/rabbitmq-docker

up-rabbitmq:
	$(info Ensure rabbitmq container is running)
	@if [ -z "$$(docker ps -a --filter name=rabbitmq --format {{.Names}} | grep -E '^rabbitmq$$')" ]; then \
	    echo 'Creating rabbitmq container'; \
	    COMPOSE_PROJECT_NAME="naoned" docker-compose -f $(COMPOSER_VENDOR_DIR_PATH)/docker-compose.yml up -d; \
	fi

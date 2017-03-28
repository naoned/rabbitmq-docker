COMPOSER_VENDOR_DIR_PATH?=vendor/naoned/rabbitmq-docker

up-rabbitmq:
	$(info Ensure rabbitmq container is running)
	@COMPOSE_PROJECT_NAME="naoned" docker-compose -f $(COMPOSER_VENDOR_DIR_PATH)/docker-compose.yml up -d

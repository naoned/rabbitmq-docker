FROM rabbitmq:3.6-management

RUN rabbitmq-plugins enable rabbitmq_shovel \
                            rabbitmq_shovel_management

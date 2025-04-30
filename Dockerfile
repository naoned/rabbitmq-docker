FROM rabbitmq:4-management

RUN apt-get update && \
         apt-get install -y curl && \
         apt-get -y autoremove && \
         rm -rf /var/lib/apt/lists/*

# healthcheck.sh from onyx/docker
COPY healthcheck.sh /is-ready.sh
COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

HEALTHCHECK --interval=10s --timeout=10s --retries=10 \
  CMD /is-ready.sh

RUN rabbitmq-plugins enable rabbitmq_shovel \
                            rabbitmq_shovel_management

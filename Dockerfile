FROM jarzamendia/alpine-3.10:latest

RUN wget https://github.com/bcicen/ctop/releases/download/v0.7.2/ctop-0.7.2-linux-amd64 -O /usr/local/bin/ctop; \
    chmod +x /usr/local/bin/ctop;

ENTRYPOINT [ "ctop" ]

ARG BUILD_DATE

LABEL org.label-schema.version="1"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="Ctop"
LABEL org.label-schema.vendor="Ctop"
LABEL org.label-schema.description="Ctop, top-like interface to container metrics"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.url="https://github.com/bcicen/ctop"
LABEL org.label-schema.vcs-url="https://github.com/jarzamendia/ctop"
LABEL org.label-schema.docker.cmd="docker run -ti --rm -v /var/run/docker.sock:/var/run/docker.sock jarzamendia/ctop:latest"
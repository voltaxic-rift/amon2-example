FROM perl:5.28.1-threaded
ENV LANG C.UTF-8

RUN cpanm Carton

ARG uid=1000
ARG gid=1000
RUN useradd app -ms /bin/bash -u $uid && \
    groupmod -g $gid app
USER app

COPY --chown=app:app .replyrc /home/app/

WORKDIR /app
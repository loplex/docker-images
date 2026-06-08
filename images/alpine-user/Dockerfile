FROM alpine

ARG USER=user
ARG UID=1000

RUN [ "apk", "--no-cache", "add", "sudo" ]

RUN adduser -D $USER -u $UID \
        && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
        && chmod 440 /etc/sudoers.d/$USER

USER $USER
WORKDIR /home/$USER

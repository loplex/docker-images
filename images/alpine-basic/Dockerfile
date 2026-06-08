FROM lopin/alpine-user

RUN sudo apk --no-cache add \
      shadow bash bash-completion command-not-found \
      mc less vim plocate tmux xcalc

RUN [ "chsh", "-s", "/bin/bash" ]

CMD [ "/bin/bash" ]

ADD ".bashrc" ./

FROM archlinux

ENV APP codeblocks
# gimp

ENV DEP gcc

ENV DISPLAY :0

WORKDIR /app

# update
RUN	pacman -Syy

# install
RUN pacman -S --noconfirm $APP $DEP

CMD "${APP}"
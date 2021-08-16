FROM ubuntu

RUN apt update -y && apt upgrade -y
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:git-core/ppa && apt -y update && apt -y upgrade && apt install -y git
RUN apt install -y x11-apps
# 適当なGUI
RUN apt install -y emacs

CMD ["xeyes", "&"]

WORKDIR /workspace
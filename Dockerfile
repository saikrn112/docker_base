## BASE
FROM ubuntu:20.04
WORKDIR /root
RUN apt update -y && \
    apt install -y vim wget git && \
    apt-get install -y zsh && rm -rf /var/lib/apt/lists/*
RUN wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
RUN wget https://gist.githubusercontent.com/saikrn112/b55bf8a8bad6f6538a40561bdafe45bc/raw/.vimrc
RUN wget -O - https://gist.githubusercontent.com/saikrn112/1e353283a091824bb0074c7aafe203fe/raw/zimrc-components >> .zimrc
RUN /usr/bin/zsh /root/.zim/zimfw.zsh install
CMD ["zsh"]

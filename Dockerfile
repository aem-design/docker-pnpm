FROM    node:latest

LABEL   os="debian" \
        container.description="node and pnpm" \
        version="1.0.0" \
        imagename="pnpm" \
        maintainer="devops@aem.design" \
        test.command="pnpm -v" \
        test.command.verify="7.30.0"

ENV HOME="/build"
RUN mkdir -p $HOME

WORKDIR $HOME

RUN npm -g i pnpm


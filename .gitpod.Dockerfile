FROM gitpod/workspace-full

RUN sudo apt-get update \
    && bundle install webrick \
    && gem install jekyll
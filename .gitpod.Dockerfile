FROM gitpod/workspace-full

RUN sudo apt-get update \
    && sudo apt install bundler gem -y \
    && gem install jekyll \
    && bundle install
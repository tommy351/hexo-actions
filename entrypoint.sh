#!/bin/sh -l

set -e

# Setup git
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${GITHUB_ACTOR}@users.noreply.github.com"

# Setup deploy key
if [ -z "$GIT_DEPLOY_KEY" ]; then
  mkdir /root/.ssh
  ssh-keyscan -t rsa github.com > /root/.ssh/known_hosts
  echo "${GIT_DEPLOY_KEY}" > /root/.ssh/id_rsa
  chmod 400 /root/.ssh/id_rsa
fi

# Install hexo-cli
npm install hexo-cli -g

# Run hexo
sh -c "hexo $*"

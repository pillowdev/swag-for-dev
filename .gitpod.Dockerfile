FROM gitpod/workspace-full

# Setup NVM
COPY .nvmrc $HOME
RUN bash -c "source $HOME/.nvm/nvm.sh && nvm install && nvm use"

# Install gulp
COPY package-lock.json /tmp
RUN bash -c "npm install -g gulp@$(node -p -e "require('/tmp/package-lock.json').dependencies.gulp")"

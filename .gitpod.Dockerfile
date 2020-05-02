FROM gitpod/workspace-full

# Setup NVM
COPY .nvmrc $HOME
RUN bash -c "source $HOME/.nvm/nvm.sh && nvm install && nvm use"

# Install project dependencies
COPY package.json package-lock.json $HOME/
RUN npm install

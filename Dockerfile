FROM --platform=linux/amd64 sickcodes/docker-osx

RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

RUN (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/arch/.profile
RUN  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

RUN brew install gcc -y
RUN brew update && brew install ruby

RUN python --version
RUN ruby --version


# pyenv
Manage multiple python version

OS : ubuntu 

## Installation 
 1. install with curl and bash
  ```bash
  curl https://pyenv.run | bash
  ```
 2. setup path i am using alias in .bashrc
 ```
 alias py='$HOME/.pyenv/bin/pyenv'
 ```
 3. now install python version(3.6.9)
 ```
 py install -v 3.6.9
 ```
  check installed versions
  ```
  py versions
  ```
  4. Create virtualenv
  ```
  pyenv virtualenv 3.6.9 venv
  ```

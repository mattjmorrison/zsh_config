export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/VirtualDevEnvs

[[ -a /usr/local/share/python/virtualenvwrapper.sh ]] && source /usr/local/share/python/virtualenvwrapper.sh
[[ -a /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh

workon_virtualenv() {
  if [[ -d .git ]]; then
     VENV_CUR_DIR="${PWD##*/}"
     if [[ -a ~/.virtualenvs/$VENV_CUR_DIR ]]; then
       deactivate > /dev/null 2>&1
       source ~/.virtualenvs/$VENV_CUR_DIR/bin/activate
     fi
  fi
}

cd() {
  builtin cd "$@"
  workon_virtualenv
}

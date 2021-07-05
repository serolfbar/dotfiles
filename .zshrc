export ZSH="/home/alexander/.oh-my-zsh"
export FZF_DEFAULT_COMMAND='rg --files --follow '
export DENO_INSTALL="/home/alexander/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$PATH:/home/alexander/.dotnet/tools"


ZSH_THEME="clean"

plugins=(git)

source $ZSH/oh-my-zsh.sh

function runjava () {
  find ./src ./ -name "*.java" > sources_list.txt
  javac -cp src/ @sources_list.txt -d out -Xlint:deprecation
  # javac classpath "${CLASSPATH}" @sources_list.txt -d out -Xlint:deprecation
  cd out
  java com.company.Main $1 $2 ../$3 ../$4
  cd ..

  # Temporary, should be able to run the program by itself
  #java ./out/com/company/Main
  rm sources_list.txt
}

function buildjava() {
  find ./src -name "*.java" > sources_list.txt
  # javac -classpath "${CLASSPATH}" @sources_list.txt -d out -Xlint:deprecation -Xlint:unchecked
  javac -cp src/ @sources_list.txt -d out -Xlint:deprecation

  rm sources_list.txt
}

function deving() {
  projectname=$1
  local allprojects='/home/alexander/Dev/projects/'
  local sessionname='project'

  # will move to the projects directory and if a project name has been provided
  # into that project directory
  if [ ! -z "$projectname" ]; then

    local projectdirectory="${allprojects}${projectname}/"
    echo $projectdirectory

    if [[ -d $projectdirectory ]]; then
      cd $projectdirectory
      sessionname=$projectname
    else
      cd $allprojects
      echo 'The project does not exists.'
      ls
    fi

  else
    cd $allprojects
    ls
  fi


  # create new session with project name and with an editor window
  tmux new -s "${sessionname}" -n editor
  # tmux split-window -p 90
}

alias dev="cd ~/Dev"
alias projects="cd ~/Dev/projects/"
alias i3config="vim ~/.config/i3/config"
alias configs="cd ~/.config/ && vim"
alias schoolprojects="cd ~/Dev/projects/schoolprojects"
alias sources="cd ~/Dev/sources"
alias kb="cd ~/KnowledgeBase"
# Export directory to path
alias exdir="export PATH=\$PATH:\$(dirname \$(go list -f '{{.Target}}' .))"
alias n="nnn -e"
alias g++="g++ -std=c++11 -Werror -Wall -Weffc++ -Wextra -Wsign-conversion -o "


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
PATH=~/.vim/bundle/vim-live-latex-preview/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/alexander/.sdkman"
[[ -s "/home/alexander/.sdkman/bin/sdkman-init.sh" ]] && source "/home/alexander/.sdkman/bin/sdkman-init.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/alexander/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/alexander/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/alexander/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/alexander/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias mon2cam="deno run --unstable -A -r -q https://raw.githubusercontent.com/ShayBox/Mon2Cam/master/src/mod.ts"

# tab multiplexer configuration: https://github.com/austinjones/tab-rs/
source "/home/alexander/.local/share/tab/completion/zsh-history.zsh"
# end tab configuration


PATH="/home/alexander/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/alexander/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/alexander/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/alexander/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/alexander/perl5"; export PERL_MM_OPT;

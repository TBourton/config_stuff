# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$PATH
 
 # Path to your oh-my-zsh installation.
 export ZSH="/home/tb/.oh-my-zsh"
 
 # Set name of the theme to load --- if set to "random", it will
 # load a random theme each time oh-my-zsh is loaded, in which case,
 # to know which specific one was loaded, run: echo $RANDOM_THEME
 # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
 ZSH_THEME="robbyrussell"
 
 # Set list of themes to pick from when loading at random
 # Setting this variable when ZSH_THEME=random will cause zsh to load
 # a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
 # If set to an empty array, this variable will have no effect.
 # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
 
 # Uncomment the following line to use case-sensitive completion.
 # CASE_SENSITIVE="true"
 
 # Uncomment the following line to use hyphen-insensitive completion.
 # Case-sensitive completion must be off. _ and - will be interchangeable.
 # HYPHEN_INSENSITIVE="true"
 
 # Uncomment the following line to disable bi-weekly auto-update checks.
 # DISABLE_AUTO_UPDATE="true"
 
 # Uncomment the following line to automatically update without prompting.
 # DISABLE_UPDATE_PROMPT="true"
 
 # Uncomment the following line to change how often to auto-update (in days).
 # export UPDATE_ZSH_DAYS=13
 
 # Uncomment the following line if pasting URLs and other text is messed up.
 # DISABLE_MAGIC_FUNCTIONS=true
 
 # Uncomment the following line to disable colors in ls.
 # DISABLE_LS_COLORS="true"
 
 # Uncomment the following line to disable auto-setting terminal title.
 # DISABLE_AUTO_TITLE="true"
 
 # Uncomment the following line to enable command auto-correction.
 # ENABLE_CORRECTION="true"
 
 # Uncomment the following line to display red dots whilst waiting for completion.
 # COMPLETION_WAITING_DOTS="true"

 # Uncomment the following line if you want to disable marking untracked files
 # under VCS as dirty. This makes repository status check for large repositories
 # much, much faster.
 # DISABLE_UNTRACKED_FILES_DIRTY="true"
 
 # Uncomment the following line if you want to change the command execution time
 # stamp shown in the history command output.
 # You can set one of the optional three formats:
 # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 # or set a custom format using the strftime function format specifications,
 # see 'man strftime' for details.
 # HIST_STAMPS="mm/dd/yyyy"
 
 # Would you like to use another custom folder than $ZSH/custom?
 # ZSH_CUSTOM=/path/to/new-custom-folder
 
 # Which plugins would you like to load?
 # Standard plugins can be found in ~/.oh-my-zsh/plugins/*
 # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
 # Example format: plugins=(rails git textmate ruby lighthouse)
 # Add wisely, as too many plugins slow down shell startup.
 plugins=(
   git
   python
   pip
   docker
   virtualenvwrapper
   pylint
   kubectl
   kube-ps1
   docker
   docker-compose
   minikube
   pylint
   thefuck
   ubuntu
   zsh-navigation-tools
   zsh-interactive-cd
  )
 
 
 source $ZSH/oh-my-zsh.sh
 
 # User configuration
 export PATH=/home/tb/.local/bin:$PATH
 
 #export MANPATH="/usr/local/man:$MANPATH"

 # You may need to manually set your language environment
 # export LANG=en_US.UTF-8
 
 # Preferred editor for local and remote sessions
 # if [[ -n $SSH_CONNECTION ]]; then
 #   export EDITOR='vim'
 # else
 #   export EDITOR='mvim'
 # fi
 
 # Compilation flags
 # export ARCHFLAGS="-arch x86_64"
 
 # Set personal aliases, overriding those provided by oh-my-zsh libs,
 # plugins, and themes. Aliases can be placed here, though oh-my-zsh
 # users are encouraged to define aliases within the ZSH_CUSTOM folder.
 # For a full list of active aliases, run `alias`.
 #
 # Example aliases
 # alias zshconfig="mate ~/.zshrc"
 # alias ohmyzsh="mate ~/.oh-my-zsh"
 #
 alias mothra='ssh -A tb@mothra'
 alias python='python3'
 alias pip='pip3'
 alias nectvpn='sudo openvpn ~/.config/nectvpn/config.ovpn'
 alias nectvpn2='sudo cp ~/nect_resolv.conf /etc/resolv.conf'
 alias mount_mothra='sshfs -o follow_symlinks tb@192.168.5.76:/ ~/sshfs_path/mothra'
 alias kubelogin_mothra='kubelogin && cp ~/.kube/config ~/sshfs_path/mothra/home/tb/.kube/config'
 alias del='trash-put'
 alias pip-upgrade-all='pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'
 alias pip-install-linters='pip install pylint flake8 pydocstyle pycodestyle autopep8 pytest pytest-sugar isort yamllint jsonlint pyflakes bandit'
 alias vv='vim'
 alias nectmlrc='nectml-requirements-consistency --without-rktchat --set-return-code service client core result'
 
 export EDITOR='vim'
 
 # kube-ps1
 # source ~/kube-ps1-master/kube-ps1.sh
 PROMPT='$(kube_ps1)'$PROMPT
 
 # virtualenvwrapper
 export PATH=$HOME/.local/bin:$PATH
 export WORKON_HOME=$HOME/.virtualenvs
 export PROJECT_HOME=$HOME/Devel
 export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
 export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
 export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
 source $HOME/.local/bin/virtualenvwrapper.sh
 
 # Add timestamp to right
 RPROMPT="[%D{%f/%m/%y} | %D{%L:%M:%S}]"$RPROMPT

 eval $(thefuck --alias)

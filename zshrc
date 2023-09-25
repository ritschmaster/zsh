###################################################################
# Setup ZSH syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

###################################################################
# Setup ZSH autocomplete
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

###################################################################
# Setup docker
source $HOME/.docker/init-zsh.sh || true # Added by Docker Desktop

###################################################################
# Using vi mode
bindkey -v
bindkey '^k' reverse-menu-complete
bindkey '^j' menu-complete
bindkey '^p' up-history
bindkey '^n' down-history
bindkey '^l' menu-select

###################################################################
# Set theme
autoload -Uz promptInit
promptInit
prompt oliver

###################################################################
# Setup perl
PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

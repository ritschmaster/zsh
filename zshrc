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

###################################################################
# Setup atuin
eval "$(atuin init zsh)"

###################################################################
# History setup
#HISTFILE=~/.zsh_history
#HISTSIZE=100000
#SAVEHIST=100000
#
#setopt EXTENDED_HISTORY
#setopt SHARE_HISTORY
#setopt INC_APPEND_HISTORY
#
#autoload -Uz history-incremental-search-backward
#bindkey "^R" history-incremental-search-backward
#
#
#bindkey '^[[A' history-substring-search-up
#

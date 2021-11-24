########################################### 
######### DAN BASHRC CONFIGS ##############
###########################################

# Setando JAVA_HOME via asdf
. ~/.asdf/plugins/java/set-java-home.bash

# Setando PATH pra pegar scripts pessoais 
export PATH="$HOME/.local/bin:$PATH"

# Setando variáveis do ASDF (tem que ficar no final) 
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

. $HOME/.local/functions/*

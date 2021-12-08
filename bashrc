########################################### 
######### DAN BASHRC CONFIGS ##############
###########################################

# Setando JAVA_HOME via asdf
. ~/.asdf/plugins/java/set-java-home.bash

# Setando PATH pra pegar scripts pessoais 
export PATH="$PATH:$HOME/.local/bin"

# Setando variáveis do ASDF (tem que ficar no final) 
. /opt/asdf-vm/asdf.sh

# Importando funções que eu uso no terminal
. $HOME/.local/functions/*

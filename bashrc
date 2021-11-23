# Meu .bashrc 


# CJD pro Johnny Decimal 
cjd () {
	pushd ~/Documentos/*/*/${1}* # ~/Dropbox is my root folder, change to suit yours.
}

export cjd

# Setando JAVA_HOME via asdf
. ~/.asdf/plugins/java/set-java-home.bash

# Setando PATH pra pegar scripts pessoais 
export PATH="$HOME/.local/bin:$PATH"

# Setando variáveis do ASDF (tem que ficar no final) 
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
. $HOME/.local/functions/*

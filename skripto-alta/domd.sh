# S means source

# exec your command from whatever place
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $HOME # cd ~/

if [[ -d Documents || -L Documents ]]; then
    rm -r Documents
fi

ln -s $S Documents
ln -s $S dokumento

# S means source
# P means path

# exec your command from whatever place
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S
cd ../

P=$(pwd)

cd $HOME # cd ~/

if [[ ! -d Documents ]]; then
    mkdir Documents
fi

if [[ ! -d dokumento ]]; then
    mkdir dokumento
fi

if [[ -L Documents/md ]]; then
    rm Documents/md
fi 

if [[ -L dokumento/md ]]; then
    rm dokumento/md
fi 

# ln -s $S Documents
ln -s $P/dokumento Documents/md
ln -s $P/dokumento dokumento/md

DOTFILESDIR=$HOME"/.dotfiles"

NOCOLOR=`tput sgr0`
GREEN=`tput setaf 2`
LGREEN=`tput bold; tput setaf 2`
YELLOW=`tput bold; tput setaf 3`
BLUE=`tput bold; tput setaf 4`
MAGENTA=`tput bold; tput setaf 5`

echo ""
echo "${GREEN}Hey!${NOCOLOR}"

echo ""
echo "${YELLOW}Selected folder: "
cd ~
pwd
echo "${NOCOLOR}"

echo "${MAGENTA}Downloading dotfiles...${NOCOLOR}"
echo ""
echo "- ${GREEN}Cloning felipemrodrigues/dotfiles.git...${NOCOLOR}"
if [ ! -d "$DOTFILESDIR" ]; then
    git clone git@github.com:felipemrodrigues/.dotfiles.git "$DOTFILESDIR"
else
    cd "$DOTFILESDIR" && git pull && cd ~
fi

echo "Dotfiles downloaded"
echo ""
echo "- ${GREEN}Making links...${NOCOLOR}"
rm -f ~/.gitconfig ~/.bash_profile ~/.alias ~/.bash_git ~/.bash_prompt
ln -s .dotfiles/.gitconfig ~/.gitconfig
ln -s .dotfiles/.bash_profile ~/.bash_profile
ln -s .dotfiles/.bash_prompt ~/.bash_prompt
ln -s .dotfiles/.bash_git ~/.bash_git
ln -s .dotfiles/.alias ~/.alias
echo "Links done"
echo ""

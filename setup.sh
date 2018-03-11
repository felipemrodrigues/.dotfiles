DOTFILESDIR=$HOME"/.dotfiles"
SUBLIMETEXTDIR=“~/sublime-settings”

NOCOLOR=`tput sgr0`
GREEN=`tput setaf 2`
LGREEN=`tput bold; tput setaf 2`
YELLOW=`tput bold; tput setaf 3`
BLUE=`tput bold; tput setaf 4`
MAGENTA=`tput bold; tput setaf 5`

echo "${MAGENTA}homebrew${NOCOLOR}"
echo ""
if [[ ! "$(type -P brew)" ]]; then
    echo "- ${GREEN}Installing...${NOCOLOR}"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "- ${BLUE}Already installed!${NOCOLOR}"
fi

echo "${MAGENTA}oh my zsh${NOCOLOR}"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if [[ "$(type -P brew)" ]]; then
    echo ""
    echo "- ${GREEN}Updating...${NOCOLOR}"
    brew update
    echo ""
    echo "- ${GREEN}Analyzing...${NOCOLOR}"
    brew doctor
    echo ""
    echo "- ${GREEN}Installing Formulas...${NOCOLOR}"
    brew install nvm
fi
echo ""

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
ln -s .dotfiles/.zshrc ~/.zshrc
echo "Links done"
echo ""


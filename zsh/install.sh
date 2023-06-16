# install ohmyzsh
echo "Installing ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ALIASES="
alias ssh=\"TERM=xterm-256color ssh\"
alias lt=\"tree -L 1\"
alias cl=clear
"

echo "Adding custom aliases to .zshrc..."
echo -e "$ALIASES" >>"$HOME/.zshrc"

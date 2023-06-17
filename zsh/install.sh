# install ohmyzsh
echo "Installing ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

EXTRA="alias ssh=\"TERM=xterm-256color ssh\"
alias lt=\"tree -L 1\"
alias cl=clear

# personal paths
export PATH=$PATH:$HOME/.dotfiles/bin
export PATH=$PATH:$HOME/.local/bin

alias v=\"nvim\"
alias vim=\"nvim\"
alias gf=\"git fetch\"
alias gp=\"git pull\"
alias gcc=\"gcc-12\"
alias cc=\"gcc-12\"
alias g++=\"g++-12\"
alias c++=\"c++-12\"
alias lt=\"tree -L 1\"
alias cl=\"clear\" 
"

echo "Adding custom configs to .zshrc..."
echo -e "$EXTRA" >>"$HOME/.zshrc"

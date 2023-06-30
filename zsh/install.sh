# install ohmyzsh
repo_dir=$(cd .. && pwd)
echo "repo directory: $repo_dir"

cd $HOME || exit

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Installing Oh My Zsh..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "Oh My Zsh is already installed."
fi

cd $HOME || exit

EXTRA="alias ssh=\"TERM=xterm-256color ssh\"
alias lt=\"tree -L 1\"
alias cl=clear

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

cd "$repo_dir" || exit

echo "Adding custom configs to .zshrc..."
echo -e "$EXTRA" >>$HOME/.zshrc
echo export EDITOR=nvim >>$HOME/.zshrc
echo export TERM=xterm-256color >>$HOME/.zshrc
echo "Adding $repo_dir/bin as path"
echo "export PATH=\$PATH:$repo_dir/bin" >>$HOME/.zshrc
echo "Done."

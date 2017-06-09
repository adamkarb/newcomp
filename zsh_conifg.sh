git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh

ZRC="/Users/$(whoami)/.zshrc"
rm -f $ZRC
curl "https://raw.githubusercontent.com/adamkarb/.zsh/master/alias.sh" > $ZRC

PREZRC="/Users/$(whoami)/.zpreztorc"
rm -f $PREZRC
curl "https://raw.githubusercontent.com/adamkarb/.zsh/master/.zpreztorc" > $PREZRC


#!/bin/sh

for FILE in .vimrc .bash_profile .git-prompt.sh .git-completion.bash .gitconfig .inputrc .functions
do
  ln -sfhv ~/dotfiles/$FILE ~
done

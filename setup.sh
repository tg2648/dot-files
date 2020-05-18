chmod 700 dot-files/.*

mv ~/dot-files/.bashrc ~/.my_bashrc
echo "source ~/.my_bashrc" >> ~/.bashrc

if [ -f ~/.vimrc ]; then
    echo ".vimrc exist, creating a backup .vimrc_backup"
    mv ~/.vimrc ~/.vimrc_backup
fi

mv ~/dot-files/.vimrc ~/.vimrc

echo "Finished dot file setup"

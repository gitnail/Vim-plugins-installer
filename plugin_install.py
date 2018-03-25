import os
import sys

vim = 'vim'
if sys.platform == "darwin":
    print('We determined, your platform is OS X.')
    print('For installing plugins for mac vim(not for vim), press \'Y\' key.')
    key = input()
    if key[0] == 'Y':
        vim = 'mvim -v'

os.system('cp vimrc ~/.vimrc')
os.system('cp vim_folder ~/.vim')
os.system('~/.vim/bundle/YouCompleteMe/install.py --all')
os.system(vim + '+PluginInstall +qall')
print("Done!")

.vimrc

pathogen:
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


jedi-vim:
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git

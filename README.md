# ORCA-Vim

Vim syntax/identation support for [ORCA](https://orcaforum.kofo.mpg.de/).

## Installation

### Vim plugin manager

If you use Vim plugin managers like
[vim-plug](https://github.com/junegunn/vim-plug),
[Vundle](https://github.com/VundleVim/Vundle.vim),
[pathogen.vim](https://github.com/tpope/vim-pathogen), or
[dein.vim](https://github.com/Shougo/dein.vim), use
[this GitHub repository](https://github.com/mrymtsk/orca-vim) as a package. If
you don't have a preferred plugin manager and you use Vim 8 or Neovim,
[volt](https://github.com/vim-volt/volt) is recommended.

### Built-in package manager (Vim 8 or Neovim)

Clone [this GitHub repository](https://github.com/mrymtsk/orca-vim) into
`~/.vim/pack/foo/start` (Vim 8) or
`~/.local/share/nvim/site/pack/foo/start` (Neovim). The directory name `foo` is
arbitrary. See `:help packages`.

### Manual install

[Download the package](https://github.com/mrymtsk/orca-vim/archive/master.zip)
and copy `ftdetect`, `indent`, and `syntax` directories to `~/.vim` (Vim) or
`~/.config/nvim` (Neovim).

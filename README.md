Date: 2013-11-11
Title: My vimrc documentation

# vimrc

## Installation:

    git clone git@github.com:martinos/dotvim.git ~/.vim

## Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

## Cheat Sheet

### File explorer

#### If you want an explorer from where vim was started

    :sp .
    :vs .

#### If you want to open an explorer from the directory of the file you are currently editing.

Horizontal split view:

    :Sex

Vertical split view:

    :Vex

#### In the Explorer

-  %: create a file
-  d: create a directory
-  R: rename a file

### Ctrl-P

#### Once CtrlP is open

- <c-t\>: Open in new tab
- <c-x\>: Open in horizontal split
- <c-v\>: Open in vertical split
- <c-y\>: Create a new file
- <c-j\> or <c-k\>: Move up and down

### Edition Tips

To toggle characters

    xp
To toggle lines

    ddp

### Registers

- "": default register
- "0: yank register
- "\_: black hole register 

The yank register, as it's name says it contains the last yanked register. This buffer is not replaced by the deleted lines or character

We can append to a register by using the capital version of the register
    
    "Ayy

To reset a register

    qaq

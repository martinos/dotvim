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

### Buffers

List buffers:

  	:ls

Next buffer:

	:bn
	
Open buffer N in horizontal split:

	:sbuffer N
	
Open buffer N in vertical split:
	
	:vert sb N
	
### Fugitive


### Registers

To list all register:

	:reg

	- "": default register
	- "0: yank register
	- "\_: black hole register
	- "*: Copy to the local clipboard

The yank register, as it's name says it contains the last yanked register. This buffer is not replaced by the deleted lines or character

We can append to a register by using the capital version of the register
    
    "Ayy

To reset a register

    qaq
	

### Quick Fix

To open the quick fix window.

	:copen
	
To go to the previous/next element in the quick fix
	:cnext
	:cprev
	
To facilitate navigation into the quick fix, you can use the unimpaired.vim plugin
	
	Unimpaired |Vim    |Action
	[q			:cprev	jump to previous quickfix item
	]q			:cnext	jump to next quickfix item
	[Q			:cfirst	jump to first quickfix item
	]Q			:clast	jump to last quickfix item
	

### Fugitive 
	:Gstatus
		CTRL-N	: Go to next file 
		CTRL-P	: Go to previous file
		- key 	: Add file to the index when not staged
			  	: Remove the file from the index. git reset equivalent
	    SHIFT-c : Open the commit window
	
	:Gdiff
		The index is on the left window
		The working copy is on the right window
		:Gwrite in the working copy window write the content of the file to the index
		:Gwrite in the index window, writes the content of the file to the working copy
		:Gread is the inverse of Gwrite
	
	:diffget
		From the index it gets the hunk from the working copy to the index.
		
	:diffupdate
		Refresh the diff windows when vim is confused
		
	do
		Diff optain, when you type 'do' at the end of block that is not existing on the index.

### CTags

Go to a definition. Memo trick: you go into the cave.

	ctrl-]

Get out of a definition. Memo trick: you get out of the cave.

	ctrl-O

	:tag method_name_to_acces
	:tag /validates_presence_of_.* # It can accept regular expression.

### Vim-Rails

	:Rfind event # You can tab and it will iterated through mondels controllers helper etc.
	
	gf 	# Go to file under the cursor, 
		# it works for active record relation
		# partials, routes and even url helpers
	:RVunittest # Opens the unit test in a vertical split
	:RSunittest # Opens the unit test in a horizontal split
	:RTunittest # Opens the unit test in a new tabs
	:Rake # Run the current test
	:Rgenerate migration add_coco_to_foo
  :A opens alternate file
  :A opens alternate file in a horizontal split
  :Av opens alternate file in a vertical split
	
### Jump list

Print the list where the 

	:jumps
To jump back to the last jump

	C-O # Go out of a jump
	C-I # Jump in
#### SMate

Snippets location:
	~/.vim/snippets
	
#### Exuberant CTags

### HTML
http://usevim.com/2013/03/01/vim-101-text-objects-for-html/

dit => delete inner tag
cit => change inner tag
yit => yank inner tag
vit => visual inner tag

dat => delete a tag


#### Window management

To swap the two buffers:
```
Ctrl-w r
```

[Flip windows](http://stackoverflow.com/questions/6071266/how-to-flip-windows-in-vim)

### Misc
	
	ci" # Change inside "
	da" # Delete a around "
	gi  # Return back to last insertion location
	
To reload vimrc
:so %

### Sparkup plugin

https://www.youtube.com/watch?v=dB2Q9EN37eY

### easymotion

https://github.com/Lokaltog/vim-easymotion

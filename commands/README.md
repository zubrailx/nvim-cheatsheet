# Commands

Go back to [README.MD](../../README.md)

### Command execution

| Command        | Description                                      |
| -------------- | ------------------------------------------------ |
| `:![command]`  | - execute shell command                          |
| `:!![command]` | - execute command and put its output in the file |


### Help commands

Syntax: `:help [subject]`

- `:help [subject]`
- `:help vimrc-intro`
- `:help insert-index `
- `:help user-manual`
- `:help deleting`
- `:help index `
- `:help -t`


### Digraphs

- `:digraphs` - to print character, that can't be printed with keyboard
    - `:digr` 


### Marks

- `:marks` - to check all the existed marks 

|             |                                  |
| ----------- | -------------------------------- |
| `:marks`    | - list of the current marks      |
| `:delmarks` | - delete the mark                |


### Help prefixes

| Modes                | Keybind        | Help command         |
| -------------------- | -------------- | -------------------- |
| normal-mode          | - `(nothing)`  | - `:help x`          |
| control chars        | - `CTRL`       | -`:help CTRL-u`      |
| visual-mode          | -`v`           | -`:help v_u    `     |
| insert-mode          | -`i`           | -`:help i_<Esc>`     |
| ex-mode              | -`:`           | -`:help :quit`       |
| command-line editing | -`c`           | -`:help c_<Del>`     |
| Vim command args     | -` `           | -`:help -r`          |
| Options              | -`(both ends)` | -`:help 'textwidth'` |


### View commands
| Command                | Description                                                                     |
| ---------------------- | ------------------------------------------------------------------------------- |
| `:set (no/incv)number` | - set numbering on the left side of the screen                                  |
| `:set ic`              | - ignore case                                                                   |
| `:set noic`            | - switch off (for many commands)                                                |
| `:set invic`           | - to toggle (for many commands)                                                 |
| `:set hls[earch]`      | - highlight all matching phrases                                                |
| `:set is`              | - show partial matches for a search phrase                                      |
| `:nohlsearch`          | - clear the current highlighting                                                |
| `:set incsearch`       | - the editor starts finding matches when you begin to write                     |
| `:set autowrite`       | - write it when you always want to save changes                                 |
| `:set hidden`          | - if you want to keep the contents of all your old buffers around while editing |

> You can also write commands using pipe - `:set hls is`


### Working with files

| Command        | Description                                                        |
| -------------- | ------------------------------------------------------------------ |
| `:q`           | - close the window, discarding changes                             |
| `:q!`          | - close the window, without warning                                |
| `:qa!`         | - close all without warning                                        |
| `:x! \| wq`    | - save the file                                                    |
| `:vi [file]`   | - close the current file and begin editing another one             |
| `:w[rite]`     | - write the changes                                                |
| `:view [file]` | - works like vi, but the new file will be opened in read only mode |
| `:args`        | - show the file you are editing                                    |


### Move
| Command | Description      |
| ------- | ---------------- |
| `:$`    | - goto last line |


### Editing
| Command           | Description                                                                  |
| ----------------- | ---------------------------------------------------------------------------- |
| `:s/old/new   `   | - replaces first match old on new in this line                               |
| `:s/old/new/g `   | - replaces all matches old on new in this line.                              |
| `:#,#s/old/new/g` | - replaces all matches old on new between #, #.                              |
| `:%s/old/new/g`   | - replaces all matches in this document                                      |
| `../gc`           | - to ask for confirmation after each time.                                   |
|                   |                                                                              |
| `:r [filename]`   | - retrieving content of the file where the cursor is.                        |
| `:r ![dir]`       | - reads the output of the dir command and puts it below the cursor position. |


### Windows

| Command                           | Description                                                                                   |
| --------------------------------- | --------------------------------------------------------------------------------------------- |
| `:[count] next`                   | - open the file in the list that is next to this one                                          |
| `:previous or Next`               | - backwards                                                                                   |
| `:wprevious`                      | - write and previous                                                                          |
|                                   |                                                                                               |
| `:q = :close`                     |                                                                                               |
|                                   |                                                                                               |
| `:first or rewind`                | - open first file in the list                                                                 |
| `:last`                           | - open last file in the list                                                                  |
|                                   |                                                                                               |
| `:split [file]`                   | - split the window and open the file or nothing                                               |
| `:[number] split ...`             | - number is a number of lines in a new window                                                 |
|                                   |                                                                                               |
| `:[count] split[+command] [file]` | - this is how split can look like                                                             |
|                                   |                                                                                               |
| `:new`                            | - like split but starts a new file                                                            |
|                                   |                                                                                               |
| `:sview`                          | - split a view                                                                                |
|                                   |                                                                                               |
| `:hide`                           | - close the current window but Vim knows that you are editing this file (hide it from screen) |


### Buffers
| Command                  | Description                                                      |
| ------------------------ | ---------------------------------------------------------------- |
| `:buffers`               | - find the information about the current buffers                 |
|                          |                                                                  |
| `:buffer number`         | - select which buffer to use                                     |
| `:buffer file `          | - same operation but with file name                              |
|                          |                                                                  |
| `:sbuffer number\file`   | - splits the window and starts editing the buffer                |
|                          |                                                                  |
| `:bnext`                 | - go to the next buffer                                          |
| `:count [s]bnext`        | - go to the next buffer count times or if 's' also split         |
| `:count [s]bprevious`    | - go to previous buffer count times or if 's' also split         |
| `:count [s]bNext`        | - like`[s]bprevious`                                             |
|                          |                                                                  |
| `:[s]blast`              | - go to the last buffer or if 's' also split                     |
| `:[s]brewind :[s]bfirst` | - open first buffer                                              |
| `:[s]bmodified count`    | - go to count modified buffer on the list (not number of buffer) |


#### Flags
|       |                          |
| ---   | ------------------------ |
| `-`   | - inactive buffer        |
| `h`   | - buffer is hidden       |
| `%`   | - current buffer         |
| `#`   | - alternate buffer       |
| `+`   | - file has been modified |


### Work with tabs

|                   |                                            |
| ----------------- | ------------------------------------------ |
| `:tabnew [fname]` | create new tab                             |
| `:tabs          ` | print the list of tabs                     |
| `:tabn          ` | next tab                                   |
| `:tabp          ` | previous tab                               |
| `<n>gt          ` | go to tab #n                               |
| `gt             ` | next tab                                   |
| `gT             ` | previous tab                               |
| `:tabm +1       ` | move the tab forward one position          |
| `:tabm -1       ` | move tab back one position                 |
| `:tabm 2        ` | move the tab forward to the given position |


### Programming stuff
|                              |                                                    |
| ---------------------------- | -------------------------------------------------- |
| :syntax on                   |                                                    |
| :set background[=light\dark] |                                                    |
| :set filetype=c              | - now vim understands, that you are editing C file |
| :help new-filetype           | - if you want to make this setting automatically   |

### Running the color test

- `:edit $VIMRUNTIME/syntax/colortest.vim`

- `:source %`

- `:set shiftwidth=4`

### Programming

|                             |                                                            |
| --------------------------- | ---------------------------------------------------------- |
| `:set cindent`              | - C-style indentation (C, C++, Java, and so on)            |
| `:set smartindent`          | - if } then add remove one shift, if { then add one shift  |
| `:set autoindent`           | - new line are indented the same as the previous line      |
|                             |                                                            |
| `:tag [name]`               | - tag jumping in on function                               |
| `:stag [name]`              | - split the window and jump                                |
|                             |                                                            |
| `:tag /[regular exp]`       | - search for the tag matches to regex                      |
| `:tselect [name]`           | - returns the list of the tags with the following command. |
|                             |                                                            |
| `:set list`                 | - enable the mode where $ and ^I (tabs) symbols are shown  |
|                             |                                                            |
| `:set ignorecase`           | - ignore case for command `<C-p>`                          |
| `:set complete=key,key,key` | - controls where Vim searches for words                    |

### Keys
|         |                                                                             |
| ------- | --------------------------------------------------------------------------- |
| `.`     | - current file                                                              |
| `b`     | - files in loaded buffers, not in a window                                  |
| `d`     | - definitions in the current file in files included by a #include directive |
| `i`     | - files included by the current filethrough the use of a #include directive |
| `k`     | - the file defined by the 'dictionary' option                               |
| `kfile` | - the file named {file}                                                     |
| `t`     | - tags file                                                                 |
| `u`     | - unloaded buffers                                                          |
| `w`     | - files in other windows                                                    |


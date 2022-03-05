# Shortcuts

Go back to [README.MD](../../README.md)

### Others
|               |                                                                              |
| ------------- | ---------------------------------------------------------------------------- |
| `.`           | - REPEAT THE PREVIOUS COMMAND                                                |
| `<C-K>[char]` | - to print a digraph symbol (non-printable on keyboard) while in insert mode |
| `K`           | - works like 'man' command, so uses highlighted text as the keywords         |

### File
|      |                                       |
| ---- | ------------------------------------- |
| `ZZ` | - close the window and commit changes |

### Information [Normal mode]
|         |                                                                |
| ------- | -------------------------------------------------------------- |
| `<C-d>` | - show the list of commands, that starts the same              |
| `<Tab>` | - complete the command                                         |
| `<Esc>` | - abort the command                                            |
| `<C-g>` | - to show your location in a file and file status (`g + <C-g)` |

### Regular expressions
|                |                                                 |
| -------------- | ----------------------------------------------- |
| `^`            | - beginning of the line                         |
| `$`            | - end of the line                               |
| `.`            | - match any single character                    |
| `\[character]` | - turn off the special meaning of the character |

### Movement [Normal mode]

|                |                                                                   |
| -------------- | ----------------------------------------------------------------- |
| `h`            | - left                                                            |
| `l`            | - right                                                           |
| `j`            | - down                                                            |
| `k`            | - up                                                              |
|                |                                                                   |
| `$`            | - end of the line, 2$ - next line, 3$ ..., also `<End>`, `<kEnd>` |
| `0`            | - beginning of the line, also `<Home>`,  `<kHome>`                |
| `^`            | - first non-blank character                                       |
|                |                                                                   |
| `ENTER [link]` | - goto the link                                                   |
|                |                                                                   |
| `G`            | - goto the bottom of the file                                     |
| `gg`           | - goto the beginning of the file                                  |
| `[number] G`   | - goto the line of number                                         |
|                |                                                                   |
| `%`            | - when on brackets jumps on them ( -> ) works with: [], {}, ()    |
|                |                                                                   |
| `e`            | - end of this word (or next word)                                 |
| `w`            | - to the beginning of the next word.                              |
| `b`            | - back one word (like w)                                          |
|                |                                                                   |
| `t[char]`      | - jump not including [char]                                       |
| `T[char]`      | - jump not including [char] reverse                               |
| `f[char]`      | - jump including [char]                                           |
| `F[char]`      | - jump including [char] reverse                                   |
|                |                                                                   |
| `<C-y>`        | - Scrolling up without moving cursor                              |
| `<C-e>`        | - Scrolling down without moving cursor                            |


### Jumping

|         |                                            |
| ------- | ------------------------------------------ |
| `<C-u>` | - scroll you down half the screen (up you) |
| `<C-d>` | - scroll you up the screen (down you)      |
|         |                                            |
| `<C-o>` | - jump back in jump-list                   |
| `<C-i>` | - jump forward in jump-list                |
|         |                                            |
| `<C-]>` | - go to the hyperlink                      |
| `<C-t>` | - get back (pop the tag off)               |

### Windows

|                 |                                                       |
| --------------- | ----------------------------------------------------- |
| `<C-w> w`       | - move the cursor to the window which is down in loop |
| `<C-w><C-w>`    | - same                                                |
|                 |                                                       |
| `<C-w> j`       | - move the cursor to the window which is down         |
| `<C-w> k`       | - move the cursor to the window which is up           |
|                 |                                                       |
| `[count]<C-w>+` | - increase the count of lines by 10 in opened window  |
| `[count]<C-w>-` | - decrease by count                                   |
|                 |                                                       |
| `<C-w>=`        | - makes all windows the same size                     |
|                 |                                                       |
| `[count]<C-w>_` | - makes the current window count lines high to count  |


### Searching

|                 |                                                                                                                                                                                        |
| --------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `/[sequence]`   | - search for the sequence and goto it (you need to put `/` before `.*[]ˆ%/\?~$` symbols use them in find field.)<br>Also has the search history `/<Up>` to search the previous request |
|                 |                                                                                                                                                                                        |
| `?`             | - use instead of `/` to search from in the backward                                                                                                                                    |
|                 |                                                                                                                                                                                        |
| `n or /<Enter>` | - search for the same phrase again                                                                                                                                                     |
| `N            ` | - search for in the opposite direction                                                                                                                                                 |
|                 |                                                                                                                                                                                        |

### Switching-Modes

|               |                                                                                  |
| ------------- | -------------------------------------------------------------------------------- |
| `<C-o>`       | - escapes INSERT to do one NORMAL-mode command, after returns to INSERT mode     |
| `ESC \ <C-[>` | - goto NORMAL mode                                                               |
| `<C-c>      ` | - just go to NORMAL mode (commands before acts like they are in insert mode)     |
| `v`           | - goto VIEW mode (After pressing : you could do something with highlighted text) |
| `V`           | - goto VIEW-LINE mode                                                            |
| `R`           | - goto REPLACE mode from NORMAL                                                  |

### Edit commands [Normal mode]

Edit command: `operation + [count] + motion`.

Edit (Operations) [Normal mode]:			" can use counts `(3a!) = (a + !!!)`

|                |                                                                                                                       |
| -------------- | --------------------------------------------------------------------------------------------------------------------- |
| `i`            | - before character (goto INSERT mode from NORMAL)                                                                     |
|                |                                                                                                                       |
| `a`            | - after the cursor (goto INSERT mode from NORMAL)                                                                     |
| `A`            | - append the line (goto INSERT mode)                                                                                  |
|                |                                                                                                                       |
| `x`            | - delete the symbol                                                                                                   |
|                |                                                                                                                       |
| `d`            | - delete the symbol/word                                                                                              |
| `d [number] d` | - delete whole line                                                                                                   |
|                |                                                                                                                       |
| `[number] dd`  | - execute number of commands                                                                                          |
|                |                                                                                                                       |
| `u`            | - undo the command                                                                                                    |
| `U`            | - fix whole line                                                                                                      |
|                |                                                                                                                       |
| `<C-r>`        | - redo the last change (undo undos)                                                                                   |
|                |                                                                                                                       |
| `r`            | - replace character under the cursor                                                                                  |
| `R`            | - replace until something (goto replace mode)                                                                         |
|                |                                                                                                                       |
| `~`            | - change the character case (inv you are on)                                                                          |
|                |                                                                                                                       |
| `c`            | - delete the chars and goto insert mode (cw - delete the word up to the space,<br> but dw deletes the word AND space) |
|                |                                                                                                                       |
| `c [space]`    | - delete the char and goto INSERT mode                                                                                |
| `c [move]`     | - delete the `[move]` and goto INSERT mode  [ex. cw - rem. one word in what you stay]                                 |
|                |                                                                                                                       |
| `cc`           | - same idea like with dd. (deletes whole line)                                                                        |
|                |                                                                                                                       |
| `o`            | - open the line below (create a new line) and place you in insert mode on this line                                   |
| `O`            | - open the line upper                                                                                                 |
|                |                                                                                                                       |
| `p`            | - put the line after the cursor (from vim register)                                                                   |
| `P`            | - put the text before the cursor                                                                                      |
|                |                                                                                                                       |
| `y`            | - yank (copy)                                                                                                         |
| `yy or Y`      | - yank the whole line                                                                                                 |
|                |                                                                                                                       |
| `y [move]`     | - yank one word                                                                                                       |
|                |                                                                                                                       |
| `[count]J`     | - join the lines                                                                                                      |

>d3w - delete three words<br>3dw - delete one word three times

#### Motions
> Can use counts before command

|             |                                     |
| ----------- | ----------------------------------- |
| `$ \ Shift` | - to the end of the line            |
|             |                                     |
| `e`         | - to the end of this word           |
| `w`         | - to the beginning of the next word |
|             |                                     |
| `f`         | - up to the symbol                  |
|             |                                     |
| `b`         | - one word back                     |
|             |                                     |
| `f<*char>`  | - jump on the *char forward         |
| `F<*char>`  | - jump on the *char backward        |
|             |                                     |
| `t<*char>`  | - jump up to the *char forward      |
| `T<*char>`  | - jump up to the *char backward     |

### Macros

|      |                                                                                       |
| ---- | ------------------------------------------------------------------------------------- |
| `qa` | - start recording macros, where a is a register `[a-z] `where you can put this macros |
| `q`  | - finish recording macros                                                             |
| `[*count]@<*char>` | - execute macro on the char *count times |

*Wiki:*  https://vim.fandom.com/wiki/Macros - to hard...


### File (Buffers) switching

Interesting feature when switching between files:

first start: `$ nvim file1.txt file2.txt file3.txt` - opens the file1.txt. 

To switch the file print `:next` or `:previous` and save changes (or overload using !)

| Command  | Description                                                                                   |
| -------- | --------------------------------------------------------------------------------------------- |
| `1<C-^>` | - open file1.txt					"When first load there is no alternative file before you switch anywhere |
| `2<C-^>` | - open file2.txt                                                                              |
| `3<C-^>` | - open file3.txt                                                                              |
| `<C-^>`  | - open file2.txt (previous(alternative) file)                                                 |


### Marks

A mark allows you to record your current position so you can return to it later. Each file can have
mark a, but only one file can have mark A.
|             |                                  |
| ----------- | -------------------------------- |
| `ma`        | - put the mark, where 'a' is key |
| `'a`        | - goto mark                      |
| `d'a`       | - delete up to mark              |
| `y'a`       | - yank up to mark ...            |


#### Mark jumps default
|      |                                                          |
| ---- | -------------------------------------------------------- |
| `''` | - last place of the current file                         |
| `'"` | - the place where you were at the file before closing it |
| `'[` | - the start of the last insert                           |
| `']` | - the end of the last insert                             |


*Wiki:*  https://vim.fandom.com/wiki/Using_marks

### Visual mode

|                 |                                                       |
| --------------- | ----------------------------------------------------- |
| `v`             | - goto visual mode                                    |
| `V`             | - goto visual-line mode                               |
| `<C-V>`         | - highlight a rectangle [goto v-block mode]           |
| `d`             | - delete the highlighted text                         |
| `D`             | - delete the highlighted lines                        |
| `y`             | - place the highlighted text in the register          |
| `Y`             | - place the highlighted lines in the register         |
| `c`             | - delete the highlighted text and goes to insert mode |
| `C`             | - same but with lines                                 |
| `J`             | - join all highlighted lines in one line              |
| `gJ`            | - join the lines without adding spaces                |
| `>`             | - selects lines by one tab                            |
| `<`             | - in reverse                                          |
|                 |                                                       |
| `=`             | - change indents in the text                          |
|`r, R , s, S = c`|                                                       |


### Visual-Block mode 
> `(:help v_b_r)`

|           |                                                                 |
| --------- | --------------------------------------------------------------- |
| `I`       | - to enter insert mode follewed by the text to insert           |
| `c`       | - delete the block and start as I                               |
| `C`       | - delete text from the left edge to the end of the line         |
| `A`       | - append the text to the block                                  |
| `r[char]` | - replace the selected text with a single char                  |
| `<`       | - removes one swift                                             |
| `>`       | - add one shift to the beginning of each selected line in block |


### Programming

|             |                                                                                                     |
| ----------- | --------------------------------------------------------------------------------------------------- |
| `[count]<<` | - shift the text to the left from NORMAL mode                                                       |
| `[count]>>` | - shift the text to the right from NORMAL mode                                                      |
|             |                                                                                                     |
| `<C-d>`     | - back up one shift width                                                                           |
| `[ <C-i>`   | - jump to the next word that is under the cursor                                                    |
|             |                                                                                                     |
| `gd  \ gD`  | - highlights all the word equals that is under the cursor                                           |
|             |                                                                                                     |
| `%`         | - jump between pair symbols like {[( or  jump between pair /* */ comments #ifdef, #endif, #end, #if |
| `>%`        | - shift everything that is between {} in one level AND {} also                                      |
| `<%`        | - same idea                                                                                         |
| `>i{`       | - shift everything that is between {} in one level                                                  |
| `<i{`       | - same idea                                                                                         |
|             |                                                                                                     |
| `<C-]>`     | - hyperlink jump (tag jump)                                                                         |
| `<C-t>`     | - go back from hyperlink jump                                                                       |
|             |                                                                                                     |
| `<C-W>]`    | - split the window and jump to the tag under cursor                                                 |


### Automatic Completion

|         |                                   |
| ------- | --------------------------------- |
| `<C-p>` | - search the definition backwards |
| `<C-n>` | - search the definition forward   |
| `<Tab>` | - autocomplete                    |


### Selective search `<C-x>` submode

|         |                                     |
| ------- | ----------------------------------- |
| `<C-d>` | - Macro definitions                 |
| `<C-f>` | - Filenames                         |
| `<C-k>` | - Dictionarys                       |
| `<C-i>` | - current files and #included files |
| `<C-l>` | - whole lines                       |
| `<C-]>` | - tags                              |
| `<C-p>` | - same as `<C-p>`                   |
| `<C-n>` | - same as `<C-n>`                   |


### Registers

* `"[reg] [operation]` - work with the data in the register

*   `<C-r>`          - while in insert mode [like "`[reg]...`]


### Advanced shortcuts
|                      |                                               |
| -------------------- | --------------------------------------------- |
| `[*type][*levels]ib` | do something inside inner block               |
| `[*type][*levels]iB` | do something inside curly brackets            |
|                      |                                               |
| `[*type][*levels]ab` | do something inside inner block with brackets |
| `[*type][*levels]aB` | do something inside inner block with brackets |
|                      |                                               |
|                      |                                               |

* *type - i.e. 'v', 'c', 'y' 
* to make selection inclusive use can use 'a' instead of 'i'
* replace 'B' and 'b' with something like '{' or '}', '(' or ')' to perform action inside them
* *levels - levels of parens up

> for more details use :help text-objects

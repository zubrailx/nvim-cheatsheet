Информация: [Normal]
	<C-g>         - to show your location in a file and file status (g + <C-g)
	
	/[sequence]   - search for the sequence and goto it (you need to put / befor .*[]ˆ%/\?~$ symbols use them in find field.) 
	                also has the search history /<Up> to search the previous request
					
	n or /<Enter> - search for the same phrase again
	N             - search for in the opposite direction
	?             - use instead of / to search from in the backward
	
	<C-d>         - show the list of commands, that starts the same 
	<Tab>         - complete the command 
	
	ZZ            - close the window and commit changes



REGULAR EXPRESSIONS:
	^             - beginning of the line 
	$             - end of the line 
	.             - match any single character 
	\[character]  - turn off the special meaning of the character 
	


Перемещение: [Normal] 		" can use counts (3e)
	h             - left
	l             - right
	j             - down
	k             - up
	
	$             - end of the line, 2$ - next line, 3$ ..., also <End>, <kEnd>
	0             - beginning of the line, also <Home>, <kHome>
	^             - first non-blank character
	
	ENTER [link]  - goto the link
	
	G             - goto the bottom of the file
	gg            - goto the beginning of the file
	[number] G    - goto the line of number
	
	%             - when on brackets jumps on them ( -> ) works with: [], {}, ()
	
	e             - end of this word (or next word)
	w             - to the beginning of the next word. 
	b             - back one word (like w)
	
	<C-o>         - jump back in jump-list
	<C-i>         - jump forward in jump-list
	
	<C-w><C-w>    - jump from one window to another
	
	<C-]>         - go to the hyperlink
	<C-T>         - get back (pop the tag off)
	
	f[char]       - search along the current line (you need to go to e -> print fy)
	F             - search backward
	t             - like f, but one character earlier
	T             - same idea
	
	<C-U>         - scroll you down half the screen (up you)
	<C-D>         - scroll you up the screen (down you)

	<Esc>         - abort the command



Режимы:
	<C-o>           - escapes insert to do one normal-mode command, after returns to insert mode

	ESC | <C-[>     - goto normal mode
	<C-c>           - just go to normal mode (commands before acts like they are in insert mode) 

	v               - goto view mode (After pressing : you could do something with highlighted text)
	R               - goto replace mode



Команда редактирования: operation + [count] + motion.

Редактирование (Operations) [Normal mode]:			" can use counts (3a!) = (a + !!!)
	i             - before character (goto insert mode)
	a             - after the cursor (goto insert mode)
	A             - append the line
	
	x             - delete the symbol
	
	d             - delete the symbol/word
	d [number] d  - delete whole line
	
	u             - undo the command
	U             - fix whole line
	<C-r>         - redo the last change (undo undos)
	
	r             - replace character under the cursor
	R             - replace until something (goto replace mode)
	~             - change the character case (inv you are on)
	
	c             - delete the chars and goto insert mode (cw - delete the word up to the space, but dw deletes the word AND space)
	cc            - same idea like with dd. (deletes whole line)
	
	o             - open the line below (create a new line) and place you in insert mode on this line
	O             - open the line upper 

	p             - put the line after the cursor (from vim register)
	P             - put the text before the cursor
	y             - yank (copy)
	yy            - yank the whole line 
	
	yw            - yank one word
	
	.             - REPEAT THE PREVIOUS COMMAND
	
	[count]J      - join the lines
	
	<C-K>[char]   - to print a digraph symbol (non-printable on keyboard) while in insert mode
	
d3w - delete three words
3dw - delete one word three times
	
	
Редактирование (Motions):				" can use counts
$ | Shift       - to the end of the line 
e               - to the end of this word
w               - to the beginning of the next word
f               - up to the symbol

	
	м  
MACROS, MARKS:
	qa            - start recording macros, where a is a register [a-z] where you can put this macros 
	q             - finish recording macros
	
	ma            - start the macros, where a is a register [a-z] where you can put the mark
	d'a           - delete to mark 
	y'a           - yank to mark ...
	


WINDOWS:
	<C-w> w         - move the cursor to the window which is down in loop
	<C-w><C-w>      - same 
	
	<C-w> j         - move the cursor to the window which is down
	<C-w> k         - move the cursor to the window which is up
	
	[count]<C-w>+   - increase the count of lines by 10 in opened window 
	[count]<C-w>-   - decrease by count 
	<C-w>=          - makes all windows the same size
	[count]<C-w>_   - makes the current window count lines high
	
	
	
Visual Mode:
	v               - goto visual mode 
	<C-V>           - highlight a rectangle [goto v-block mode]
	
	d               - delete the highlighted text 
	D               - delete the highlighted lines 
	
	y               - place the highlighted text in the register 
	Y               - place the highlighted lines in the register    
	
	c               - delete the highlighted text and goes to insert mode 
	C               - same but with lines 
	
	J               - join all highlighted lines in one line 
	gJ              - join the lines without adding spaces 
	
	r, R , s, S = c
	
	>               - selects lines by one tab 
	<               - in reverse 
	=               - change indents in the text (idk how) 
	
	K               - works like 'man' command, so uses highlighted text as the keywords
	
Visual-Block mode: (:help v_b_r)
	I               - to enter insert mode follewed by the text to insert 
	c               - delete the block and start as I
	C               - delete text from the left edge to the end of the line 
	A               - append the text to the block 
	rchar           - replace the selected text with a single char 
	
	<               - removes one swift 
	>               - add one shift to the beginning of each selected line in block
	


Programming:
	[count]<<              - shift the text to the left 
	[count]>>              - shift the text to the right
	
	<C-d>                  - back up one shift width
	
	[ <C-i>                - jump to the word under the cursor 
	[ <C-i>                - jump to the next word that is under the cursor 	
	gd  | gD               - highlights all the word equals that is under the cursor 
	
	%                      - jump between pair symbols like {[( or  jump between pair /* */ comments #ifdef, #endif, #end, #if
	
	>%                     - shift everything that is between {} in one level and {} also 
	<%                     - same idea 
	
	>i{                    - shift everything that is between {} in one level
	<i{                    - same idea 
	
	K                      - works like man (or :help)
	
	<C-]>                  - hyperlink jump (tag jump) 
	<C-t>                  - go back from hyperlink jump
	
	<C-W>]                 - split the window and jump to the tag under cursor 
	
	
	
Automatic Completion:
	<C-p>                  - autocompletion (type again <C-p> to look for another match) 
	<C-n>                  - search forward
	
	<C-y>                  - scroll down 
	<C-e>                  - scroll up 
	
Selective search <C-x> submode:
	<C-d>          - Macro definitions 
	<C-f>          - Filenames 
	<C-k>          - Dictionary
	<C-i>          - current files and #included files 
	<C-l>          - whole lines 
	<C-]>          - tags 
	<C-p>          - same as <C-p> 
	<C-n>          - same as <C-n>
	
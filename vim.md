<div class="page-header">
  <h1>Cheatsheets <small>Vim - the ubiquitous text editor</small></h1>
</div>

### Information
`Leader` = comma

### Commands
Key | Explanation
--- | ---
`d` | delete
`c` | change
`y` | yank (copy)
`v` | visually select

### Motions
Key | Explanation
--- | ---
`a` | all
`i` | in
`t` | 'til
`f` | find forward
`F` | find backward

### Text objects
Key | Explanation
--- | ---
`w` | forward one word
`b` | back one word
`e` | end of word
`s` | sentence
`p` | paragraph
`t` | tag (available in XML/HTML files)

### Miscellaneous
Binding | Description
`CTRL-^` | Switch to previous buffer

### NERDTree
Binding | Description
--- | ---
`Leader-n` | NERDTree

### Fuzzy finding
Binding | Description
--- | ---
`Leader-g` | Git files
`Leader-f` | Files
`Leader-l` | Lines
`Leader-h` | History
`Leader-ENTER` | Buffers

### G specials
Binding | Description
--- | ---
`g-[hjkl0$]` | Navigate within a wrapped line
`g-q{motion}` | Split lines from wrapped line
`g-u` | Uncapitalize action
`g-U` | Capitalize action
`g-~` | Toggle capitalization action
`g-f` | Open filename which is selected under cursor
`g-v` | Reselect previous selection in visual mode
`g-J` | Join lines without spaces
`g-&` | Run substitute on entire document
`<NN>G` | Go to line number NN

### Terminal
Binding | Description
--- | ---
`Leader-t` | Terminal
`Leader-r` | Ranger

### System clipboard
Binding | Description
--- | ---
`Leader-d` | Cut to clipboard
`Leader-y` | Copy to clipboard
`Leader-p` | Paste to clipboard

### Indenting
Binding | Description
--- | ---
`TAB` | indent
`SHIFT-TAB` | unindent

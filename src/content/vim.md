---
title: Vim
description: Vim - the ubiquitous text editor
logo: vim.png
draft: false
---
### Information
`Leader` = comma

### Commands
{{< table >}}
Key | Explanation
--- | ---
`d` | delete
`c` | change
`y` | yank (copy)
`v` | visually select
{{< /table >}}

### Motions
{{< table >}}
Key | Explanation
--- | ---
`a` | all
`i` | in
`t` | 'til
`f` | find forward
`F` | find backward
{{< /table >}}

### Text objects
{{< table >}}
Key | Explanation
--- | ---
`w` | forward one word
`b` | back one word
`e` | end of word
`s` | sentence
`p` | paragraph
`t` | tag (available in XML/HTML files)
{{< /table >}}

### Miscellaneous
{{< table >}}
Binding | Description
--- | ---
`CTRL-^` | Switch to previous buffer
{{< /table >}}

### NERDTree
{{< table >}}
Binding | Description
--- | ---
`Leader-n` | NERDTree
{{< /table >}}

### Fuzzy finding
{{< table >}}
Binding | Description
--- | ---
`Leader-g` | Git files
`Leader-f` | Files
`Leader-l` | Lines
`Leader-h` | History
`Leader-ENTER` | Buffers
{{< /table >}}

### G specials
{{< table >}}
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
{{< /table >}}

### Terminal
{{< table >}}
Binding | Description
--- | ---
`Leader-t` | Terminal
`Leader-r` | Ranger
{{< /table >}}

### System clipboard
{{< table >}}
Binding | Description
--- | ---
`Leader-d` | Cut to clipboard
`Leader-y` | Copy to clipboard
`Leader-p` | Paste to clipboard
{{< /table >}}

### Indenting
{{< table >}}
Binding | Description
--- | ---
`TAB` | indent
`SHIFT-TAB` | unindent
{{< /table >}}

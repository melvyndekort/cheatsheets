---
title: Yazi
description: Yazi - terminal file manager
logo: yazi.png
draft: false
---
### Navigation
{{< table >}}
Binding | Description
--- | ---
`g -> /` | go to root
`g -> r` | go to root of git repo
`g -> s` | go to ~/src
`g -> S` | go to ~/Sync
`g -> .` | go to ~/.config
`g -> m` | go to Arch mount dir
`g -> M` | go to Ubuntu mount dir

### Selection
{{< table >}}
Binding | Description
--- | ---
`Ctrl + a` | Select all files
`Ctrl + r` | Inverse selection

### File operations
{{< table >}}
Binding | Description
--- | ---
`p` | Paste yanked files
`P` | Paste yanked files (overwrite if exists)
`-` | Symlink absolute path of yanked files
`_` | Symlink relative path of yanked files
`Ctrl + -` | Handlink yanked files
`Y or X` | Cancel yank status
`a` | Create a file (end with / for directory)
`r` | Rename file
`;` | Run a shell command
`:` | Run a shell command (blocking)
`.` | Toggle hidden files

### Tabs
{{< table >}}
Binding | Description
--- | ---
`t` | Create a new tab with CWD
`1, 2, ..., 9` | Switch to the N-th tab
`[` | Switch to the previous tab
`]` | Switch to the next tab
`{` | Swap current tab with previous tab
`}` | Swap current tab with next tab
`Ctrl + c` | Close the current tab

### Misc bindings
{{< table >}}
Binding | Description
--- | ---
`!` | Temporarily go to parent shell

### Copy paths
{{< table >}}
Binding | Description
--- | ---
`c -> c` | Copy the file path
`c -> d` | Copy the directory path
`c -> f` | Copy the filename
`c -> n` | Copy the filename without extension

### Search files
{{< table >}}
Binding | Description
--- | ---
`s` | Search using **fd**
`S` | Search using **ripgrep**
`Ctrl + s` | Cancel search

### Sorting
{{< table >}}
Binding | Description
--- | ---
`, -> m` | Sort by modified time
`, -> M` | Sort by modified time (reverse)
`, -> c` | Sort by creation time
`, -> C` | Sort by creation time (reverse)
`, -> e` | Sort by file extension
`, -> E` | Sort by file extension (reverse)
`, -> a` | Sort alphabetically
`, -> A` | Sort alphabetically (reverse)
`, -> n` | Sort naturally
`, -> N` | Sort naturally (reverse)
`, -> s` | Sort by size
`, -> S` | Sort by size (reverse)
`, -> r` | Sort randomly

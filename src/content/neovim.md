---
title: Neovim
description: Neovim - hyperextensible Vim-based text editor
logo: neovim.png
draft: false
---
### Leader
{{< table >}}
Binding | Description
--- | ---
`,` | Leader
{{< /table >}}

### Telescope bindings
{{< table >}}
Binding | Description
--- | ---
`Leader - ff` | Telescope find files
`Leader - fg` | Telescope live grep
`Leader - fb` | Telescope buffers
`Leader - fh` | Telescope help tags
`Leader - ft` | Telescope tags
`Leader - fr` | Telescope resume
{{< /table >}}

### Flash navigation bindings
{{< table >}}
Binding | Description
--- | ---
`s ` | Standalone jump, type characters before typing a jump label
`S ` | Treesitter, use jump label or `;` and `,` to increase/decrease selection
`r ` | Remote (used in operator pending mode, such as `yr` for yanking)
`R ` | Treesitter search, use like `yR` and start typing a pattern
`f, t, F, T` | After typing these, you can repeat the motion with `f` and `t` or go to previous with `F` or `T` 
`Ctrl - s` | Toggle flash search
{{< /table >}}

### Illuminate bindings
{{< table >}}
Binding | Description
--- | ---
`Alt - n` | Next match under cursor
`Alt - p` | Previous match under cursor
{{< /table >}}

### BufferLine bindings
{{< table >}}
Binding | Description
--- | ---
`Leader - bc` | BufferLine pick
`Leader - bn` | BufferLine next
`Leader - bp` | BufferLine prev
{{< /table >}}

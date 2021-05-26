# Better-O.nvim

A plugin that insert newline better than the default `O`.

Unlike the default, this plugin will move the cursor to **the top newline** instead of the **bottom** one.

This plugin supports `vim.v.count`, you can just use it like the default O.

## Installation

### `Paq.nvim`

```lua
paq{'winston0410/better-O.nvim'}
require('better-O').setup()
```

## Configuration

This is the default configuration.

Setting `enter_insert_mode` to `false` will make `O` end in normal mode.

```lua
require('better-O').setup{ enter_insert_mode = true }
```

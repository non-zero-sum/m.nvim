# My Neovim setup

Based on the starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
<!-- mtoc-start -->

- [Config changes](#config-changes)
  - [Lazy](#lazy)
  - [Key maps](#key-maps)
  - [Options](#options)
  - [Auto commands](#auto-commands)
- [Plugin configurations](#plugin-configurations)
  - [Workflow](#workflow)
  - [Look and feel](#look-and-feel)
  - [Language support](#language-support)
  - [LSP configurations](#lsp-configurations)
  - [Extras](#extras)
  - [Utilities](#utilities)
  - [Disabled plugins](#disabled-plugins)

<!-- mtoc-end -->
## Config changes

### Lazy

The only modification made to the LazyVim starter is to remove `habamax` as this isn't used.

### Key maps

Configures [key maps](./lua/config/keymaps.lua) for:

- moving lines of text up and down
- starting `jq` and `yq` for the current buffer
- save and close (buffer)
- send change (e.g. `ciw` change in word and `C` change line) events to the black hole register so that previously copied things can be pasted in
- color cycler (only works if focused on a valid colour syntax e.g. CSS hex)

### Options

[Sets](./lua/config/options.lua) soft-wrap, line breaks, scroll-off (how much space above/below the cursor to keep in view), and sets the python `lsp` to `basedpyright`

### Auto commands

No auto-commands are currently configured

## Plugin configurations

> All files in this folder are additional to the LazyVim kick-starter.

Each plugin configuration is in its own file to avoid accidental duplication.

### Workflow

- [hard time](./lua/plugins/hardtime.lua) - a taskmaster for bad habits

### Look and feel

- [Snacks](./lua/plugins/snacks.lua)
  - removes unused options from the default LazyVim splash
  - adds the `m-` header to the splash
- [TokyoNight](./lua/plugins/tokyonight.lua) - sets the style to `night` and adds transparency
- [render-markdown](./lua/plugins/render-markdown.lua) - sets rendering on for checkboxes
- [TODO comments](./lua/plugins/todo-comments.lua) - sets highlighting on even when Tlua/plugins/ODO is not in a comment

### Language support

- [uv](./lua/plugins/uv.lua) - adds uv package management when working with `python`
- [markdown-toc](./lua/plugins/markdown-toc.lua) - I prefer this to the default marksman toc. Sets marker to always `-` (dash)
- [conform](./lua/plugins/conform.lua) - sets `markdownlint-cli2` to be the default formatter for `markdown` files
- [nvim-lint](./lua/plugins/nvim-lint.lua) - sets `markdownlint-cli2` to be the default linter for `markdown`
- [treesitter](./lua/plugins/treesitter.lua) - adds additional languages (I'm not entirely sure this is necessary)
- [neotest](./lua/plugins/neotest.lua) - testing framework

### LSP configurations

[lspconfig](./lua/plugins/lspconfig.lua) activates the following:

- CSS
- CSS variables
- emmet
- `jsonls`

The following are added/activated by the installed plugins or extras, but configured here

- `basedpyright` - configurations to avoid clashes with Ruff
- `taplo` - my `TOML` formatting preferences

### Extras

The following extras have been installed via `LazyExtras`:

- `mini-surround` - support for adding, replacing, and removing surrounds (e.g. quotes)
- `mini-hipatterns` - colour hints for CSS
- `test-core` - support for neotest and async IO
- Language support:
  - `json`
  - `markdown`
  - `python`
  - `rust`
  - `toml`
  - `vue`
  - `yaml`

### Utilities

- [kulala](./lua/plugins/kulala.lua) - provides http client (via curl). Keys prefixed to `<localleader>r`
- [`oklch` color picker](./lua/plugins/oklch-color-picker.lua) - a colour picker and in-line preview for CSS colours
- [`jq`](./lua/plugins/jq.lua) - a `jq` interface for parsing large `json` files

### Disabled plugins

- `markdown-preview`
- `catppuccin`

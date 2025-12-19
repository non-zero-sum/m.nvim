# Plugin configurations
<!-- mtoc-start -->

- [Look and feel](#look-and-feel)
- [Language support](#language-support)
  - [LSP configurations](#lsp-configurations)
  - [Extras](#extras)
- [Utilities](#utilities)

<!-- mtoc-end -->
> All files in this folder are additional to the LazyVim kick-starter.

Each plugin configuration is in its own file to avoid accidental duplication.

## Look and feel

- [Snacks](./snacks.lua) - removes unused options from the default LazyVim splash and adds the `m-` header
- [TokyoNight](./tokyonight.lua) - sets the style to `night` and adds transparency

## Language support

- [uv](./uv.lua) - adds uv package management when working with `python`
- [markdown-toc](./markdown-toc.lua) - I prefer this to the default marksman toc. Sets marker to always `-`
- [conform](./conform.lua) - sets `markdownlint-cli2` to be the default formatter for `markdown` files
- [nvim-lint](./nvim-lint.lua) - sets `markdownlint-cli2` to be the default linter for `markdown`
- [treesitter](./treesitter.lua) - adds additional languages (I'm not entirely sure this is necessary)
- [neotest](./neotest.lua) - testing framework

### LSP configurations

[lspconfig](./lspconfig.lua) activates the following:

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

## Utilities

- [kulala](./kulala.lua) - provides http client (via curl). Keys prefixed to `<localleader>r`
- [`oklch` color picker](./oklch-color-picker.lua) - a colour picker and in-line preview for CSS colours
- [`jq`](./jq.lua) - a `jq` interface for parsing large `json` files

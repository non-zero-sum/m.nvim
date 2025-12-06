# Plugin configurations

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
- [lspconfig](./lspconfig.lua) - sets formatting options for `toml` files
- [treesitter](./treesitter.lua) - adds additional languages (I'm not entirely sure this is necessary)

## Utilities

- [kulala](./kulala.lua) - provides http client (via curl). Keys prefixed to `<localleader>r`

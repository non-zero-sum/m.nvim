# Core configurations
<!-- mtoc-start -->

- [Lazy](#lazy)
- [Key maps](#key-maps)
- [Options](#options)
- [Auto commands](#auto-commands)

<!-- mtoc-end -->
## Lazy

The only modification made to the LazyVim starter is to remove `habamax` as this isn't used.

## Key maps

Configures key maps for:

- moving lines of text up and down
- starting `jq` and `yq` for the current buffer
- save and close (buffer)

## Options

Sets soft-wrap, line breaks, scroll-off (how much space above/below the cursor to keep in view), and sets the python `lsp` to `basedpyright`

## Auto commands

Adds a `VimLeave` triggered command (i.e. exit) to close any open `LivePreview` server

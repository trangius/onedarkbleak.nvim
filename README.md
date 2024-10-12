# onedarkbleak.nvim
<h4><div align="right">
    <a href="#installation">Installation</a>
    <span> | </span>
    <a href="#default-configuration">Configuration</a>
    <span> | </span>
    <a href="#customization">Customization</a>
    <span> &nbsp;&nbsp;&nbsp; &nbsp; </span>
</div></h4>

Adds the lower contrast variant "bleak" to OneDark. [https://github.com/navarasu/onedark.nvim].
### Features
  * 1 new theme style ("bleak") plus the original 8 styles. If you only want the original styles, I suggest using the original version.
  * Supporting multiple plugins with hand picked proper colors
  * Customize `Colors`, `Highlights` and `Code style` of the theme as you like (Refer [Customization](#customization))
  * Toggle the theme style without exiting Neovim using `toggle_style_key` (Refer [Config](#default-configuration))

## Palette and example
![Bleak Palette](https://github.com/trangius/onedarkbleak/blob/main/assets/bleak_palette.png)
![Example](https://github.com/trangius/onedarkbleak/blob/main/assets/screenshot01.png)
## Installation
Install via your favourite package manager
```lua
-- Using Lazy.nvim
{
  'trangius/onedarkbleak.nvim',
  lazy = true,
}
```

```lua
-- Using Packer
use 'trangius/onedarkbleak.nvim'
```

## Configuration

### Enable theme

```lua
-- Lua
require('onedarkbleak').load()
```

```vim
" Vim
colorscheme onedarkbleak
```

### Change default style

```lua
-- Lua
require('onedarkbleak').setup {
    style = 'darker'
}
require('onedarkbleak').load()
```

```vim
" Vim
let g:onedarkbleak_config = {
    \ 'style': 'darker',
\}
colorscheme onedarkbleak
```

> **Options:**  dark, darker, cool, deep, warm, warmer, light

## Default Configuration
Default is now with bleak variant

```lua
-- Lua
require('onedarkbleak').setup  {
    -- Main options --
    style = 'bleak', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light', 'bleak'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
```

## Customization

Example custom colors and Highlights config

```lua
require('onedarkbleak').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    ["@keyword"] = {fg = '$green'},
    ["@string"] = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    ["@function"] = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
    ["@function.builtin"] = {fg = '#0059ff'}
  }
}
```

```lua
require('onedarkbleak').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    TSKeyword = {fg = '$green'},
    TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
    TSFuncBuiltin = {fg = '#0059ff'}
  }
}
```

## Plugins Configuration

### Enable lualine
To Enable the `onedarkbleak` theme for `Lualine`, specify theme as `onedarkbleak`:

```lua
require('lualine').setup {
  options = {
    theme = 'onedarkbleak'
    -- ... your lualine config
  }
}
```

## Plugins Supported
  + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
  + [LSPDiagnostics](https://neovim.io/doc/user/lsp.html)
  + [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
  + [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  + [WhichKey](https://github.com/folke/which-key.nvim)
  + [Dashboard](https://github.com/glepnir/dashboard-nvim)
  + [Lualine](https://github.com/hoob3rt/lualine.nvim)
  + [GitGutter](https://github.com/airblade/vim-gitgutter)
  + [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
  + [VimFugitive](https://github.com/tpope/vim-fugitive)
  + [DiffView](https://github.com/sindrets/diffview.nvim)
  + [Hop](https://github.com/phaazon/hop.nvim)
  + [Mini](https://github.com/echasnovski/mini.nvim)
  + [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
  + [Neotest](https://github.com/nvim-neotest/neotest)
  + [Barbecue](https://github.com/utilyre/barbecue.nvim)
  + [IndentBlankline](https://github.com/lukas-reineke/indent-blankline.nvim)
  + [vim-illuminate](https://github.com/RRethy/vim-illuminate)

## Reference
* [onedark.nvim](https://github.com/navarasu/onedark.nvim)
* [tokyodark.nvim](https://github.com/tiagovla/tokyodark.nvim)
* [one-dark-theme](https://github.com/andresmichel/one-dark-theme)

## License

[MIT](https://choosealicense.com/licenses/mit/)

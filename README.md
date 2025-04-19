# nvim-config

## File Overview

*   **`init.lua`**: The primary configuration entry point. Loads subsequent Lua modules responsible for different aspects of the editor setup.

*   **`lua/autocmds.lua`**: Defines automated commands triggered by editor events. Includes settings for filetype-specific indentation, pre-save whitespace cleanup, and search highlight clearing.

*   **`lua/keymaps.lua`**: Establishes custom keybindings for Normal, Visual, and Insert modes. Defines the leader key and shortcuts for various editing, navigation, and execution tasks.

*   **`lua/lsp.lua`**: Configures Language Server Protocol (LSP) integration and autocompletion via `nvim-cmp`. Includes setup for `clangd`, `jdtls`, and `pylsp` servers, LSP-related keybindings, and completion source definitions.

*   **`lua/options.lua`**: Sets core Neovim editor options. Governs behavior related to indentation, clipboard integration, backup/swap files, search, UI appearance (line numbers, status line), undo persistence, and mouse support.

*   **`lua/plugins.lua`**: Manages plugin configurations. Includes setup for `code_runner`, `lualine` (status line), `nvim-autopairs`, and the `vscode` colorscheme.

*   **`lua/treesitter.lua`**: Configures `nvim-treesitter` for advanced syntax analysis. Enables Treesitter-based highlighting, indentation, and automatic parser installation.

## File Overview

*   **`init.lua`**: The primary configuration entry point. Loads subsequent Lua modules responsible for different aspects of the editor setup.

*   **`lua/autocmds.lua`**: Defines automated commands triggered by editor events.

*   **`lua/colorscheme.lua`**: Sets the colorscheme for Neovim.

*   **`lua/completion.lua`**: Configures autocompletion using `nvim-cmp`.

*   **`lua/keymaps.lua`**: Establishes custom keybindings for Normal, Visual, and Insert modes. Defines the leader key and shortcuts for various editing, navigation, and execution tasks.

*   **`lua/lsp.lua`**: Configures Language Server Protocol (LSP) integration.

*   **`lua/options.lua`**: Sets core Neovim editor options.

*   **`lua/plugins.lua`**: Manages plugin configurations.

*   **`lua/servers.lua`**: Defines and configures LSP servers like `clangd` and `pylsp`.

*   **`lua/statusline.lua`**: Configures the status line using `lualine`.

*   **`lua/treesitter.lua`**: Configures `nvim-treesitter` for advanced syntax analysis. Enables Treesitter-based highlighting and indentation.

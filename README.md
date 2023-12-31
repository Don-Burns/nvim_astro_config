This is a repo for my personal configuration of [astrovim](https://astronvim.com/)

# 🛠️ Installation / Cloning to New Machine

## Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

## Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

This will clone the repo into the nvim config directory ready for use.
Nvim may need to be restarted after cloning.

## Clone the repository

```shell
git clone git@github.com:Don-Burns/nvim_astro_config.git ~/.config/nvim/lua/user`
```

## Start Neovim

```shell
nvim
```

# Other Dependencies

As much as possible I try to have everything required for the config installed
automatically with the package manager, but there are exceptions

## [LazyGit](https://github.com/jesseduffield/lazygit)

This is what powers the git integration

## [ripgrep](https://github.com/BurntSushi/ripgrep)

Is what power the grep search with telescope

## Font

For some "non-standard" symbols a Nerd Font is required.
e.g. [CaskaydiaCove](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/CascadiaCode.zip)
Ligatures may need to be disabled depending on the terminal being used.
e.g. for windows terminal in the settings.json:

```JSON
    ...
    "profiles": {
        "defaults": {
            "font": {
                "face": "CaskaydiaCove Nerd Font Mono", \\ <-- this sets the font to the "default", can be done in the UI also
                "features": {
                    "liga": 0,
                    "calt": 0 \\ <-- this is the setting to stop ligatures ironincally
                }
            }
        },
    ...
```

## Programming Language Package Managers / Runtimes

Some features will need different runtimes to work correctly.
e.g. cspell needs node and npm to run/install
current list: `cargo, pip, python, node, npm`

# Adding LSPs and Language Syntax Highlighting

## Syntax Highlighting

go to `./plugins/treesitter.lua` and add the language to the `ensure_installed` section

## LSPs

go to `./plugins/mason.lua` and add it to the corresponding section.

# Command Cheatsheet

## Custom Commands

For recording my own custom commands for later reference

## Default Commands

Section to record some useful command combos that I find poorly documented or are not obvious

### Switch from code buffer to terminal

Open a terminal (powered by [ToggleTerm](https://github.com/akinsho/toggleterm.nvim) at time of writing)
e.g. `<leader> t h` for a horizontal split

from here `<ctrl> k` can be used to swap back and forth from the terminal to the last buffer.

# 📖 References

- [Astro Docs](https://astronvim.com/)
- [Great YouTube walkthrough of how to configure astrovim](https://www.youtube.com/watch?v=GEHPiZ10gOk)
- [LazyGit Tutorial](https://www.youtube.com/watch?v=CPLdltN7wgE)

# Kickstart Neovim Modular
This is a copy of [dam9000/kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim). Check the repository for full instructions. This repository only shows very minimal instructions.

## Windows
If you're using `cmd.exe`

```
git clone https://github.com/ChuzaWick420/kickstart.nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/ChuzaWick420/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```
After installation, launch `nvim` to let it do the configuration.

```
nvim
```

## My Personalized changes
> [!WARNING]
> I recently updated to version `0.11.3` and some things have been deprecated. 

> [!WARNING]
> [`lua/lsp/clangd_extension.lua`](https://github.com/ChuzaWick420/kickstart.nvim/blob/master/lua/lsp/clangd_extension.lua) assumes a system environment variable `INCLUDE_DIRECTORIES` containing paths for include headers.
> e.g. 
> ```
> INCLUDE_DIRECTORIES = "
>   P:\CLI_Tools\MSYS2\ucrt64\include;
>   P:\CLI_Tools\MSYS2\ucrt64\include\c++\15.2.0;
> "
> ```

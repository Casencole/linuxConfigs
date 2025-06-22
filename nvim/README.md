**This repo is supposed to used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter [https://github.com/LazyVim/starter] as nvchad's starter was inspired by 
   Lazyvim's . It made a lot of things easier!


- - - - - - - - - - - - - - -  
##      To add LSP          ##
Using lazydev [https://github.com/folke/lazydev.nvim] to let lsp see outside of a 
given file (I think honestly from reading and watching that is what I took from it)
1. Open Mason (:Mason) and download language server
2. Open `~/.config/nviml/lua/plugins/init.lua` and add the following line
        'require("lspconfig").LSP_EXECUTABLE_NAME.setup {}'


##      Transparency        ##
Transparency is enabled in chad `~/.config/nvim/lua/chadrc.lua` 
**TODO The % of transparency is set within alacrity I would assume**
 

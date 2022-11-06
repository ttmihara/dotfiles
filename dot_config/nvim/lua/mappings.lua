local M = {}
local default_opts = { noremap = true, silent = true }

M.set = function(map_table)
  for mode, maps in pairs(map_table) do
    if type(maps) == "table" then
      for key, val in pairs(maps) do
        local cmd = nil
        local opts = nil
        if type(val) == "table" then
          cmd = val[1]
          opts = vim.tbl_deep_extend("force", default_opts, val)
          opts[1] = nil
        end
        vim.keymap.set(mode, key, cmd, opts)
      end
    end
  end
end

-- General key mappings
M.general = {
  c = {
    ["jk"] = { "<C-c>", desc = "Escape" },
    ["kj"] = { "<C-c>", desc = "Escape" },
  },
  i = {
    ["jk"] = { "<C-c>", desc = "Escape" },
    ["kj"] = { "<C-c>", desc = "Escape" },
    ["<C-d>"] = { "<Del>", desc = "Delete" },
    ["<C-h>"] = { "<BS>", desc = "BackSpace" },
    ["<C-j>"] = { "<Down>", desc = "Down" },
    ["<C-k>"] = { "<Up>", desc = "Up" },
    ["<C-l>"] = { "<Right>", desc = "Right" },
    ["<A-j>"] = { "<Esc>:move .+1<CR>==gi", desc = "Up current line" },
    ["<A-k>"] = { "<Esc>:move .-2<CR>==gi", desc = "Down current line" },
  },
  n = {
    ["j"] = { "gj", desc = "Down" },
    ["k"] = { "gk", desc = "Up" },
    ["<C-h>"] = { "<C-w>h", desc = "Left window" },
    ["<C-j>"] = { "<C-w>j", desc = "Down window" },
    ["<C-k>"] = { "<C-w>k", desc = "Up window" },
    ["<C-l>"] = { "<C-w>l", desc = "Right window" },
    ["<Leader>h"] = { "<Cmd>nohlsearch<CR>", desc = "No highlight" },
    ["<Leader>w"] = { "<Cmd>set wrap!<CR>", desc = "Wrap toggle" },
    ["<C-Up>"] = { "<Cmd>resize +2<CR>", desc = "Increase height" },
    ["<C-Down>"] = { "<Cmd>resize -2<CR>", desc = "Decrease height" },
    ["<C-Right>"] = { "<Cmd>vertical resize +2<CR>", desc = "Increase width" },
    ["<C-Left>"] = { "<Cmd>vertical resize -2<CR>", desc = "Decrease width" },

    ["<A-j>"] = { "<Esc>:move .+1<CR>==", desc = "Up current line" },
    ["<A-k>"] = { "<Esc>:move .-2<CR>==", desc = "Down current line" },
  },
  t = {
    ["jk"] = { "<C-\\><C-n>", desc = "Escape" },
    ["kj"] = { "<C-\\><C-n>", desc = "Escape" },

  },
  v = {
    ["p"] = { "p:let @+=@0<CR>", desc = "Keep text" },
    ["<"] = { "<gv", desc = "Keep visual mode" },
    [">"] = { ">gv", desc = "Keep visual mode" },
  },
  x = {},
}

-- Plugin key mappings
M.plugins = {
  -- wbthomason/packer.nvim
  ["packer"] = {
    n = {
      ["<Leader>pc"] = { "<Cmd>PackerCompile<CR>", desc = "Packer Compile" },
      ["<Leader>pi"] = { "<Cmd>PackerInstall<CR>", desc = "Packer Install" },
      ["<Leader>ps"] = { "<Cmd>PackerStatus<CR>", desc = "Packer Status" },
      ["<Leader>pS"] = { "<Cmd>PackerSync<CR>", desc = "Packer Sync" },
      ["<Leader>pu"] = { "<Cmd>PackerUpdate<CR>", desc = "Packer Update" },
    },
  },

  -- kyazdani42/nvim-tree.lua
  ["nvim-tree"] = {
    n = {
      ["<Leader>e"] = { "<Cmd>NvimTreeToggle<CR>", desc = "NvimTreeToggle" },
      ["<Leader>E"] = { "<Cmd>NvimTreeFindFile<CR>", desc = "NvimTreeFindFile" }
    },
    get_list = function()
      local list = {
        { key = "?", action = "toggle_help" },
        { key = "e", action = "edit" },
        { key = "h", action = "close_node" },
        { key = "l", action = "edit" },
        { key = "n", action = "create" },
        { key = "s", action = "split" },
        { key = "v", action = "vsplit" },
        { key = "x", action = "remove" },
      }
      return list
    end,
  },

  -- simrat39/symbols-outline
  ["symbols-outline"] = {
    n = {
      ["<Leader>o"] = { "<Cmd>SymbolsOutline<CR>", silent = false }
    }
  },

  -- romgrk/barbar.nvim
  ["barbar"] = {
    n = {
      -- Move to previous/next
      ["<A-,>"] = { "<Cmd>BufferPrevious<CR>" },
      ["<A-.>"] = { "<Cmd>BufferNext<CR>" },
      -- Re-order to previous/next
      ["<A-m>"] = { "<Cmd>BufferMovePrevious<CR>" },
      ["<A-/>"] = { "<Cmd>BufferMoveNext<CR>" },
      -- Goto buffer in position...
      ["<A-1>"] = { "<Cmd>BufferGoto 1<CR>" },
      ["<A-2>"] = { "<Cmd>BufferGoto 2<CR>" },
      ["<A-3>"] = { "<Cmd>BufferGoto 3<CR>" },
      ["<A-4>"] = { "<Cmd>BufferGoto 4<CR>" },
      ["<A-5>"] = { "<Cmd>BufferGoto 5<CR>" },
      ["<A-6>"] = { "<Cmd>BufferGoto 6<CR>" },
      ["<A-7>"] = { "<Cmd>BufferGoto 7<CR>" },
      ["<A-8>"] = { "<Cmd>BufferGoto 8<CR>" },
      ["<A-9>"] = { "<Cmd>BufferGoto 9<CR>" },
      ["<A-0>"] = { "<Cmd>BufferLast<CR>" },
      -- Close buffer
      ["<A-c>"] = { "<Cmd>BufferClose<CR>" },
      ["<C-A-c>"] = { "<Cmd>BufferCloseAllButCurrent<CR>" },
      -- Magic buffer-picking mode
      ["<A-p>"] = { "<Cmd>BufferPic<CR>" },
      ["<C-A-p>"] = { "<Cmd>BufferPin<CR>" },
    },
  },

  -- nvim-telescope/telescope.nvim
  ["telescope"] = {
    n = {
      ["<Leader>sf"] = { "<Cmd>Telescope find_files<CR>" },
      ["<Leader>sg"] = { "<Cmd>Telescope live_grep<CR>" },
      ["<Leader>sb"] = { "<Cmd>Telescope buffers<CR>" },
      ["<Leader>sh"] = { "<Cmd>Telescope help_tags<CR>" },
      ["<Leader>sk"] = { "<Cmd>Telescope keymaps<CR>" },
      ["<Leader>so"] = { "<Cmd>Telescope oldfiles<CR>" },
      ["<Leader>sr"] = { "<Cmd>Telescope registers<CR>" },
      ["<Leader>sc"] = { "<Cmd>Telescope command_history<CR>" },
      ["<Leader>sC"] = { "<Cmd>Telescope commands<CR>" },
    },
  },

  -- numToStr/Comment
  ["Comment"] = {
    n = {
      ["<Leader>/"] = { "<Cmd>lua require('Comment.api').toggle.linewise.current()<CR>", desc = "Comment toggle" },
    },
    v = {
      ["<Leader>/"] = { "<Esc><Cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
        desc = "Comment toggle" },
    }
  },

  -- folke/trouble.nvim
  ["trouble"] = {
    n = {
      ["<Leader>t"] = { "<Cmd>TroubleToggle<CR>" }
    }
  },

  -- neovim/nvim-lspconfig
  ["lspconfig"] = {
    n = {
      ["ge"] = { "<Cmd>lua vim.diagnostic.open_float()<CR>", desc = "floating diagnostic" },
      ["[d"] = { "<Cmd>lua vim.diagnostic.goto_prev()<CR>", desc = "Goto prev" },
      ["]d"] = { "<Cmd>lua vim.diagnostic.goto_next()<CR>", desc = "Goto next" },
      ["<Leader>q"] = { "<Cmd>lua vim.diagnostic.set_loclist()<CR>", desc = "setloclist" },
      ["K"] = { "<Cmd>lua vim.lsp.buf.hover()<CR>", desc = "lsp hover" },
      ["gd"] = { "<Cmd>lua vim.lsp.buf.definition()<CR>", desc = "lsp definition" },
      ["gD"] = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", desc = "lsp declaration" },
      ["gi"] = { "<Cmd>lua vim.lsp.buf.implementation()<CR>", desc = "lsp implementation" },
      ["gr"] = { "<Cmd>lua vim.lsp.buf.references()<CR>", desc = "lsp references" },
      ["gk"] = { "<Cmd>lua vim.lsp.buf.signature_help()<CR>", desc = "lsp signature_help" },
      ["<Leader>a"] = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", desc = "lsp code_action" },
      ["<Leader>m"] = { "<Cmd>lua vim.lsp.buf.format{sync=true}<CR>", desc = "lsp format", silent=false },
      ["<Leader>D"] = { "<Cmd>lua vim.lsp.buf.type_definition()<CR>", desc = "lsp type_definition" },
      ["<Leader>rn"] = { "<Cmd>lua vim.lsp.buf.rename()<CR>", desc = "lsp rename" },
      ["<Leader>wa"] = { "<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", desc = "add workspace folder" },
      ["<Leader>wr"] = { "<Cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", desc = "remove workspace folder" },
      ["<Leader>wl"] = { "<Cmd>lua vim.pretty_print(vim.lsp.buf.list_workspace_folders())<CR>",
        desc = "list workspace folders" },
    },
  },
  -- hrsh7th/vim-eft
  ["vim-eft"] = {
    setup = function()
      vim.cmd [[
        nmap ; <Plug>(eft-repeat)
        xmap ; <Plug>(eft-repeat)

        nmap f <Plug>(eft-f)
        xmap f <Plug>(eft-f)
        omap f <Plug>(eft-f)
        nmap F <Plug>(eft-F)
        xmap F <Plug>(eft-F)
        omap F <Plug>(eft-F)

        nmap t <Plug>(eft-t)
        xmap t <Plug>(eft-t)
        omap t <Plug>(eft-t)
        nmap T <Plug>(eft-T)
        xmap T <Plug>(eft-T)
        omap T <Plug>(eft-T)
      ]]
    end,
  },
  -- tpote/vim-fugitive
  ["vim-fugitive"] = {
    n = {
      ["<Leader>g"] = {"<Cmd>Git<CR>",desc = "Git"}
    }
  }

}

return M

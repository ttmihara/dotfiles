local M = {}
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- General key mappings
M.general = {
  setup = function()
    -- command mode
    map("c", "jk", "<C-c>", opts)
    map("c", "kj", "<C-c>", opts)

    -- insert mode
    map("i", "jk", "<ESC>", opts)
    map("i", "kj", "<ESC>", opts)
    map("i", "<C-d>", "<Del>", opts)
    map("i", "<C-h>", "<BS>", opts)
    map("i", "<C-j>", "<Down>", opts)
    map("i", "<C-k>", "<Up>", opts)
    map("i", "<C-l>", "<Right>", opts)
    map("i", "<A-j>", "<Esc>:move .+1<CR>==gi", opts) -- Move current line / block with Alt-j
    map("i", "<A-k>", "<Esc>:move .-2<CR>==gi", opts) -- Move current line / block with Alt-k

    -- normal mode
    map("n", "j", "gj", opts)
    map("n", "k", "gk", opts)
    map("n", "<C-h>", "<C-w>h", opts)
    map("n", "<C-j>", "<C-w>j", opts)
    map("n", "<C-k>", "<C-w>k", opts)
    map("n", "<C-l>", "<C-w>l", opts)
    map("n", "<Leader>h", "<Cmd>nohlsearch <CR>", opts)
    map("n", "<Leader>w", "<Cmd>set wrap!<CR>", opts)
    map("n", "<C-Up>", ":resize +2<CR>", opts)
    map("n", "<C-Down>", ":resize -2<CR>", opts)
    map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
    map("n", "<C-Right>", ":vertical resize +2<CR>", opts)
    map("n", "<A-j>", "<Esc>:move .+1<CR>==", opts) -- Move current line / block with Alt-j
    map("n", "<A-k>", "<Esc>:move .-2<CR>==", opts) -- Move current line / block with Alt-k

    -- terminal mode
    map("t", "jk", "<C-\\><C-n>", opts)
    map("t", "kj", "<C-\\><C-n>", opts)

    -- visual mode
    map("v", "p", "p:let @+=@0<CR>", opts) -- Don't copy the replaced text after pasting in visual mode
    map("v", "<", "<gv", opts)
    map("v", ">", ">gv", opts)
  end,
}
M.general.setup()

-- Plugin key mappings (meant to be called in packer.startup)
M.plugins = {
  -- wbthomason/packer.nvim
  ["packer"] = {
    setup = function()
      map("n", "<Leader>pc", "<Cmd>PackerCompile<CR>", opts)
      map("n", "<Leader>ps", "<Cmd>PackerSync<CR>", opts)
      map("n", "<Leader>pS", "<Cmd>PackerStatus<CR>", opts)
      map("n", "<Leader>pu", "<Cmd>PackerUpdate<CR>", opts)
    end,
  },

  -- kyazdani42/nvim-tree.lua
  ["nvim-tree"] = {
    setup = function()
      map("n", "<Leader>e", "<Cmd>NvimTreeToggle<CR>", opts)
      map("n", "<Leader>E", "<Cmd>NvimTreeFindFile<CR>", opts)
    end,
    list = {
      { key = "?", action = "toggle_help" },
      { key = "e", action = "edit" },
      { key = "h", action = "close_node" },
      { key = "l", action = "edit" },
      { key = "n", action = "create" },
      { key = "s", action = "split" },
      { key = "v", action = "vsplit" },
      { key = "x", action = "remove" },
    },
  },

  -- simrat39/symbols-outline
  ["symbols-outline"] = {
    setup = function()
      map("n", "<Leader>o", ":SymbolsOutline<CR>", { noremap = true, silent = false })
    end,
  },

  -- romgrk/barbar.nvim
  ["barbar"] = {
    setup = function()
      -- Move to previous/next
      map("n", "<A-,>", ":BufferPrevious<CR>", opts)
      map("n", "<A-.>", ":BufferNext<CR>", opts)
      -- Re-order to previous/next
      map("n", "<A-m>", ":BufferMovePrevious<CR>", opts)
      map("n", "<A-/>", ":BufferMoveNext<CR>", opts)
      -- Goto buffer in position...
      map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
      map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
      map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
      map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
      map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
      map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
      map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
      map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
      map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
      map("n", "<A-0>", ":BufferLast<CR>", opts)
      -- Close buffer
      map("n", "<A-c>", ":BufferClose<CR>", opts)
      -- Wipeout buffer
      --                 :BufferWipeout<CR>
      -- Close commands
      --                 :BufferCloseAllButCurrent<CR>
      --                 :BufferCloseBuffersLeft<CR>
      --                 :BufferCloseBuffersRight<CR>
      -- Magic buffer-picking mode
      map("n", "<A-p>", ":BufferPick<CR>", opts)
      map("n", "<C-A-p>", ":BufferPin<CR>", opts)
      -- Sort automatically by...
      map("n", "<Leader>bb", ":BufferOrderByBufferNumber<CR>", opts)
      map("n", "<Leader>bd", ":BufferOrderByDirectory<CR>", opts)
      map("n", "<Leader>bl", ":BufferOrderByLanguage<CR>", opts)
      map("n", "<Leader>bw", ":BufferOrderByWindowNumber<CR>", opts)

      -- Other:
      -- :BarbarEnable - enables barbar (enabled by default)
      -- :BarbarDisable - very bad command, should never be used
    end,
  },

  -- nvim-telescope/telescope.nvim
  ["telescope"] = {
    setup = function()
      map("n", "<Leader>f", "<Cmd>Telescope find_files<CR>", opts)
      map("n", "<Leader>sf", "<Cmd>Telescope find_files<CR>", opts)
      map("n", "<Leader>sg", "<Cmd>Telescope live_grep<CR>", opts)
      map("n", "<Leader>sb", "<Cmd>Telescope buffers<CR>", opts)
      map("n", "<Leader>sh", "<Cmd>Telescope help_tags<CR>", opts)
    end,
  },

  -- terrortylor/nvim-comment
  ["nvim-comment"] = {
    setup = function()
      map("n", "<Leader>/", "<Cmd>CommentToggle<CR>", opts)
      map("v", "<Leader>/", ":CommentToggle<CR>", opts)
    end,
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

  -- neovim/nvim-lspconfig
  ["lspconfig"] = {
    -- Mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    setup = function()
      map("n", "ge", "<Cmd>lua vim.diagnostic.open_float()<CR>", opts)
      map("n", "[d", "<Cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
      map("n", "]d", "<Cmd>lua vim.diagnostic.goto_next()<CR>", opts)
      map("n", "<Leader>q", "<Cmd>lua vim.diagnostic.set_loclist()<CR>", opts)
    end,
    -- Use an on_attach function to only map the following keys
    -- after the language server attaches to the current buffer
    on_attach = function(client, bufnr)
      local create_autocmd = vim.api.nvim_create_autocmd
      local create_augroup = vim.api.nvim_create_augroup
      local clear_autocmds = vim.api.nvim_clear_autocmds
      if client.server_capabilities.document_highlight then
        create_augroup("LspDocumentHighlight", { clear = false })
        clear_autocmds({ buffer = bufnr, group = "LspDocumentHighlight" })
        create_autocmd({ "CursorHold", "CursorHoldI" }, {
          group = "LspDocumentHighlight",
          buffer = bufnr,
          callback = vim.lsp.buf.document_highlight,
        })
        create_autocmd({ "CursorMoved" }, {
          group = "LspDocumentHighlight",
          buffer = bufnr,
          callback = vim.lsp.buf.clear_references,
        })
      end

      local function buf_map(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
      end

      local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
      end

      -- Enable completion triggered by <C-X><C-O>
      buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
      buf_map("i", "<C-O>", "<C-X><C-O>", opts)

      -- See `:help vim.lsp.*` for documentation on any of the below functions
      buf_map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
      buf_map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
      buf_map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
      buf_map("n", "gi", "<Cmd>lua vim.lsp.buf.implementation()<CR>", opts)
      buf_map("n", "gr", "<Cmd>lua vim.lsp.buf.references()<CR>", opts)
      buf_map("n", "gk", "<Cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
      buf_map("n", "<Leader>a", "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
      buf_map("n", "<Leader>m", "<Cmd>lua vim.lsp.buf.format{async = true}<CR>", opts)
      buf_map("n", "<Leader>D", "<Cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
      buf_map("n", "<Leader>ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
      buf_map("n", "<Leader>rn", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
      buf_map("n", "<Leader>wa", "<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
      buf_map("n", "<Leader>wr", "<Cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
      buf_map("n", "<Leader>wl", "<Cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    end,
  },

  -- folke/trouble.nvim
  ["trouble"] = {
    setup = function()
      map("n", "<Leader>t", "<Cmd>TroubleToggle<CR>", opts)
    end,
  },
}

return M

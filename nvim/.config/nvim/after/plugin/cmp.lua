



local lspkind = require "lspkind"
lspkind.init()

local cmp = require "cmp"

cmp.setup {
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<c-y>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ["<c-q>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },

    ["<c-space>"] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Insert,
        select = true
    }),

    -- If you want tab completion :'(
    --  First you have to just promise to read `:help ins-completion`.
    --
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },

  -- Youtube:
  --    the order of your sources matter (by default). That gives them priority
  --    you can configure:
  --        keyword_length
  --        priority
  --        max_item_count
  --        (more?)
  sources = {
    { name = "nvim_lua" },
    { name = "zsh" },
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "luasnip" },
    { name = "buffer", keyword_length = 3 },
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },

  formatting = {
    -- Youtube: How to set up nice formatting for your sources.
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        ultisnips = "[UltiSnips]",
        nvim_lua = "[Lua]",
        cmp_tabnine = "[TabNine]",
        look = "[Look]",
        path = "[Path]",
        spell = "[Spell]",
        calc = "[Calc]",
        emoji = "[Emoji]"
      },
    },
  },
  experimental = {
    -- I like the new menu better! Nice work hrsh7th
    native_menu = false,

    -- Let's play with this for a day or two
    ghost_text = true,
  },
}
-- local Group = require("colorbuddy.group").Group
-- local g = require("colorbuddy.group").groups
-- local s = require("colorbuddy.style").styles

-- Group.new("CmpItemAbbr", g.Comment)
-- Group.new("CmpItemAbbrDeprecated", g.Error)
-- Group.new("CmpItemAbbrMatchFuzzy", g.CmpItemAbbr.fg:dark(), nil, s.italic)
-- Group.new("CmpItemKind", g.Special)
-- Group.new("CmpItemMenu", g.NonText)

-- Setup nvim-cmp.
  -- local cmp = require'cmp'

  -- cmp.setup({
  --   snippet = {
  --     expand = function(args)
  --       vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
  --       -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
  --       -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
  --       -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
  --     end,
  --   },
  --   mapping = {
  --     ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
  --     ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  --     ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
  --     ['<C-y>'] = cmp.config.disable, -- If you want to remove the default `<C-y>` mapping, You can specify `cmp.config.disable` value.
  --     ['<C-e>'] = cmp.mapping({
  --       i = cmp.mapping.abort(),
  --       c = cmp.mapping.close(),
  --     }),
  --     ['<CR>'] = cmp.mapping.confirm({ select = true }),
  --   },
  --   sources = cmp.config.sources({
  --     { name = 'nvim_lsp' },
  --     { name = 'vsnip' }, -- For vsnip users.
  --     -- { name = 'luasnip' }, -- For luasnip users.
  --     -- { name = 'ultisnips' }, -- For ultisnips users.
  --     -- { name = 'snippy' }, -- For snippy users.
  --   }, {
  --     { name = 'buffer' },
  --   })
  -- })

  -- -- Use buffer source for `/`.
  -- cmp.setup.cmdline('/', {
  --   sources = {
  --     { name = 'buffer' }
  --   }
  -- })

  -- -- Use cmdline & path source for ':'.
  -- cmp.setup.cmdline(':', {
  --   sources = cmp.config.sources({
  --     { name = 'path' }
  --   }, {
  --     { name = 'cmdline' }
  --   })
  -- })

  -- Setup lspconfig.
  -- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- require('lspconfig')[%YOUR_LSP_SERVER%].setup {
  --   capabilities = capabilities
  -- }
  --
  --









-- local present, cmp = pcall(require, "cmp")

-- if not present then
--    return
-- end

-- vim.opt.completeopt = "menuone,noselect"

-- cmp.setup({
--   formatting = {
--         format = function(entry, vim_item)
--             -- fancy icons and a name of kind
--             vim_item.kind = require("lspkind").presets.default[vim_item.kind] ..
--                                 " " .. vim_item.kind
--             -- set a name for each source
--             vim_item.menu = ({
--                 buffer = "[Buffer]",
--                 nvim_lsp = "[LSP]",
--                 ultisnips = "[UltiSnips]",
--                 nvim_lua = "[Lua]",
--                 cmp_tabnine = "[TabNine]",
--                 look = "[Look]",
--                 path = "[Path]",
--                 spell = "[Spell]",
--                 calc = "[Calc]",
--                 emoji = "[Emoji]"
--             })[entry.source.name]
--             return vim_item
--         end
--     },
--     mapping = {
--         ['<C-p>'] = cmp.mapping.select_prev_item(),
--         ['<C-n>'] = cmp.mapping.select_next_item(),
--         ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-f>'] = cmp.mapping.scroll_docs(4),
--         ['<C-Space>'] = cmp.mapping.complete(),
--         ['<C-e>'] = cmp.mapping.close(),
--         ['<CR>'] = cmp.mapping.confirm({
--             behavior = cmp.ConfirmBehavior.Insert,
--             select = true
--         }),
--         -- ["<Tab>"] = cmp.mapping(function(fallback)
--         --      if vim.fn.pumvisible() == 1 then
--         --         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-n>", true, true, true), "n")
--         --      elseif require("luasnip").expand_or_jumpable() then
--         --         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
--         --      else
--         --         fallback()
--         --      end
--         -- end, {"i", "s"}),
--         -- ["<S-Tab>"] = cmp.mapping(function(fallback)
--         --      if vim.fn.pumvisible() == 1 then
--         --         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-p>", true, true, true), "n")
--         --      elseif require("luasnip").jumpable(-1) then
--         --         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
--         --      else
--         --         fallback()
--         --      end
--         -- end, {"i", "s"})
--     ["<Tab>"] = function(fallback)
--          if vim.fn.pumvisible() == 1 then
--             vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-n>", true, true, true), "n")
--          elseif require("luasnip").expand_or_jumpable() then
--             vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
--          else
--             fallback()
--          end
--       end,
--       ["<S-Tab>"] = function(fallback)
--          if vim.fn.pumvisible() == 1 then
--             vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-p>", true, true, true), "n")
--          elseif require("luasnip").jumpable(-1) then
--             vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
--          else
--             fallback()
--          end
--       end,
--     },
--     snippet = {expand = function(args) vim.fn["UltiSnips#Anon"](args.body) end},
--     sources = {
--         {name = 'buffer'}, {name = 'nvim_lsp'}, {name = "ultisnips"},
--         {name = "nvim_lua"}, {name = "look"}, {name = "path"},
--         {name = 'cmp_tabnine'}, {name = "calc"}, {name = "spell"},
--         {name = "emoji"}
--     },
--     completion = {completeopt = 'menu,menuone,noinsert'}
-- })


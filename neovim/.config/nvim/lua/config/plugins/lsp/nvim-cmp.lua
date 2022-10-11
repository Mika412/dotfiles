local cmp = require('cmp')
cmp.setup()

-- local icons = {
--     Text = '',
--     Method = '',
--     Function = '',
--     Constructor = '',
--     Field = 'ﰠ',
--     Variable = '',
--     Class = 'ﴯ',
--     Interface = '',
--     Module = '',
--     Property = 'ﰠ',
--     Unit = '塞',
--     Value = '',
--     Enum = '',
--     Keyword = '',
--     Snippet = '',
--     Color = '',
--     File = '',
--     Reference = '',
--     Folder = '',
--     EnumMember = '',
--     Constant = '',
--     Struct = 'פּ',
--     Event = '',
--     Operator = '',
--     TypeParameter = '',
-- }

-- local aliases = {
--     nvim_lsp = 'lsp',
--     luasnip = 'snippet',
-- }

-- cmp.setup({
--     mapping = cmp.mapping.preset.insert({
--         ['<C-e>'] = cmp.config.disable,
--         ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-f>'] = cmp.mapping.scroll_docs(4),
--         ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--         ['<C-Space>'] = cmp.mapping.complete(),
--     }),
--     sources = cmp.config.sources({
--         { name = 'nvim_lsp', max_item_count = 10 },
--         { name = 'luasnip', max_item_count = 10 },
--         { name = 'path', max_item_count = 10 },
--         { name = 'buffer', max_item_count = 10 },
--     }),
--     snippet = {
--         expand = function(args)
--             require('luasnip').lsp_expand(args.body)
--         end,
--     },
--     formatting = {
--         format = function(entry, item)
--             -- Kind icons
--             item.kind = string.format('%s %s', icons[item.kind], item.kind)
--             -- Source
--             item.menu = string.format('[%s]', aliases[entry.source.name] or entry.source.name)
--             return item
--         end,
--     },
-- })


local cmp_present, cmp = pcall(require, 'cmp')
if not cmp_present then
    return
end

local icons = {
    Text = '',
    Method = '',
    Function = '',
    Constructor = '',
    Field = 'ﰠ',
    Variable = '',
    Class = 'ﴯ',
    Interface = '',
    Module = '',
    Property = 'ﰠ',
    Unit = '塞',
    Value = '',
    Enum = '',
    Keyword = '',
    Snippet = '',
    Color = '',
    File = '',
    Reference = '',
    Folder = '',
    EnumMember = '',
    Constant = '',
    Struct = 'פּ',
    Event = '',
    Operator = '',
    TypeParameter = '',
}

print("Im cmp")
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- ['<C-e>'] = cmp.mapping(cmp.config.disable, {"i", "c"}),
        -- ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
        -- ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<Right>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp', max_item_count = 10 },
        { name = 'path', max_item_count = 10 },
        { name = 'buffer', max_item_count = 10 },
    })
})

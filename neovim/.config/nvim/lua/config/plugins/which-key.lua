local wk = require("which-key")
-- wk.setup({})
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1
print("hello")
wk.register({
  ["<space>"] = {
    ["<space>"] = "Active Buffers",
    f = "+find",
  },
})


wk.register({
  ["<space>f"] = {
    name = "+file",
    c = "Git changes",
    f = "Search in files",
    h = "Open Help",
    e = "Toggle Trouble"
  },
})

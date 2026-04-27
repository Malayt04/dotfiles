-- Force Lua to find the plugin
local ap_path = vim.fn.stdpath("data") .. "/site/pack/core/opt/nvim-autopairs/lua/?.lua"
if not package.path:find(ap_path, 1, true) then
    package.path = package.path .. ";" .. ap_path
end

local status, autopairs = pcall(require, "nvim-autopairs")
if status then
  autopairs.setup({
    check_ts = true,
    ts_config = {
      lua = { "string" }, -- it will not add a pair on that treesitter node
      javascript = { "template_string" },
      java = false, -- don't check treesitter on java
    },
  })
end

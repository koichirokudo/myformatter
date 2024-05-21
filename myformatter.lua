-- formatter.lua
local M = {}
function M.format_text(lines)
    for i, line in ipairs(lines) do
        local formatted_line = line:gsub("([%a%d])([%z\128-\255])", "%1 %2")
        formatted_line = formatted_line:gsub("([%z\128-\255])([%a%d])", "%1 %2")
        lines[i] = formatted_line
    end
    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
end

function M.echo()
    print("Hello, world!")
end

return M
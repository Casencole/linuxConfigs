-- this is entirely copied and pasted from [https://github.com/NvChad/NvChad/discussions/2209]
-- I was trying to figure out a small step on how to do something and found the exact end goal
-- I wanted soooo....
local M = {}

local statusline = require "nvchad_ui.statusline.default"

-- add cursor column to theme's default text
M.cursor_position = function()
  local txt = statusline.cursor_position() -- " l% "
  local col = ":" .. "%c"
  local trail_i = txt:find "%s+$"
  return (trail_i and txt:sub(1, trail_i - 1) .. col .. txt:sub(trail_i)) or txt .. col
end

-- remove noisy prefix
M.LSP_status = function()
  local txt = statusline.LSP_status() -- "   LSP ~ ls_name "
  if txt then
    txt, _ = txt:gsub("LSP%s~%s", "")
    return txt
  end
end

return M

local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  print("Unable to load Comment")
  return
end

comment.setup({
  padding = false,
  opleader = { -- Visual Mode
    line = 'gc',
    block = 'gb',
  },
  mappings = {
    -- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
    basic = true,
    ---Extra mapping; `gco`, `gcO`, `gcA`
    extra = true,
  },
})

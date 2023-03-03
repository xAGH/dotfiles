-- Safely import
local tabby = vim.g.ensure_installed('tabby.tabline')
if not tabby then return end

vim.o.showtabline = 2

local theme = {
  fill = 'TabLineFill',
  head = 'TabLine',
  current_tab = 'TabLineSel',
  tab = 'TabLine',
  win = 'TabLine',
  tail = 'TabLine',
}

-- Set separators icons
local sep = {
    start = "",
    final = ""
}

tabby.set(function(line)
  return {
    {
      { '  ', hl = theme.head },
      line.sep(sep.start, theme.head, theme.fill),
    },
    line.tabs().foreach(function(tab)
      local hl = tab.is_current() and theme.current_tab or theme.tab
      return {
        line.sep(sep.start, hl, theme.fill),
        tab.is_current() and '' or '',
        tab.number(),
        tab.name(),
        tab.close_btn(''),
        line.sep(sep.final, hl, theme.fill),
        hl = hl,
        margin = ' ',
      }
    end),
    line.spacer(),
    line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
      return {
        line.sep(sep.start, theme.win, theme.fill),
        win.is_current() and '' or '',
        win.buf_name(),
        line.sep(sep.final, theme.win, theme.fill),
        hl = theme.win,
        margin = ' ',
      }
    end),
    {
      line.sep(sep.start, theme.tail, theme.fill),
      { '  ', hl = theme.tail },
    },
    hl = theme.fill,
  }
end)

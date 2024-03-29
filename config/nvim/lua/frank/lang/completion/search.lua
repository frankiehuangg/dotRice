local cmp = require 'cmp'
local u = require 'frank.utils'

-- UI
local cmdline_window = {
    completion = cmp.config.window.bordered {
        winhighlight = 'Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
        scrollbar = true,
        border = u.border_chars_outer_thin,
        col_offset = -1,
        side_padding = 0,
    },
}

-- Source
local search = {
    window = cmdline_window,
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources {
        { name = 'buffer' },
    },
}

cmp.setup.cmdline({ '/', '?' }, search)

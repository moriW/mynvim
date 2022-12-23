local default_header = {
    type = "text",
    val = {
        [[    ███╗░░░███╗░█████╗░██████╗░██╗  ░░░░░░  ░░░░░██╗░█████╗░███████╗    ]],
        [[    ████╗░████║██╔══██╗██╔══██╗██║  ░░░░░░  ░░░░░██║██╔══██╗██╔════╝    ]],
        [[    ██╔████╔██║██║░░██║██████╔╝██║  █████╗  ░░░░░██║███████║█████╗░░    ]],
        [[    ██║╚██╔╝██║██║░░██║██╔══██╗██║  ╚════╝  ██╗░░██║██╔══██║██╔══╝░░    ]],
        [[    ██║░╚═╝░██║╚█████╔╝██║░░██║██║  ░░░░░░  ╚█████╔╝██║░░██║███████╗    ]],
        [[    ╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝  ░░░░░░  ░╚════╝░╚═╝░░╚═╝╚══════╝    ]],
    },
    opts = {
        hl = "Type",
        position = "center",
        shrink_margin = false,
    },
}



local config = {
    layout = {
        { type = "padding", val = 20 },
        default_header,
    },
    opts = {
        position = "center",
        redraw_on_resize = false,
        setup = function()
            vim.api.nvim_create_autocmd('DirChanged', {
                pattern = '*',
                callback = function () require('alpha').redraw() end,
            })
        end,
    },
}

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end
alpha.setup(config)

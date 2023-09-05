return function()
    require('github-theme').setup({
        -- theme_style = 'dark',
        -- theme_style = 'dimmed',
        -- theme_style = 'dark_default',
        -- theme_style = 'dark_colorblind',
        theme_style = 'light',
        -- theme_style = 'light_default',
        -- theme_style = 'light_colorblind',
        dark_sidebar = false,
        hide_inactive_statusline = false,
        transparent = true,
        dev = true,
    })
end

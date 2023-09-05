local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

local config = {
    color_scheme = 'OneDark (base16)',
    default_prog = { os.getenv("LOCALAPPDATA") .. "\\Microsoft\\WindowsApps\\pwsh.exe" },
    -- disable_default_key_bindings = true,
    font_size = 11.0,
    use_ime = false,
    font = wezterm.font "Cascadia Code",
    window_decorations = "INTEGRATED_BUTTONS|RESIZE",
    -- hide_tab_bar_if_only_one_tab = true,
    integrated_title_buttons = { 'Close' }
}


config.keys = {
    {
        key = 'w',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    {
        key = "UpArrow",
        mods = "SHIFT|ALT",
        action = wezterm.action.ScrollByPage(-1)
    },
    {
        key = "DownArrow",
        mods = "SHIFT|ALT",
        action = wezterm.action.ScrollByPage(1)
    }
}

return config

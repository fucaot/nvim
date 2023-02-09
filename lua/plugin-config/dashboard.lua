-- local db = require("dashboard")





-- vim.g.dashboard_default_executive = "telescope"
-- 
-- -- vim.g.dashboard_custom_footer = { "https://github.com/nshen/learn-neovim-lua" }
-- vim.g.dashboard_custom_footer = { "https://github.com/RastW" }
-- 
-- vim.g.dashboard_custom_section = {
--   a = { description = { "  Projects              " }, command = "Telescope projects" },
--   b = { description = { "  Recently files        " }, command = "Telescope oldfiles" },
--   c = { description = { "  Edit keybindings      " }, command = "edit ~/.config/nvim/lua/keybindings.lua" },
--   d = { description = { "  Edit Projects         " }, command = "edit ~/.local/share/nvim/project_nvim/project_history", },
--   e = { description = { "  Quit                  " }, command = "q", },
--   -- e = { description = { "  Edit .bashrc          " }, command = "edit ~/.bashrc" },
--   -- f = { description = { "  Edit init.lua         " }, command = "edit ~/.config/nvim/init.lua" },
--   g = { description = {'  Find file          '}, command = 'Telescope find_files'},
--   h = { description = {'  Find text          '}, command = 'Telescope live_grep'},
-- }
-- 
-- -- vim.g.dashboard_custom_header = {
-- --    [[ ██████╗  █████╗ ███████╗████████╗ ]],
-- --    [[ ██╔══██╗██╔══██╗██╔════╝╚══██╔══╝ ]],
-- --    [[ ██████╔╝███████║███████╗   ██║    ]],
-- --    [[ ██╔══██╗██╔══██║╚════██║   ██║    ]],
-- --    [[ ██║  ██║██║  ██║███████║   ██║    ]],
-- --    [[ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝    ]],
-- --    [[       [ version : 1.0.0 ]         ]],
-- -- }
-- 
-- dashboard_custom_header = {
--  [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
--  [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
--  [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
--  [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
--  [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
--  [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
--  [[                                                   ]],
--  [[                [ version : 1.0.0 ]                ]],
-- }



-- function config.dashboard()
--   local home = os.getenv('HOME')
--   vim.g.dashboard_footer_icon = '🐬 '
--   vim.g.dashboard_preview_command = 'cat'
--   vim.g.dashboard_preview_pipeline = 'lolcat -F 0.3'
--   vim.g.dashboard_preview_file = home .. '/.config/nvim/static/neovim.cat'
--   vim.g.dashboard_preview_file_height = 12
--   vim.g.dashboard_preview_file_width = 80
--   vim.g.dashboard_default_executive = 'telescope'
--   vim.g.dashboard_custom_section = {
--     last_session = {
--       description = {'  Recently laset session                  SPC s l'},
--       command =  'SessionLoad'},
--     find_history = {
--       description = {'  Recently opened files                   SPC f h'},
--       command =  'DashboardFindHistory'},
--     find_file  = {
--       description = {'  Find  File                              SPC f f'},
--       command = 'Telescope find_files find_command=rg,--hidden,--files'},
--     new_file = {
--      description = {'  File Browser                            SPC f b'},
--      command =  'Telescope file_browser'},
--     find_word = {
--      description = {'  Find  word                              SPC f w'},
--      command = 'DashboardFindWord'},
--     find_dotfiles = {
--      description = {'  Open Personal dotfiles                  SPC f d'},
--      command = 'Telescope dotfiles path=' .. home ..'/.dotfiles'},
--     go_source = {
--      description = {'  Find Go Source Code                     SPC f s'},
--      command = 'Telescope gosource'},
--   }
-- end

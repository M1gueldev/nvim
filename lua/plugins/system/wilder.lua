 local conf = function()
     local wilder = require('wilder')
     wilder.setup({modes = {':', '/', '?'}})

     wilder.set_option('pipeline', {
         wilder.branch(
                 wilder.python_file_finder_pipeline({
                     file_command = function(ctx, arg)
                         if string.find(arg, '.') ~= nil then
                             return {'fdfind', '-tf', '-H'}
                         else
                             return {'fdfind', '-tf'}
                         end
                     end,
                     dir_command = {'fd', '-td'},
                     filters = {'cpsm_filter'},
                 }),
                 wilder.substitute_pipeline({
                     pipeline = wilder.python_search_pipeline({
                         skip_cmdtype_check = 1,
                         pattern = wilder.python_fuzzy_pattern({
                             start_at_boundary = 0,
                         }),
                     }),
                 }),
                 wilder.cmdline_pipeline({
                     fuzzy = 2,
                     --fuzzy_filter = wilder.lua_fzy_filter(),
                 }),
                 {
                     wilder.check(function(ctx, x) return x == '' end),
                     wilder.history(),
                 },
                 wilder.python_search_pipeline({
                     pattern = wilder.python_fuzzy_pattern({
                         start_at_boundary = 0,
                     }),
                 })
         ),
     })

     local highlighters = {
         wilder.pcre2_highlighter(),
         wilder.lua_fzy_highlighter(),
     }

     local popupmenu_renderer = wilder.popupmenu_renderer(
             wilder.popupmenu_border_theme({
                 border = 'rounded',
                 empty_message = wilder.popupmenu_empty_message_with_spinner(),
                 highlighter = highlighters,
                 left = {
                     ' ',
                     wilder.popupmenu_devicons(),
                     wilder.popupmenu_buffer_flags({
                         flags = ' a + ',
                         icons = {['+'] = '', a = '', h = ''},
                     }),
                 },
                 right = {
                     ' ',
                     wilder.popupmenu_scrollbar(),
                 },
             })
     )

     local wildmenu_renderer = wilder.wildmenu_renderer({
         highlighter = highlighters,
         separator = ' · ',
         left = {' ', wilder.wildmenu_spinner(), ' '},
         right = {' ', wilder.wildmenu_index()},
     })

     wilder.set_option('renderer', wilder.renderer_mux({
         [':'] = popupmenu_renderer,
         ['/'] = wildmenu_renderer,
         substitute = wildmenu_renderer,
     }))
     require'nvim-web-devicons'.setup {
         -- your personnal icons can go here (to override)
         -- you can specify color or cterm_color instead of specifying both of them
         -- DevIcon will be appended to `name`
         override = {
             zsh = {
                 icon = "",
                 color = "#428850",
                 cterm_color = "65",
                 name = "Zsh"
             }
         };
         -- globally enable default icons (default to false)
         -- will get overriden by `get_icons` option
         default = true;
     }
 end
 local req =  {
     'nixprime/cpsm',
     'romgrk/fzy-lua-native',
     'mfussenegger/nvim-fzy',
     'kyazdani42/nvim-web-devicons',
 }
return {
     'gelguy/wilder.nvim',
     config = conf,
     requires = req
 }
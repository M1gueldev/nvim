local conf = {
    path_display = {'shorten'},
    previewer = true,
    prompt_title = 'Session Manager',
}
return {
    'rmagatti/session-lens',
    requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    config = function()
        require('session-lens').setup(conf)
    end
}
function lead(chars)
    if not (type(chars) == 'string') then
        chars = nil
    end
    chars = chars or ''
    return "<leader>" .. chars
    end
return function()
    local m = require'mapx'.setup{ global = 'force', whichkey = true }
    --TODO: Crear los mappings en LUA
    -- Group Names Template
    -- m.nname(lead(''), '')
    m.nname(lead(lead()), 'More Option')
    m.nname(lead('o'), 'Open/Telescope')
    m.nname(lead('l'), 'LSP')
    m.nname(lead([[\]]), "IDE Settings")

    nnoremap(lead([[\R]]), ':Reload<CR>', "Reload")
    nnoremap(lead([[\r]]), ':Restart<CR>', "Restart")
    nnoremap(lead([[\r]]), ':Restart<CR>', "Restart")
    m.nname(lead([[\p]]), "Packer")
    nnoremap(lead([[\pi]]), ':PackerInstall<CR>', "Install")
    nnoremap(lead([[\pc]]), ':PackerClean<CR>', "Clean")
    nnoremap(lead([[\pC]]), ':PackerCompile<CR>', "Compile")
    nnoremap(lead([[\pl]]), ':PackerLoad<CR>', "Load")
    nnoremap(lead([[\pp]]), ':PackerProfile<CR>', "Profile")
    nnoremap(lead([[\pS]]), ':PackerSnapshot<CR>', "Snapshot")
    nnoremap(lead([[\pd]]), ':PackerSnapshotDelete<CR>', "Delete Snapshot")
    nnoremap(lead([[\pr]]), ':PackerSnapshotRollback<CR>', "Rollback Snapshot")
    nnoremap(lead([[\pt]]), ':PackerStatus<CR>', "Status")
    nnoremap(lead([[\ps]]), ':PackerSync<CR>', "Sync")
    nnoremap(lead([[\pu]]), ':PackerUpdate<CR>', "Update")


    m.nname(lead('g'), 'Go to')
    nnoremap(lead([[gg]]), [[:OpenBrowser http://google.com/]], "Open Google")
    nnoremap(lead([[gi]]), [[<Plug>(openbrowser-smart-search)]], "Searh/Open Internet")
    vnoremap([[gi]], [[<Plug>(openbrowser-smart-search)]], "Searh/Open Internet")

    --Neotree
    nnoremap(lead('e'), ":Neotree focus<CR>", "Focus File Tree")

end
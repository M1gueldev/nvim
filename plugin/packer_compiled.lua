-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/miguel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/miguel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/miguel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/miguel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/miguel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\0¿\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\0¿\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim",
    url = "https://github.com/sudormrfbin/cheatsheet.nvim"
  },
  ["cinnamon.nvim"] = {
    config = { "\27LJ\2\n⁄\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\n\16hide_cursor\1\18always_scroll\1\17scroll_limit\3ñ\1\22horizontal_scroll\2\rcentered\2\18default_delay\3\a\21override_keymaps\1\21extended_keymaps\1\18extra_keymaps\1\20default_keymaps\2\nsetup\rcinnamon\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/cinnamon.nvim",
    url = "https://github.com/declancm/cinnamon.nvim"
  },
  ["coq.artifacts"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/coq.artifacts",
    url = "https://github.com/ms-jpq/coq.artifacts"
  },
  ["coq.thirdparty"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/coq.thirdparty",
    url = "https://github.com/ms-jpq/coq.thirdparty"
  },
  coq_nvim = {
    config = { "\27LJ\2\n„\2\0\0\5\0\f\0\0246\0\0\0'\2\1\0B\0\2\0024\2\6\0005\3\2\0005\4\3\0=\4\4\0035\4\5\0=\4\6\3>\3\1\0025\3\a\0>\3\2\0025\3\b\0>\3\3\0025\3\t\0>\3\4\0025\3\n\0>\3\5\2B\0\2\0016\0\0\0'\2\v\0B\0\2\2B\0\1\1K\0\1\0\tlang\1\0\2\bsrc\forgmode\15short_name\bORG\1\0\3\bsrc\abc\14precision\3\6\15short_name\tMATH\1\0\2\bsrc\vvimtex\15short_name\tvTEX\1\0\3\bsrc\fnvimlua\14conf_only\2\15short_name\tnLUA\vunsafe\1\4\0\0\arm\rpoweroff\amv\nshell\1\0\2\6p\tperl\6n\tnode\1\0\4\ash\bzsh\bsrc\trepl\rdeadline\3Ù\3\14max_lines\3c\vcoq_3p\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/coq_nvim",
    url = "https://github.com/ms-jpq/coq_nvim"
  },
  ["cosmic-ui"] = {
    config = { "\27LJ\2\nÅ\3\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\0025\3\b\0005\4\t\0=\4\6\3=\3\n\2B\0\2\1K\0\1\0\17code_actions\1\0\6\nstyle\vsingle\rtitle_hl\16FloatBorder\ntitle\17Code Actions\14highlight\16FloatBorder\16title_align\vcenter\14bottom_hl\16FloatBorder\1\0\0\vrename\vborder\1\0\2\14prompt_hl\fComment\vprompt\a> \1\0\5\rtitle_hl\16FloatBorder\ntitle\r Rename \14highlight\16FloatBorder\16title_align\tleft\nstyle\vsingle\1\0\1\17border_style\vsingle\nsetup\14cosmic-ui\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/cosmic-ui",
    url = "https://github.com/CosmicNvim/cosmic-ui"
  },
  cpsm = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/cpsm",
    url = "https://github.com/nixprime/cpsm"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nfocus\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["heirline.nvim"] = {
    config = { "\27LJ\2\n8\0\1\6\0\3\0\b9\1\1\0\18\3\1\0009\1\2\1)\4\1\0)\5\1\0B\1\4\2=\1\0\0K\0\1\0\bsub\tmode\fmode_chE\0\1\5\1\4\0\a5\1\2\0-\2\0\0009\2\0\0029\4\1\0B\2\2\2=\2\3\1L\1\2\0\3¿\afg\1\0\1\tbold\2\fmode_ch\16mode_colourn\0\1\5\1\a\0\v5\1\2\0-\2\0\0009\2\0\0029\2\1\2=\2\3\1-\2\0\0009\2\4\0029\4\5\0B\2\2\2=\2\6\1L\1\2\0\3¿\abg\fmode_ch\16mode_colour\afg\1\0\1\tbold\2\18statusline_bg\fcoloursM\0\1\4\1\4\0\t'\1\0\0-\2\0\0009\2\1\0029\3\2\0008\2\3\2:\2\1\2'\3\3\0&\1\3\1L\1\2\0\3¿\b%) \tmode\15mode_names\16ÓÇ¥ Óâæ %2()\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\15foldenable\awo\bvimQ\0\1\3\1\1\0\0159\1\0\0-\2\0\0008\1\2\1\15\0\1\0X\2\tÄ9\1\0\0-\2\0\0008\1\2\1)\2\0\0\0\2\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\0¿\16status_dict%\0\1\3\1\1\0\0049\1\0\0-\2\0\0008\1\2\1L\1\2\0\0¿\16status_dictà\1\1\3\a\1\f\0\0195\3\1\0003\4\0\0=\4\2\0035\4\3\0=\2\4\0045\5\a\0-\6\0\0009\6\5\0069\6\6\0068\6\1\6=\6\b\5=\5\t\4>\4\1\0035\4\v\0003\5\n\0=\5\4\4>\4\2\0032\0\0ÄL\3\2\0\3¿\1\0\0\0\ahl\afg\1\0\0\bgit\fcolours\rprovider\1\0\0\14condition\1\0\0\0B\0\1\2\0\4\0\0056\1\1\0009\1\2\0019\1\3\1=\1\0\0K\0\1\0\25gitsigns_status_dict\6b\bvim\16status_dict$\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\thead\16status_dicté\1\0\1\3\0\5\1\0229\1\0\0009\2\1\0009\2\2\2\4\1\2\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0\t\1\0\0X\1\nÄ9\1\1\0009\1\3\1\t\1\0\0X\1\6Ä9\1\1\0009\1\4\1\t\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\fchanged\fremoved\nadded\16status_dict\16has_changes\0À\1\0\1\t\0\t\2\0315\1\0\0)\2\1\0006\3\1\0009\3\2\0039\3\3\0039\5\4\0B\3\2\2)\4\0\0\1\3\4\0X\4\1Ä)\3\0\0)\4\0\4\1\4\3\0X\4\aÄ)\4\a\0\1\2\4\0X\4\4ÄU\4\3Ä\25\3\0\3\22\2\1\2X\4ˆ6\4\5\0009\4\6\4\t\2\1\0X\6\2Ä'\6\a\0X\a\1Ä'\6\b\0\18\a\3\0008\b\2\1D\4\4\0\v%.2f%s\t%g%s\vformat\vstring\rfilename\rgetfsize\afn\bvim\1\b\0\0\6b\6k\6M\6G\6T\6P\6EÄ\16\2<\0\0\1\0\4\0\b6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0L\0\2\0K\0\1\0\t ÔÅÄ\rmodified\abo\bvim[\0\0\1\0\5\0\r6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\0\5Ä6\0\0\0009\0\1\0009\0\3\0\15\0\0\0X\1\2Ä'\0\4\0L\0\2\0K\0\1\0\t ÔÄ£\rreadonly\15modifiable\abo\bvime\0\1\5\0\a\0\r6\1\1\0009\1\2\0019\1\3\0019\3\0\0'\4\4\0B\1\3\2=\1\0\0009\1\0\0\a\1\5\0X\1\2Ä'\1\6\0L\1\2\0K\0\1\0\14[No Name]\5\a:.\16fnamemodify\afn\bvim\rfilename\24\0\1\2\0\1\0\0029\1\0\0L\1\2\0\rfilename7\0\1\4\0\4\0\0056\1\0\0009\1\1\0019\1\2\0019\3\3\0D\1\2\0\rfilename\16pathshorten\afn\bvim*\0\1\3\0\2\0\a9\1\0\0\15\0\1\0X\2\3Ä9\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \ticon(\0\1\3\0\3\0\0045\1\1\0009\2\0\0=\2\2\1L\1\2\0\afg\1\0\0\15icon_color!\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\0¿\16is_git_repoF\0\0\3\0\5\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\a\0\4\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\5\b%:t\vexpand\afn\bvimM\0\0\3\0\3\0\r6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2\21\0\0\0)\1\0\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\15getloclist\afn\bvim^\0\1\5\1\a\0\v5\1\2\0-\2\0\0009\2\0\0029\4\1\0B\2\2\2=\2\3\1-\2\0\0009\2\4\0029\2\5\2=\2\6\1L\1\2\0\3¿\abg\vmid_bg\fcolours\afg\1\0\0\tmode\16mode_colourF\0\0\3\0\5\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\a\0\4\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\5\b%:t\vexpand\afn\bvim7\0\1\4\1\2\0\0069\1\0\0-\2\0\0009\2\1\2B\2\1\2&\1\2\1L\1\2\0\2¿\21lsp_client_names\ticon7\0\1\4\1\2\0\0069\1\0\0-\2\0\0009\2\1\2B\2\1\2&\1\2\1L\1\2\0\2¿\21lsp_client_names\ticon≥\2\0\1\6\0\16\00056\1\1\0009\1\2\0019\1\3\1)\3\0\0005\4\6\0006\5\1\0009\5\2\0059\5\4\0059\5\5\5=\5\4\4B\1\3\2\21\1\1\0=\1\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0005\4\t\0006\5\1\0009\5\2\0059\5\4\0059\5\b\5=\5\4\4B\1\3\2\21\1\1\0=\1\a\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0005\4\f\0006\5\1\0009\5\2\0059\5\4\0059\5\v\5=\5\4\4B\1\3\2\21\1\1\0=\1\n\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0005\4\15\0006\5\1\0009\5\2\0059\5\4\0059\5\14\5=\5\4\4B\1\3\2\21\1\1\0=\1\r\0K\0\1\0\1\0\0\tINFO\tinfo\1\0\0\tHINT\nhints\1\0\0\tWARN\rwarnings\1\0\0\nERROR\rseverity\bget\15diagnostic\bvim\verrorsO\0\1\4\0\3\0\r9\1\0\0)\2\0\0\1\2\1\0X\1\5Ä9\1\1\0009\2\0\0'\3\2\0&\1\3\1X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\6 \15error_icon\verrorsP\0\1\4\0\3\0\r9\1\0\0)\2\0\0\1\2\1\0X\1\5Ä9\1\1\0009\2\0\0'\3\2\0&\1\3\1X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\6 \14warn_icon\rwarningsL\0\1\4\0\3\0\r9\1\0\0)\2\0\0\1\2\1\0X\1\5Ä9\1\1\0009\2\0\0'\3\2\0&\1\3\1X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\6 \14info_icon\tinfoG\0\1\3\0\2\0\f9\1\0\0)\2\0\0\1\2\1\0X\1\4Ä9\1\1\0009\2\0\0&\1\2\1X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\14hint_icon\nhints$\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\nspell\awo\bvim.\0\1\3\0\3\0\0045\1\1\0009\2\0\0=\2\2\1L\1\2\0\afg\1\0\1\tbold\2\15icon_color$\0\1\2\0\2\0\0059\1\0\0\14\0\1\0X\2\1Ä'\1\1\0L\1\2\0\bÔÅô\ticon<\0\0\3\0\5\0\0066\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2D\0\2\0\rfiletype\abo\bvim\nupper\vstring`\0\1\5\1\a\0\v5\1\2\0-\2\0\0009\2\0\0029\2\1\2=\2\3\1-\2\0\0009\2\4\0029\4\5\0B\2\2\2=\2\6\1L\1\2\0\3¿\abg\tmode\16mode_colour\afg\1\0\0\rlight_bg\fcolours`\0\1\5\1\a\0\v5\1\2\0-\2\0\0009\2\0\0029\4\1\0B\2\2\2=\2\3\1-\2\0\0009\2\4\0029\2\5\2=\2\6\1L\1\2\0\3¿\abg\rlight_bg\fcolours\afg\1\0\0\tmode\16mode_colourH\0\0\2\0\3\0\f6\0\0\0009\0\1\0009\0\2\0B\0\1\2\21\0\0\0)\1\0\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\14getqflist\afn\bvimF\0\0\3\0\5\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\a\0\4\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\5\b%:t\vexpand\afn\bvim'\0\0\2\1\1\0\5-\0\0\0009\0\0\0B\0\1\2\19\0\0\0L\0\2\0\0¿\14is_activeß\1\0\0\4\1\6\0\b-\0\0\0009\0\0\0005\2\2\0005\3\1\0=\3\3\0025\3\4\0=\3\5\2D\0\2\0\0¿\fbuftype\1\5\0\0\vnofile\thelp\rquickfix\rterminal\rfiletype\1\0\0\1\a\0\0\rNvimTree\tdbui\vpacker\rstartify\rfugitive\18fugitiveblame\19buffer_matches@\0\0\1\0\4\0\t6\0\0\0009\0\1\0009\0\2\0\6\0\3\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\thelp\rfiletype\abo\bvim_\0\0\5\0\6\0\v6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\0026\1\0\0009\1\3\0019\1\4\1\18\3\0\0'\4\5\0D\1\3\0\a:t\16fnamemodify\afn\22nvim_buf_get_name\bapi\bvim˙\1\0\1\a\0\14\0\0296\1\1\0009\1\2\0019\1\3\1)\3\0\0B\1\2\2=\1\0\0006\1\1\0009\1\4\0019\1\5\0019\3\0\0'\4\6\0B\1\3\0026\2\t\0'\4\n\0B\2\2\0029\2\v\0029\4\0\0\18\5\1\0005\6\f\0B\2\4\3=\3\b\0=\2\a\0006\2\1\0009\2\4\0029\2\r\2)\4\1\0B\2\2\2=\2\r\0K\0\1\0\tmode\1\0\1\fdefault\2\19get_icon_color\22nvim-web-devicons\frequire\15icon_color\ticon\a:e\16fnamemodify\afn\22nvim_buf_get_name\bapi\bvim\rfilename \0\2\3\0\1\0\6\a\1\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\5Ù\29\1\0!\0»\1\4±\0046\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0026\1\3\0'\3\5\0B\1\2\0026\2\3\0'\4\6\0B\2\2\0026\3\3\0'\5\a\0B\3\2\0025\4\b\0005\5\t\0005\6\n\0005\a\r\0009\b\v\0039\b\f\b=\b\14\a5\b\17\0009\t\15\0039\t\16\t=\t\18\b9\t\15\0039\t\19\t=\t\20\b=\b\21\a5\b\22\0009\t\v\0039\t\f\t=\t\14\b5\t\23\0009\n\15\0039\n\19\n=\n\18\t9\n\15\0039\n\16\n=\n\20\t=\t\21\b5\t\25\0003\n\24\0=\n\26\t3\n\27\0=\n\21\t5\n\29\0003\v\28\0=\v\21\n>\n\1\t5\n\31\0003\v\30\0=\v\14\n>\n\2\t5\n!\0003\v \0=\v\"\n5\v%\0005\f$\0009\r\15\0039\r#\r=\r\18\f=\f\21\v5\f&\0>\f\1\v5\f(\0009\r'\2=\r\14\f>\f\2\v>\v\1\n3\v)\0005\f+\0009\r*\0=\r\"\f3\r,\0=\r\26\f9\r-\1)\15\2\0004\16\3\0005\17.\0005\0181\0009\19\15\0039\19/\0199\0190\19=\19\18\18=\18\21\17>\17\1\0165\0173\0003\0182\0=\18\14\17>\17\2\16\18\17\6\0B\r\4\2>\r\1\f5\r5\0003\0144\0=\14\"\r9\14-\1)\16\4\0004\17\4\0\18\18\v\0'\0206\0'\0210\0'\0227\0B\18\4\2>\18\1\17\18\18\v\0'\0208\0'\0219\0'\22:\0B\18\4\2>\18\2\17\18\18\v\0'\20;\0'\21<\0'\22=\0B\18\4\0?\18\0\0004\18\3\0\18\19\v\0'\0218\0'\0229\0'\23:\0B\19\4\2>\19\1\18\18\19\v\0'\21;\0'\22<\0'\23=\0B\19\4\0?\19\1\0004\19\3\0\18\20\v\0'\0228\0'\0239\0'\24:\0B\20\4\0?\20\2\0\18\20\6\0B\14\6\0?\14\2\0>\r\2\f5\r?\0003\14>\0=\14\14\r5\14A\0009\15\15\0039\15@\15=\15\18\14=\14\21\r4\14\3\0005\15C\0003\16B\0=\16\14\0155\16E\0009\17\15\0039\17D\17=\17\18\16=\16\21\15>\15\1\0145\15G\0003\16F\0=\16\14\0155\16I\0009\17\15\0039\17H\17=\17\18\16=\16\21\15>\15\2\0145\15K\0003\16J\0=\16\26\0159\16-\1)\18\1\0005\19M\0003\20L\0=\20\14\0195\20O\0003\21N\0=\21\14\20B\16\4\0?\16\2\0005\16Q\0003\17P\0=\17\14\0163\17R\0=\17\21\0165\17T\0003\18S\0=\18\"\0175\18V\0009\19\v\0039\19U\19=\19\14\0185\19X\0009\20\15\0039\20W\20=\20\18\19=\19\21\18>\18\1\0175\18Z\0009\19Y\2=\19\14\18>\18\2\17>\4\3\0174\18\3\0009\19-\1)\21\3\0004\22\a\0>\17\1\22>\16\2\22>\15\3\22>\14\4\22>\4\5\22>\r\6\0224\23\5\0>\17\1\23>\16\2\23>\15\3\23>\14\4\0234\24\3\0>\17\1\24>\15\2\0244\25\3\0>\15\1\25B\19\6\0?\19\2\0005\19\\\0005\20[\0009\21\15\0039\21@\21=\21\18\20=\20\21\19>\t\1\0199\20-\1)\22\3\0\18\23\n\0\18\24\6\0B\20\4\2>\20\2\0199\20]\0015\22^\0009\23\15\0039\23_\23\18\24\f\0B\20\4\0?\20\0\0005\20a\0003\21`\0=\21\"\0209\21]\0015\23b\0009\24\15\0039\24_\24\18\25\18\0B\21\4\0?\21\2\0005\21d\0009\22c\2=\22\14\0213\22e\0=\22\"\0215\22g\0009\23\15\0039\23f\23=\23\18\22=\22\21\0214\22\3\0005\23h\0005\24i\0=\24\21\23>\23\1\0225\23j\0003\24k\0=\24\21\23>\23\2\0225\23m\0003\24l\0=\24\"\0235\24n\0009\25\15\0039\25@\25=\25\18\24=\24\21\0235\24p\0005\25o\0=\25q\0249\25r\0=\25\"\0249\25-\1)\27\2\0004\28\3\0005\29t\0003\30s\0=\30\14\29>\29\1\0284\29\3\0005\30v\0003\31u\0=\31\14\30>\30\1\29\18\30\6\0B\25\5\0?\25\2\0>\24\1\0235\24x\0009\25w\0=\25\"\0245\25y\0=\25q\0243\25z\0=\25\26\0245\25|\0003\26{\0=\26\14\0255\26\0009\27\15\0039\27}\0279\27~\27=\27\18\26=\26\21\25>\25\1\0245\25Å\0003\26Ä\0=\26\14\0255\26É\0009\27\15\0039\27}\0279\27Ç\27=\27\18\26=\26\21\25>\25\2\0245\25Ö\0003\26Ñ\0=\26\14\0255\26á\0009\27\15\0039\27}\0279\27Ü\27=\27\18\26=\26\21\25>\25\3\0245\25â\0003\26à\0=\26\14\0255\26ã\0009\27\15\0039\27}\0279\27ä\27=\27\18\26=\26\21\25>\25\4\24>\24\2\0235\24å\0003\25ç\0=\25\"\0245\25è\0009\26\15\0039\26é\26=\26\18\25=\25\21\24>\24\3\0239\24-\1)\26\2\0005\27ë\0003\28ê\0=\28\21\27>\4\1\0275\28ì\0003\29í\0=\29\14\28>\28\2\27>\4\3\0275\28ï\0003\29î\0=\29\14\28>\28\4\27\18\28\6\0B\24\4\2>\24\4\23>\4\5\0235\24ó\0009\25ñ\2=\25\14\24>\24\6\23>\4\a\0235\24ô\0003\25ò\0=\25\21\0245\25õ\0009\26\v\0039\26ö\26=\26\14\0253\26ú\0=\26\21\25>\25\1\0245\25ù\0>\25\2\24>\4\3\0245\25ü\0009\26û\2=\26\14\0253\26†\0=\26\"\0255\26¢\0009\27\15\0039\27°\27=\27\18\26=\26\21\25>\25\4\24>\21\5\24>\22\6\24>\24\b\0235\24§\0009\25£\0=\25\"\0245\25ß\0009\26•\1'\28¶\0B\26\2\0029\26\18\26=\26\18\0259\26•\1'\28¶\0B\26\2\0029\26\20\26=\26\20\25=\25\21\0249\25]\0015\27®\0009\28\v\0039\28©\28>\28\2\0279\28\15\0039\28_\28\18\29\19\0B\25\4\2>\25\1\24>\5\2\0249\25]\0014\27\3\0009\28\v\0039\28™\28>\28\1\0279\28\v\0039\28©\28>\28\2\0279\28\15\0039\28_\28\18\29\20\0B\25\4\2>\25\3\24>\5\4\0249\25]\0015\27´\0009\28\v\0039\28™\28>\28\1\0279\28\15\0039\28_\28\18\29\23\0B\25\4\0?\25\3\0005\25≠\0003\26¨\0=\26\"\0255\26Æ\0009\27\15\0039\27\19\27=\27\18\0269\27\15\0039\27#\27=\27\20\26=\26\21\0254\26\5\0005\27∞\0009\28\v\0039\28Ø\28=\28\14\0275\28±\0009\29\15\0039\29#\29=\29\18\0289\29\15\0039\29\16\29=\29\20\28=\28\21\27>\27\1\0265\27≤\0>\27\2\26>\21\3\26>\22\4\26>\26\1\0255\26¥\0003\27≥\0=\27\"\0265\27∂\0009\28\15\0039\28µ\28=\28\18\0279\28\15\0039\28\16\28=\28\20\27=\27\21\0265\27∏\0005\28∑\0009\29\15\0039\29\19\29=\29\20\28=\28\21\27>\f\1\27>\4\2\27>\b\3\27>\27\1\26>\5\2\0265\27∫\0>\a\1\27>\4\2\0275\28π\0009\29\15\0039\29\19\29=\29\20\28=\28\21\27>\18\3\27>\4\4\27>\b\5\27>\27\3\26>\5\4\26>\25\5\0265\27º\0003\28ª\0=\28\"\0275\28æ\0003\29Ω\0=\29\"\0283\29ø\0=\29\14\0285\29¡\0009\30\15\0039\30¿\30=\30\18\29=\29\21\0285\29√\0003\30¬\0=\30\26\0293\30ƒ\0=\30≈\29>\28\1\29>\27\2\29>\24\3\29>\26\4\0296\30\3\0' ∆\0B\30\2\0029\30«\30\18 \29\0B\30\2\0012\0\0ÄK\0\1\0\nsetup\rheirline\14stop_when\0\1\0\0\0\1\0\0\tblue\0\1\0\0\0\1\0\1\rprovider\6 \0\1\0\0\1\0\0\1\0\0\1\0\0\1\0\0\nwhite\1\0\0\0\1\0\1\rprovider\bÓúî\1\0\0\1\0\0\15slant_left\1\0\0\1\0\0\0\1\3\0\0\0\5\16left_filled\17right_filled\1\2\0\0\5\1\0\0\15StatusLine\18get_highlight\1\0\0\14is_active\1\0\0\rred_dark\0\1\0\0\19quickfix_count\1\0\1\rprovider\bÓúî\0\1\0\0\17left_rounded\1\0\0\0\1\0\0\19search_results\1\0\0\0\1\0\0\0\1\0\0\0\1\0\1\tbold\2\vyellow\0\1\0\1\rprovider\t ÔßÖ\1\0\0\thint\1\0\0\0\1\0\0\tinfo\1\0\0\0\1\0\0\twarn\1\0\0\0\1\0\0\nerror\tdiag\1\0\0\0\0\1\0\4\15error_icon\n ÔÅó \14info_icon\n ÔÅ™ \14warn_icon\n ÔÅ± \14hint_icon\n ÔÅö \1\0\0\20has_diagnostics\1\0\0\0\1\0\0\0\17lsp_attached\vstatic\1\0\0\1\0\1\ticon\n Óûô \1\0\0\1\0\0\0\0\1\0\1\rprovider\b %P\1\0\1\tbold\2\1\0\1\rprovider\14%l/%L|%c \1\0\0\vpurple\0\1\0\0\20locallist_count\1\3\0\0\6 \6 \1\0\0\0\18statusline_bg\1\3\0\0\6 \6 \rsurround\1\0\0\1\0\0\1\0\0\rgit_root\1\0\0\vfolder\1\0\0\16folder_icon\1\0\0\0\0\1\0\0\0\1\0\0\0\1\0\0\0\1\0\0\0\1\0\0\vorange\1\0\0\0\1\0\0\ngreen\1\0\0\0\1\0\0\fgrey_fg\1\0\0\0\t Ôßâ\vchange\fchanged\n ÔÖÜ \bdel\fremoved\n ÔÉæ \nadded\1\0\0\0\1\0\0\0\1\0\0\badd\bgit\1\0\1\rprovider\n Ôêò \28make_flexible_component\0\1\0\0\16is_git_repo\0\1\0\0\16fold_method\1\0\1\rprovider\nÓ™ë  \1\0\0\1\0\1\tbold\2\15green_pale\14condition\1\0\0\0\1\0\0\0\1\0\1\rprovider\n Óò´ \0\0\tinit\1\0\0\0\1\0\0\1\0\0\ahl\abg\vmid_bg\afg\1\0\0\rshort_bg\fcolours\rprovider\1\0\0\18slant_right_2\15separators\1\0\1\rprovider\5\1\0\1\rprovider\a%=\1\0\1\rprovider\6 \30plugins.UI.heirline.utils\31plugins.UI.heirline.futils\19heirline.utils\24heirline.conditions\frequireŸ\2highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon\nhighlight! link NeoTreeDirectoryName NvimTreeFolderName\nhighlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink\nhighlight! link NeoTreeRootName NvimTreeRootFolder\nhighlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName\nhighlight! link NeoTreeFileNameOpened NvimTreeOpenedFile\n\bcmd\bvim\aÄÄ¿ô\4\5ÄÄ¿ô\4\3ÄÄ¿ô\4\vÄÄ¿ô\4\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/opt/heirline.nvim",
    url = "https://github.com/rebelot/heirline.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["legendary.nvim"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/legendary.nvim",
    url = "https://github.com/mrjones2014/legendary.nvim"
  },
  ["mapx.nvim"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/mapx.nvim",
    url = "https://github.com/b0o/mapx.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n∞\1\0\1\b\0\14\2\0246\1\0\0009\1\1\0019\1\2\0019\3\3\0'\4\4\0B\1\3\0026\2\5\0009\2\6\2\18\4\1\0B\2\2\2\22\2\0\0025\3\t\0006\4\a\0009\4\b\4\18\6\2\0)\a2\0B\4\3\2=\4\n\0036\4\0\0009\4\v\0049\4\f\4\23\4\1\4=\4\r\3L\3\2\0\vheight\nlines\6o\nwidth\1\0\0\bmax\tmath\blen\vstring\a:~\tpath\16fnamemodify\afn\bvim\b\fÕ\22\1\0\a\0E\0e6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0005\3\a\0B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\b\0005\3\t\0B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\n\0005\3\v\0B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\f\0005\3\r\0B\0\3\0016\0\14\0'\2\15\0B\0\2\0029\0\16\0005\2\17\0005\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\30\0005\5\29\0=\5\31\4=\4 \3=\3!\0025\3\"\0005\4#\0=\4$\0035\4&\0005\5%\0=\5'\0045\5(\0005\6)\0=\6*\5=\5+\4=\4,\3=\3-\0024\3\0\0=\3.\0025\0033\0005\4/\0004\5\0\0=\0050\0044\5\0\0=\0051\0044\5\0\0=\0052\4=\0044\0035\4:\0005\0056\0005\0065\0=\0067\0053\0068\0=\0069\5=\5;\0045\5<\0=\5,\4=\4-\3=\3=\0025\3>\0005\4@\0005\5?\0=\5,\4=\4-\3=\3A\0025\3D\0005\4B\0005\5C\0=\5,\4=\4-\3=\3 \2B\0\2\1K\0\1\0\1\0\0\1\0\a\agg\24git_commit_and_push\agu\21git_unstage_file\agp\rgit_push\agc\15git_commit\6A\16git_add_all\agr\20git_revert_file\aga\17git_add_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\abd\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\1\0\3\24follow_current_file\2\18show_unloaded\2\21group_empty_dirs\2\15filesystem\1\0\b\6H\18toggle_hidden\6/\17fuzzy_finder\6.\rset_root\t<bs>\16navigate_up\n<c-x>\17clear_filter\6f\21filter_on_submit\a[g\22prev_git_modified\a]g\22next_git_modified\npopup\1\0\0\tsize\0\rposition\1\0\0\1\0\2\bcol\t100%\brow\0062\19filtered_items\1\0\4\24follow_current_file\1\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\15never_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\vconfig\1\0\1\14show_path\tnone\1\2\0\0\badd\f<space>\1\0\19\6d\vdelete\6w\28open_with_window_picker\6x\21cut_to_clipboard\6r\vrename\6s\15open_split\6S\16open_vsplit\6C\15close_node\t<cr>\topen\18<2-LeftMouse>\topen\6c\tcopy\6q\17close_window\6?\14show_help\6p\25paste_from_clipboard\6m\tmove\6R\frefresh\6y\22copy_to_clipboard\6A\18add_directory\6o\topen\6t\16open_tabnew\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\bÓúß\vstaged\bÔÅÜ\runstaged\bÔò∞\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\bÔïî\fdeleted\b‚úñ\nadded\5\rmodified\5\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\17folder_empty\bÔ∞ä\16folder_open\bÓóæ\14highlight\20NeoTreeFileIcon\18folder_closed\bÓóø\fdefault\6*\vindent\1\0\t\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\23enable_diagnostics\2\26sort_case_insensitive\1\23popup_border_style\frounded\25close_if_last_window\1\22enable_git_status\2\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\bÔ†¥\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\tÔÅö \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\tÔÅ± \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\tÔÅó \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 Ÿ\2highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon\nhighlight! link NeoTreeDirectoryName NvimTreeFolderName\nhighlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink\nhighlight! link NeoTreeRootName NvimTreeRootFolder\nhighlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName\nhighlight! link NeoTreeFileNameOpened NvimTreeOpenedFile\n\bcmd\bvim\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-fzy"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/nvim-fzy",
    url = "https://github.com/mfussenegger/nvim-fzy"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\nå\5\0\0\a\0\18\0:5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\4\0'\5\5\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\6\0'\5\a\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0'\5\r\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\16\0'\5\17\0\18\6\0\0B\1\5\1K\0\1\0\r:noh<CR>\14<Leader>l.g#<Cmd>lua require('hlslens').start()<CR>\ag#.g*<Cmd>lua require('hlslens').start()<CR>\ag*-#<Cmd>lua require('hlslens').start()<CR>\6#-*<Cmd>lua require('hlslens').start()<CR>\6*Y<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>\6NY<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-reload"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/nvim-reload",
    url = "https://github.com/famiu/nvim-reload"
  },
  ["nvim-scrollbar"] = {
    config = { "\27LJ\2\nÇ\3\0\0\a\0\30\0-6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\a\0005\4\5\0009\5\4\0=\5\6\4=\4\b\0035\4\v\0005\5\n\0009\6\t\0=\6\6\5=\5\f\0045\5\14\0009\6\r\0=\6\6\5=\5\15\0045\5\17\0009\6\16\0=\6\6\5=\5\18\0045\5\20\0009\6\19\0=\6\6\5=\5\21\0045\5\23\0009\6\22\0=\6\6\5=\5\24\0045\5\26\0009\6\25\0=\6\6\5=\5\27\4=\4\28\3B\1\2\0016\1\0\0'\3\29\0B\1\2\0029\1\3\1B\1\1\1K\0\1\0\30scrollbar.handlers.search\nmarks\tMisc\1\0\0\vpurple\tHint\1\0\0\thint\tInfo\1\0\0\tinfo\tWarn\1\0\0\fwarning\nError\1\0\0\nerror\vSearch\1\0\0\1\0\0\vorange\vhandle\1\0\0\ncolor\1\0\0\17bg_highlight\nsetup\14scrollbar\23nightfox.lib.color\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/opt/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n‰\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\1\17sync_install\1\1\b\0\0\truby\blua\trust\15javascript\rmarkdown\nlatex\tnorg\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n˛\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\20include_current\1\19autoselect_one\2\23other_win_hl_color\f#e35e4f\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["open-browser.vim"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/open-browser.vim",
    url = "https://github.com/tyru/open-browser.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-command-palette.nvim"] = {
    config = { "\27LJ\2\ní\1\0\0\5\1\a\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\3\0-\4\0\0>\4\1\3=\3\4\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0'\2\6\0B\0\2\1K\0\1\0\0¿\20command_palette\19load_extension\15extensions\1\0\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/telescope-command-palette.nvim",
    url = "https://github.com/LinArcX/telescope-command-palette.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    config = { "\27LJ\2\n…\1\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\b\0005\4\3\0005\5\4\0004\6\0\0=\6\5\0054\6\0\0=\6\6\5=\5\a\4=\4\t\3=\3\v\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\t\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\17file_browser\1\0\0\rmappings\6n\6i\1\0\0\1\0\1\17hijack_netrw\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\n’\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0'\2\5\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\14case_mode\15smart_case\nfuzzy\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    config = { "\27LJ\2\næ\1\0\0\a\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0005\4\6\0005\5\4\0005\6\3\0=\6\5\5=\5\a\4=\4\t\3B\1\2\0019\1\n\0'\3\v\0B\1\2\1K\0\1\0\bfzf\19load_extension\15extensions\1\0\0\16media_files\1\0\0\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-packer.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\vpacker\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/telescope-packer.nvim",
    url = "https://github.com/nvim-telescope/telescope-packer.nvim"
  },
  ["telescope-project.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\fproject\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  theme = {
    after = { "nvim-scrollbar", "heirline.nvim" },
    loaded = true,
    only_config = true
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nV\0\0\3\1\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\2B\0\1\1K\0\1\0\0¿\rmappings\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\nj\0\2\6\0\5\0\r6\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\2\n\2\0\0X\2\3Ä5\2\3\0L\2\2\0X\2\2Ä5\2\4\0L\2\2\0K\0\1\0\1\3\0\0\vfdfind\b-tf\1\4\0\0\vfdfind\b-tf\a-H\6.\tfind\vstring \0\2\3\0\1\0\6\6\1\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\5Œ\n\1\0\17\0C\3w6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0004\4\3\0009\5\b\0009\a\t\0005\t\v\0003\n\n\0=\n\f\t5\n\r\0=\n\14\t5\n\15\0=\n\16\tB\a\2\0029\b\17\0005\n\23\0009\v\18\0005\r\19\0009\14\20\0005\16\21\0B\14\2\2=\14\22\rB\v\2\2=\v\a\nB\b\2\0029\t\24\0005\v\25\0B\t\2\0024\n\3\0009\v\26\0003\r\27\0B\v\2\2>\v\1\n9\v\28\0B\v\1\0?\v\0\0009\v\18\0005\r\30\0009\14\20\0005\16\29\0B\14\2\2=\14\22\rB\v\2\0A\5\4\0?\5\1\0B\1\3\0014\1\3\0009\2\31\0B\2\1\2>\2\1\0019\2 \0B\2\1\0?\2\0\0009\2!\0009\4\"\0005\6#\0009\a$\0B\a\1\2=\a%\6=\1&\0065\a'\0009\b(\0B\b\1\2>\b\2\a9\b)\0005\n*\0005\v+\0=\v,\nB\b\2\0?\b\2\0=\a-\0065\a.\0009\b/\0B\b\1\0?\b\0\0=\a0\6B\4\2\0A\2\0\0029\0031\0005\0052\0=\1&\0055\0063\0009\a4\0B\a\1\2>\a\2\6=\6-\0055\0065\0009\a6\0B\a\1\0?\a\0\0=\0060\5B\3\2\0029\4\6\0'\0067\0009\a8\0005\t9\0=\2:\t=\3;\t=\3<\tB\a\2\0A\4\1\0016\4\0\0'\6=\0B\4\2\0029\4\2\0045\6A\0005\a?\0005\b>\0=\b@\a=\aB\6B\4\2\1K\0\1\0\roverride\1\0\1\fdefault\2\bzsh\1\0\0\1\0\4\ncolor\f#428850\ticon\bÓûï\16cterm_color\a65\tname\bZsh\22nvim-web-devicons\15substitute\6/\6:\1\0\0\17renderer_mux\rrenderer\19wildmenu_index\1\2\0\0\6 \21wildmenu_spinner\1\4\0\0\6 \0\6 \1\0\1\14separator\t ¬∑ \22wildmenu_renderer\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\nicons\1\0\3\6h\bÔú£\6+\bÔ£™\6a\bÔúì\1\0\1\nflags\n a + \27popupmenu_buffer_flags\23popupmenu_devicons\1\2\0\0\6 \16highlighter\18empty_message)popupmenu_empty_message_with_spinner\1\0\1\vborder\frounded\27popupmenu_border_theme\23popupmenu_renderer\24lua_fzy_highlighter\22pcre2_highlighter\1\0\0\1\0\1\22start_at_boundary\3\0\fhistory\0\ncheck\1\0\1\nfuzzy\3\2\21cmdline_pipeline\1\0\0\fpattern\1\0\1\22start_at_boundary\3\0\25python_fuzzy_pattern\1\0\1\23skip_cmdtype_check\3\1\27python_search_pipeline\24substitute_pipeline\ffilters\1\2\0\0\16cpsm_filter\16dir_command\1\3\0\0\afd\b-td\17file_command\1\0\0\0 python_file_finder_pipeline\vbranch\rpipeline\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\5ÄÄ¿ô\4\3ÄÄ¿ô\4\aÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/miguel/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nfocus\frequire\0", "config", "focus.nvim")
time([[Config for focus.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\0¿\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\nå\5\0\0\a\0\18\0:5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\4\0'\5\5\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\6\0'\5\a\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0'\5\r\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\16\0'\5\17\0\18\6\0\0B\1\5\1K\0\1\0\r:noh<CR>\14<Leader>l.g#<Cmd>lua require('hlslens').start()<CR>\ag#.g*<Cmd>lua require('hlslens').start()<CR>\ag*-#<Cmd>lua require('hlslens').start()<CR>\6#-*<Cmd>lua require('hlslens').start()<CR>\6*Y<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>\6NY<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n>\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\0¿\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\nj\0\2\6\0\5\0\r6\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\2\n\2\0\0X\2\3Ä5\2\3\0L\2\2\0X\2\2Ä5\2\4\0L\2\2\0K\0\1\0\1\3\0\0\vfdfind\b-tf\1\4\0\0\vfdfind\b-tf\a-H\6.\tfind\vstring \0\2\3\0\1\0\6\6\1\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\5Œ\n\1\0\17\0C\3w6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0004\4\3\0009\5\b\0009\a\t\0005\t\v\0003\n\n\0=\n\f\t5\n\r\0=\n\14\t5\n\15\0=\n\16\tB\a\2\0029\b\17\0005\n\23\0009\v\18\0005\r\19\0009\14\20\0005\16\21\0B\14\2\2=\14\22\rB\v\2\2=\v\a\nB\b\2\0029\t\24\0005\v\25\0B\t\2\0024\n\3\0009\v\26\0003\r\27\0B\v\2\2>\v\1\n9\v\28\0B\v\1\0?\v\0\0009\v\18\0005\r\30\0009\14\20\0005\16\29\0B\14\2\2=\14\22\rB\v\2\0A\5\4\0?\5\1\0B\1\3\0014\1\3\0009\2\31\0B\2\1\2>\2\1\0019\2 \0B\2\1\0?\2\0\0009\2!\0009\4\"\0005\6#\0009\a$\0B\a\1\2=\a%\6=\1&\0065\a'\0009\b(\0B\b\1\2>\b\2\a9\b)\0005\n*\0005\v+\0=\v,\nB\b\2\0?\b\2\0=\a-\0065\a.\0009\b/\0B\b\1\0?\b\0\0=\a0\6B\4\2\0A\2\0\0029\0031\0005\0052\0=\1&\0055\0063\0009\a4\0B\a\1\2>\a\2\6=\6-\0055\0065\0009\a6\0B\a\1\0?\a\0\0=\0060\5B\3\2\0029\4\6\0'\0067\0009\a8\0005\t9\0=\2:\t=\3;\t=\3<\tB\a\2\0A\4\1\0016\4\0\0'\6=\0B\4\2\0029\4\2\0045\6A\0005\a?\0005\b>\0=\b@\a=\aB\6B\4\2\1K\0\1\0\roverride\1\0\1\fdefault\2\bzsh\1\0\0\1\0\4\ncolor\f#428850\ticon\bÓûï\16cterm_color\a65\tname\bZsh\22nvim-web-devicons\15substitute\6/\6:\1\0\0\17renderer_mux\rrenderer\19wildmenu_index\1\2\0\0\6 \21wildmenu_spinner\1\4\0\0\6 \0\6 \1\0\1\14separator\t ¬∑ \22wildmenu_renderer\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\nicons\1\0\3\6h\bÔú£\6+\bÔ£™\6a\bÔúì\1\0\1\nflags\n a + \27popupmenu_buffer_flags\23popupmenu_devicons\1\2\0\0\6 \16highlighter\18empty_message)popupmenu_empty_message_with_spinner\1\0\1\vborder\frounded\27popupmenu_border_theme\23popupmenu_renderer\24lua_fzy_highlighter\22pcre2_highlighter\1\0\0\1\0\1\22start_at_boundary\3\0\fhistory\0\ncheck\1\0\1\nfuzzy\3\2\21cmdline_pipeline\1\0\0\fpattern\1\0\1\22start_at_boundary\3\0\25python_fuzzy_pattern\1\0\1\23skip_cmdtype_check\3\1\27python_search_pipeline\24substitute_pipeline\ffilters\1\2\0\0\16cpsm_filter\16dir_command\1\3\0\0\afd\b-td\17file_command\1\0\0\0 python_file_finder_pipeline\vbranch\rpipeline\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\5ÄÄ¿ô\4\3ÄÄ¿ô\4\aÄÄ¿ô\4\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: theme
time([[Config for theme]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\bvim\0", "config", "theme")
time([[Config for theme]], false)
-- Config for: telescope-file-browser.nvim
time([[Config for telescope-file-browser.nvim]], true)
try_loadstring("\27LJ\2\n…\1\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\b\0005\4\3\0005\5\4\0004\6\0\0=\6\5\0054\6\0\0=\6\6\5=\5\a\4=\4\t\3=\3\v\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\t\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\17file_browser\1\0\0\rmappings\6n\6i\1\0\0\1\0\1\17hijack_netrw\2\nsetup\14telescope\frequire\0", "config", "telescope-file-browser.nvim")
time([[Config for telescope-file-browser.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: telescope-fzf-native.nvim
time([[Config for telescope-fzf-native.nvim]], true)
try_loadstring("\27LJ\2\n’\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0'\2\5\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\14case_mode\15smart_case\nfuzzy\2\nsetup\14telescope\frequire\0", "config", "telescope-fzf-native.nvim")
time([[Config for telescope-fzf-native.nvim]], false)
-- Config for: telescope-media-files.nvim
time([[Config for telescope-media-files.nvim]], true)
try_loadstring("\27LJ\2\næ\1\0\0\a\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0005\4\6\0005\5\4\0005\6\3\0=\6\5\5=\5\a\4=\4\t\3B\1\2\0019\1\n\0'\3\v\0B\1\2\1K\0\1\0\bfzf\19load_extension\15extensions\1\0\0\16media_files\1\0\0\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\nsetup\14telescope\frequire\0", "config", "telescope-media-files.nvim")
time([[Config for telescope-media-files.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n‰\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\1\17sync_install\1\1\b\0\0\truby\blua\trust\15javascript\rmarkdown\nlatex\tnorg\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: cosmic-ui
time([[Config for cosmic-ui]], true)
try_loadstring("\27LJ\2\nÅ\3\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\0025\3\b\0005\4\t\0=\4\6\3=\3\n\2B\0\2\1K\0\1\0\17code_actions\1\0\6\nstyle\vsingle\rtitle_hl\16FloatBorder\ntitle\17Code Actions\14highlight\16FloatBorder\16title_align\vcenter\14bottom_hl\16FloatBorder\1\0\0\vrename\vborder\1\0\2\14prompt_hl\fComment\vprompt\a> \1\0\5\rtitle_hl\16FloatBorder\ntitle\r Rename \14highlight\16FloatBorder\16title_align\tleft\nstyle\vsingle\1\0\1\17border_style\vsingle\nsetup\14cosmic-ui\frequire\0", "config", "cosmic-ui")
time([[Config for cosmic-ui]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n∞\1\0\1\b\0\14\2\0246\1\0\0009\1\1\0019\1\2\0019\3\3\0'\4\4\0B\1\3\0026\2\5\0009\2\6\2\18\4\1\0B\2\2\2\22\2\0\0025\3\t\0006\4\a\0009\4\b\4\18\6\2\0)\a2\0B\4\3\2=\4\n\0036\4\0\0009\4\v\0049\4\f\4\23\4\1\4=\4\r\3L\3\2\0\vheight\nlines\6o\nwidth\1\0\0\bmax\tmath\blen\vstring\a:~\tpath\16fnamemodify\afn\bvim\b\fÕ\22\1\0\a\0E\0e6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0005\3\a\0B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\b\0005\3\t\0B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\n\0005\3\v\0B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\f\0005\3\r\0B\0\3\0016\0\14\0'\2\15\0B\0\2\0029\0\16\0005\2\17\0005\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\30\0005\5\29\0=\5\31\4=\4 \3=\3!\0025\3\"\0005\4#\0=\4$\0035\4&\0005\5%\0=\5'\0045\5(\0005\6)\0=\6*\5=\5+\4=\4,\3=\3-\0024\3\0\0=\3.\0025\0033\0005\4/\0004\5\0\0=\0050\0044\5\0\0=\0051\0044\5\0\0=\0052\4=\0044\0035\4:\0005\0056\0005\0065\0=\0067\0053\0068\0=\0069\5=\5;\0045\5<\0=\5,\4=\4-\3=\3=\0025\3>\0005\4@\0005\5?\0=\5,\4=\4-\3=\3A\0025\3D\0005\4B\0005\5C\0=\5,\4=\4-\3=\3 \2B\0\2\1K\0\1\0\1\0\0\1\0\a\agg\24git_commit_and_push\agu\21git_unstage_file\agp\rgit_push\agc\15git_commit\6A\16git_add_all\agr\20git_revert_file\aga\17git_add_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\abd\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\1\0\3\24follow_current_file\2\18show_unloaded\2\21group_empty_dirs\2\15filesystem\1\0\b\6H\18toggle_hidden\6/\17fuzzy_finder\6.\rset_root\t<bs>\16navigate_up\n<c-x>\17clear_filter\6f\21filter_on_submit\a[g\22prev_git_modified\a]g\22next_git_modified\npopup\1\0\0\tsize\0\rposition\1\0\0\1\0\2\bcol\t100%\brow\0062\19filtered_items\1\0\4\24follow_current_file\1\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\15never_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\vconfig\1\0\1\14show_path\tnone\1\2\0\0\badd\f<space>\1\0\19\6d\vdelete\6w\28open_with_window_picker\6x\21cut_to_clipboard\6r\vrename\6s\15open_split\6S\16open_vsplit\6C\15close_node\t<cr>\topen\18<2-LeftMouse>\topen\6c\tcopy\6q\17close_window\6?\14show_help\6p\25paste_from_clipboard\6m\tmove\6R\frefresh\6y\22copy_to_clipboard\6A\18add_directory\6o\topen\6t\16open_tabnew\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\bÓúß\vstaged\bÔÅÜ\runstaged\bÔò∞\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\bÔïî\fdeleted\b‚úñ\nadded\5\rmodified\5\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\17folder_empty\bÔ∞ä\16folder_open\bÓóæ\14highlight\20NeoTreeFileIcon\18folder_closed\bÓóø\fdefault\6*\vindent\1\0\t\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\23enable_diagnostics\2\26sort_case_insensitive\1\23popup_border_style\frounded\25close_if_last_window\1\22enable_git_status\2\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\bÔ†¥\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\tÔÅö \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\tÔÅ± \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\tÔÅó \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 Ÿ\2highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon\nhighlight! link NeoTreeDirectoryName NvimTreeFolderName\nhighlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink\nhighlight! link NeoTreeRootName NvimTreeRootFolder\nhighlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName\nhighlight! link NeoTreeFileNameOpened NvimTreeOpenedFile\n\bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: telescope-packer.nvim
time([[Config for telescope-packer.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\vpacker\19load_extension\14telescope\frequire\0", "config", "telescope-packer.nvim")
time([[Config for telescope-packer.nvim]], false)
-- Config for: coq_nvim
time([[Config for coq_nvim]], true)
try_loadstring("\27LJ\2\n„\2\0\0\5\0\f\0\0246\0\0\0'\2\1\0B\0\2\0024\2\6\0005\3\2\0005\4\3\0=\4\4\0035\4\5\0=\4\6\3>\3\1\0025\3\a\0>\3\2\0025\3\b\0>\3\3\0025\3\t\0>\3\4\0025\3\n\0>\3\5\2B\0\2\0016\0\0\0'\2\v\0B\0\2\2B\0\1\1K\0\1\0\tlang\1\0\2\bsrc\forgmode\15short_name\bORG\1\0\3\bsrc\abc\14precision\3\6\15short_name\tMATH\1\0\2\bsrc\vvimtex\15short_name\tvTEX\1\0\3\bsrc\fnvimlua\14conf_only\2\15short_name\tnLUA\vunsafe\1\4\0\0\arm\rpoweroff\amv\nshell\1\0\2\6p\tperl\6n\tnode\1\0\4\ash\bzsh\bsrc\trepl\rdeadline\3Ù\3\14max_lines\3c\vcoq_3p\frequire\0", "config", "coq_nvim")
time([[Config for coq_nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n˛\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\20include_current\1\19autoselect_one\2\23other_win_hl_color\f#e35e4f\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: telescope-project.nvim
time([[Config for telescope-project.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\fproject\19load_extension\14telescope\frequire\0", "config", "telescope-project.nvim")
time([[Config for telescope-project.nvim]], false)
-- Config for: telescope-command-palette.nvim
time([[Config for telescope-command-palette.nvim]], true)
try_loadstring("\27LJ\2\ní\1\0\0\5\1\a\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\3\0-\4\0\0>\4\1\3=\3\4\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0'\2\6\0B\0\2\1K\0\1\0\0¿\20command_palette\19load_extension\15extensions\1\0\0\nsetup\14telescope\frequire\0", "config", "telescope-command-palette.nvim")
time([[Config for telescope-command-palette.nvim]], false)
-- Config for: cinnamon.nvim
time([[Config for cinnamon.nvim]], true)
try_loadstring("\27LJ\2\n⁄\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\n\16hide_cursor\1\18always_scroll\1\17scroll_limit\3ñ\1\22horizontal_scroll\2\rcentered\2\18default_delay\3\a\21override_keymaps\1\21extended_keymaps\1\18extra_keymaps\1\20default_keymaps\2\nsetup\rcinnamon\frequire\0", "config", "cinnamon.nvim")
time([[Config for cinnamon.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nV\0\0\3\1\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\2B\0\1\1K\0\1\0\0¿\rmappings\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-scrollbar ]]

-- Config for: nvim-scrollbar
try_loadstring("\27LJ\2\nÇ\3\0\0\a\0\30\0-6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\a\0005\4\5\0009\5\4\0=\5\6\4=\4\b\0035\4\v\0005\5\n\0009\6\t\0=\6\6\5=\5\f\0045\5\14\0009\6\r\0=\6\6\5=\5\15\0045\5\17\0009\6\16\0=\6\6\5=\5\18\0045\5\20\0009\6\19\0=\6\6\5=\5\21\0045\5\23\0009\6\22\0=\6\6\5=\5\24\0045\5\26\0009\6\25\0=\6\6\5=\5\27\4=\4\28\3B\1\2\0016\1\0\0'\3\29\0B\1\2\0029\1\3\1B\1\1\1K\0\1\0\30scrollbar.handlers.search\nmarks\tMisc\1\0\0\vpurple\tHint\1\0\0\thint\tInfo\1\0\0\tinfo\tWarn\1\0\0\fwarning\nError\1\0\0\nerror\vSearch\1\0\0\1\0\0\vorange\vhandle\1\0\0\ncolor\1\0\0\17bg_highlight\nsetup\14scrollbar\23nightfox.lib.color\frequire\0", "config", "nvim-scrollbar")

vim.cmd [[ packadd heirline.nvim ]]

-- Config for: heirline.nvim
try_loadstring("\27LJ\2\n8\0\1\6\0\3\0\b9\1\1\0\18\3\1\0009\1\2\1)\4\1\0)\5\1\0B\1\4\2=\1\0\0K\0\1\0\bsub\tmode\fmode_chE\0\1\5\1\4\0\a5\1\2\0-\2\0\0009\2\0\0029\4\1\0B\2\2\2=\2\3\1L\1\2\0\3¿\afg\1\0\1\tbold\2\fmode_ch\16mode_colourn\0\1\5\1\a\0\v5\1\2\0-\2\0\0009\2\0\0029\2\1\2=\2\3\1-\2\0\0009\2\4\0029\4\5\0B\2\2\2=\2\6\1L\1\2\0\3¿\abg\fmode_ch\16mode_colour\afg\1\0\1\tbold\2\18statusline_bg\fcoloursM\0\1\4\1\4\0\t'\1\0\0-\2\0\0009\2\1\0029\3\2\0008\2\3\2:\2\1\2'\3\3\0&\1\3\1L\1\2\0\3¿\b%) \tmode\15mode_names\16ÓÇ¥ Óâæ %2()\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\15foldenable\awo\bvimQ\0\1\3\1\1\0\0159\1\0\0-\2\0\0008\1\2\1\15\0\1\0X\2\tÄ9\1\0\0-\2\0\0008\1\2\1)\2\0\0\0\2\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\0¿\16status_dict%\0\1\3\1\1\0\0049\1\0\0-\2\0\0008\1\2\1L\1\2\0\0¿\16status_dictà\1\1\3\a\1\f\0\0195\3\1\0003\4\0\0=\4\2\0035\4\3\0=\2\4\0045\5\a\0-\6\0\0009\6\5\0069\6\6\0068\6\1\6=\6\b\5=\5\t\4>\4\1\0035\4\v\0003\5\n\0=\5\4\4>\4\2\0032\0\0ÄL\3\2\0\3¿\1\0\0\0\ahl\afg\1\0\0\bgit\fcolours\rprovider\1\0\0\14condition\1\0\0\0B\0\1\2\0\4\0\0056\1\1\0009\1\2\0019\1\3\1=\1\0\0K\0\1\0\25gitsigns_status_dict\6b\bvim\16status_dict$\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\thead\16status_dicté\1\0\1\3\0\5\1\0229\1\0\0009\2\1\0009\2\2\2\4\1\2\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0\t\1\0\0X\1\nÄ9\1\1\0009\1\3\1\t\1\0\0X\1\6Ä9\1\1\0009\1\4\1\t\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\fchanged\fremoved\nadded\16status_dict\16has_changes\0À\1\0\1\t\0\t\2\0315\1\0\0)\2\1\0006\3\1\0009\3\2\0039\3\3\0039\5\4\0B\3\2\2)\4\0\0\1\3\4\0X\4\1Ä)\3\0\0)\4\0\4\1\4\3\0X\4\aÄ)\4\a\0\1\2\4\0X\4\4ÄU\4\3Ä\25\3\0\3\22\2\1\2X\4ˆ6\4\5\0009\4\6\4\t\2\1\0X\6\2Ä'\6\a\0X\a\1Ä'\6\b\0\18\a\3\0008\b\2\1D\4\4\0\v%.2f%s\t%g%s\vformat\vstring\rfilename\rgetfsize\afn\bvim\1\b\0\0\6b\6k\6M\6G\6T\6P\6EÄ\16\2<\0\0\1\0\4\0\b6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0L\0\2\0K\0\1\0\t ÔÅÄ\rmodified\abo\bvim[\0\0\1\0\5\0\r6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\0\5Ä6\0\0\0009\0\1\0009\0\3\0\15\0\0\0X\1\2Ä'\0\4\0L\0\2\0K\0\1\0\t ÔÄ£\rreadonly\15modifiable\abo\bvime\0\1\5\0\a\0\r6\1\1\0009\1\2\0019\1\3\0019\3\0\0'\4\4\0B\1\3\2=\1\0\0009\1\0\0\a\1\5\0X\1\2Ä'\1\6\0L\1\2\0K\0\1\0\14[No Name]\5\a:.\16fnamemodify\afn\bvim\rfilename\24\0\1\2\0\1\0\0029\1\0\0L\1\2\0\rfilename7\0\1\4\0\4\0\0056\1\0\0009\1\1\0019\1\2\0019\3\3\0D\1\2\0\rfilename\16pathshorten\afn\bvim*\0\1\3\0\2\0\a9\1\0\0\15\0\1\0X\2\3Ä9\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \ticon(\0\1\3\0\3\0\0045\1\1\0009\2\0\0=\2\2\1L\1\2\0\afg\1\0\0\15icon_color!\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\0¿\16is_git_repoF\0\0\3\0\5\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\a\0\4\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\5\b%:t\vexpand\afn\bvimM\0\0\3\0\3\0\r6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2\21\0\0\0)\1\0\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\15getloclist\afn\bvim^\0\1\5\1\a\0\v5\1\2\0-\2\0\0009\2\0\0029\4\1\0B\2\2\2=\2\3\1-\2\0\0009\2\4\0029\2\5\2=\2\6\1L\1\2\0\3¿\abg\vmid_bg\fcolours\afg\1\0\0\tmode\16mode_colourF\0\0\3\0\5\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\a\0\4\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\5\b%:t\vexpand\afn\bvim7\0\1\4\1\2\0\0069\1\0\0-\2\0\0009\2\1\2B\2\1\2&\1\2\1L\1\2\0\2¿\21lsp_client_names\ticon7\0\1\4\1\2\0\0069\1\0\0-\2\0\0009\2\1\2B\2\1\2&\1\2\1L\1\2\0\2¿\21lsp_client_names\ticon≥\2\0\1\6\0\16\00056\1\1\0009\1\2\0019\1\3\1)\3\0\0005\4\6\0006\5\1\0009\5\2\0059\5\4\0059\5\5\5=\5\4\4B\1\3\2\21\1\1\0=\1\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0005\4\t\0006\5\1\0009\5\2\0059\5\4\0059\5\b\5=\5\4\4B\1\3\2\21\1\1\0=\1\a\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0005\4\f\0006\5\1\0009\5\2\0059\5\4\0059\5\v\5=\5\4\4B\1\3\2\21\1\1\0=\1\n\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0005\4\15\0006\5\1\0009\5\2\0059\5\4\0059\5\14\5=\5\4\4B\1\3\2\21\1\1\0=\1\r\0K\0\1\0\1\0\0\tINFO\tinfo\1\0\0\tHINT\nhints\1\0\0\tWARN\rwarnings\1\0\0\nERROR\rseverity\bget\15diagnostic\bvim\verrorsO\0\1\4\0\3\0\r9\1\0\0)\2\0\0\1\2\1\0X\1\5Ä9\1\1\0009\2\0\0'\3\2\0&\1\3\1X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\6 \15error_icon\verrorsP\0\1\4\0\3\0\r9\1\0\0)\2\0\0\1\2\1\0X\1\5Ä9\1\1\0009\2\0\0'\3\2\0&\1\3\1X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\6 \14warn_icon\rwarningsL\0\1\4\0\3\0\r9\1\0\0)\2\0\0\1\2\1\0X\1\5Ä9\1\1\0009\2\0\0'\3\2\0&\1\3\1X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\6 \14info_icon\tinfoG\0\1\3\0\2\0\f9\1\0\0)\2\0\0\1\2\1\0X\1\4Ä9\1\1\0009\2\0\0&\1\2\1X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\14hint_icon\nhints$\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\nspell\awo\bvim.\0\1\3\0\3\0\0045\1\1\0009\2\0\0=\2\2\1L\1\2\0\afg\1\0\1\tbold\2\15icon_color$\0\1\2\0\2\0\0059\1\0\0\14\0\1\0X\2\1Ä'\1\1\0L\1\2\0\bÔÅô\ticon<\0\0\3\0\5\0\0066\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2D\0\2\0\rfiletype\abo\bvim\nupper\vstring`\0\1\5\1\a\0\v5\1\2\0-\2\0\0009\2\0\0029\2\1\2=\2\3\1-\2\0\0009\2\4\0029\4\5\0B\2\2\2=\2\6\1L\1\2\0\3¿\abg\tmode\16mode_colour\afg\1\0\0\rlight_bg\fcolours`\0\1\5\1\a\0\v5\1\2\0-\2\0\0009\2\0\0029\4\1\0B\2\2\2=\2\3\1-\2\0\0009\2\4\0029\2\5\2=\2\6\1L\1\2\0\3¿\abg\rlight_bg\fcolours\afg\1\0\0\tmode\16mode_colourH\0\0\2\0\3\0\f6\0\0\0009\0\1\0009\0\2\0B\0\1\2\21\0\0\0)\1\0\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\14getqflist\afn\bvimF\0\0\3\0\5\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\a\0\4\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\5\b%:t\vexpand\afn\bvim'\0\0\2\1\1\0\5-\0\0\0009\0\0\0B\0\1\2\19\0\0\0L\0\2\0\0¿\14is_activeß\1\0\0\4\1\6\0\b-\0\0\0009\0\0\0005\2\2\0005\3\1\0=\3\3\0025\3\4\0=\3\5\2D\0\2\0\0¿\fbuftype\1\5\0\0\vnofile\thelp\rquickfix\rterminal\rfiletype\1\0\0\1\a\0\0\rNvimTree\tdbui\vpacker\rstartify\rfugitive\18fugitiveblame\19buffer_matches@\0\0\1\0\4\0\t6\0\0\0009\0\1\0009\0\2\0\6\0\3\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\thelp\rfiletype\abo\bvim_\0\0\5\0\6\0\v6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\0026\1\0\0009\1\3\0019\1\4\1\18\3\0\0'\4\5\0D\1\3\0\a:t\16fnamemodify\afn\22nvim_buf_get_name\bapi\bvim˙\1\0\1\a\0\14\0\0296\1\1\0009\1\2\0019\1\3\1)\3\0\0B\1\2\2=\1\0\0006\1\1\0009\1\4\0019\1\5\0019\3\0\0'\4\6\0B\1\3\0026\2\t\0'\4\n\0B\2\2\0029\2\v\0029\4\0\0\18\5\1\0005\6\f\0B\2\4\3=\3\b\0=\2\a\0006\2\1\0009\2\4\0029\2\r\2)\4\1\0B\2\2\2=\2\r\0K\0\1\0\tmode\1\0\1\fdefault\2\19get_icon_color\22nvim-web-devicons\frequire\15icon_color\ticon\a:e\16fnamemodify\afn\22nvim_buf_get_name\bapi\bvim\rfilename \0\2\3\0\1\0\6\a\1\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\5Ù\29\1\0!\0»\1\4±\0046\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0026\1\3\0'\3\5\0B\1\2\0026\2\3\0'\4\6\0B\2\2\0026\3\3\0'\5\a\0B\3\2\0025\4\b\0005\5\t\0005\6\n\0005\a\r\0009\b\v\0039\b\f\b=\b\14\a5\b\17\0009\t\15\0039\t\16\t=\t\18\b9\t\15\0039\t\19\t=\t\20\b=\b\21\a5\b\22\0009\t\v\0039\t\f\t=\t\14\b5\t\23\0009\n\15\0039\n\19\n=\n\18\t9\n\15\0039\n\16\n=\n\20\t=\t\21\b5\t\25\0003\n\24\0=\n\26\t3\n\27\0=\n\21\t5\n\29\0003\v\28\0=\v\21\n>\n\1\t5\n\31\0003\v\30\0=\v\14\n>\n\2\t5\n!\0003\v \0=\v\"\n5\v%\0005\f$\0009\r\15\0039\r#\r=\r\18\f=\f\21\v5\f&\0>\f\1\v5\f(\0009\r'\2=\r\14\f>\f\2\v>\v\1\n3\v)\0005\f+\0009\r*\0=\r\"\f3\r,\0=\r\26\f9\r-\1)\15\2\0004\16\3\0005\17.\0005\0181\0009\19\15\0039\19/\0199\0190\19=\19\18\18=\18\21\17>\17\1\0165\0173\0003\0182\0=\18\14\17>\17\2\16\18\17\6\0B\r\4\2>\r\1\f5\r5\0003\0144\0=\14\"\r9\14-\1)\16\4\0004\17\4\0\18\18\v\0'\0206\0'\0210\0'\0227\0B\18\4\2>\18\1\17\18\18\v\0'\0208\0'\0219\0'\22:\0B\18\4\2>\18\2\17\18\18\v\0'\20;\0'\21<\0'\22=\0B\18\4\0?\18\0\0004\18\3\0\18\19\v\0'\0218\0'\0229\0'\23:\0B\19\4\2>\19\1\18\18\19\v\0'\21;\0'\22<\0'\23=\0B\19\4\0?\19\1\0004\19\3\0\18\20\v\0'\0228\0'\0239\0'\24:\0B\20\4\0?\20\2\0\18\20\6\0B\14\6\0?\14\2\0>\r\2\f5\r?\0003\14>\0=\14\14\r5\14A\0009\15\15\0039\15@\15=\15\18\14=\14\21\r4\14\3\0005\15C\0003\16B\0=\16\14\0155\16E\0009\17\15\0039\17D\17=\17\18\16=\16\21\15>\15\1\0145\15G\0003\16F\0=\16\14\0155\16I\0009\17\15\0039\17H\17=\17\18\16=\16\21\15>\15\2\0145\15K\0003\16J\0=\16\26\0159\16-\1)\18\1\0005\19M\0003\20L\0=\20\14\0195\20O\0003\21N\0=\21\14\20B\16\4\0?\16\2\0005\16Q\0003\17P\0=\17\14\0163\17R\0=\17\21\0165\17T\0003\18S\0=\18\"\0175\18V\0009\19\v\0039\19U\19=\19\14\0185\19X\0009\20\15\0039\20W\20=\20\18\19=\19\21\18>\18\1\0175\18Z\0009\19Y\2=\19\14\18>\18\2\17>\4\3\0174\18\3\0009\19-\1)\21\3\0004\22\a\0>\17\1\22>\16\2\22>\15\3\22>\14\4\22>\4\5\22>\r\6\0224\23\5\0>\17\1\23>\16\2\23>\15\3\23>\14\4\0234\24\3\0>\17\1\24>\15\2\0244\25\3\0>\15\1\25B\19\6\0?\19\2\0005\19\\\0005\20[\0009\21\15\0039\21@\21=\21\18\20=\20\21\19>\t\1\0199\20-\1)\22\3\0\18\23\n\0\18\24\6\0B\20\4\2>\20\2\0199\20]\0015\22^\0009\23\15\0039\23_\23\18\24\f\0B\20\4\0?\20\0\0005\20a\0003\21`\0=\21\"\0209\21]\0015\23b\0009\24\15\0039\24_\24\18\25\18\0B\21\4\0?\21\2\0005\21d\0009\22c\2=\22\14\0213\22e\0=\22\"\0215\22g\0009\23\15\0039\23f\23=\23\18\22=\22\21\0214\22\3\0005\23h\0005\24i\0=\24\21\23>\23\1\0225\23j\0003\24k\0=\24\21\23>\23\2\0225\23m\0003\24l\0=\24\"\0235\24n\0009\25\15\0039\25@\25=\25\18\24=\24\21\0235\24p\0005\25o\0=\25q\0249\25r\0=\25\"\0249\25-\1)\27\2\0004\28\3\0005\29t\0003\30s\0=\30\14\29>\29\1\0284\29\3\0005\30v\0003\31u\0=\31\14\30>\30\1\29\18\30\6\0B\25\5\0?\25\2\0>\24\1\0235\24x\0009\25w\0=\25\"\0245\25y\0=\25q\0243\25z\0=\25\26\0245\25|\0003\26{\0=\26\14\0255\26\0009\27\15\0039\27}\0279\27~\27=\27\18\26=\26\21\25>\25\1\0245\25Å\0003\26Ä\0=\26\14\0255\26É\0009\27\15\0039\27}\0279\27Ç\27=\27\18\26=\26\21\25>\25\2\0245\25Ö\0003\26Ñ\0=\26\14\0255\26á\0009\27\15\0039\27}\0279\27Ü\27=\27\18\26=\26\21\25>\25\3\0245\25â\0003\26à\0=\26\14\0255\26ã\0009\27\15\0039\27}\0279\27ä\27=\27\18\26=\26\21\25>\25\4\24>\24\2\0235\24å\0003\25ç\0=\25\"\0245\25è\0009\26\15\0039\26é\26=\26\18\25=\25\21\24>\24\3\0239\24-\1)\26\2\0005\27ë\0003\28ê\0=\28\21\27>\4\1\0275\28ì\0003\29í\0=\29\14\28>\28\2\27>\4\3\0275\28ï\0003\29î\0=\29\14\28>\28\4\27\18\28\6\0B\24\4\2>\24\4\23>\4\5\0235\24ó\0009\25ñ\2=\25\14\24>\24\6\23>\4\a\0235\24ô\0003\25ò\0=\25\21\0245\25õ\0009\26\v\0039\26ö\26=\26\14\0253\26ú\0=\26\21\25>\25\1\0245\25ù\0>\25\2\24>\4\3\0245\25ü\0009\26û\2=\26\14\0253\26†\0=\26\"\0255\26¢\0009\27\15\0039\27°\27=\27\18\26=\26\21\25>\25\4\24>\21\5\24>\22\6\24>\24\b\0235\24§\0009\25£\0=\25\"\0245\25ß\0009\26•\1'\28¶\0B\26\2\0029\26\18\26=\26\18\0259\26•\1'\28¶\0B\26\2\0029\26\20\26=\26\20\25=\25\21\0249\25]\0015\27®\0009\28\v\0039\28©\28>\28\2\0279\28\15\0039\28_\28\18\29\19\0B\25\4\2>\25\1\24>\5\2\0249\25]\0014\27\3\0009\28\v\0039\28™\28>\28\1\0279\28\v\0039\28©\28>\28\2\0279\28\15\0039\28_\28\18\29\20\0B\25\4\2>\25\3\24>\5\4\0249\25]\0015\27´\0009\28\v\0039\28™\28>\28\1\0279\28\15\0039\28_\28\18\29\23\0B\25\4\0?\25\3\0005\25≠\0003\26¨\0=\26\"\0255\26Æ\0009\27\15\0039\27\19\27=\27\18\0269\27\15\0039\27#\27=\27\20\26=\26\21\0254\26\5\0005\27∞\0009\28\v\0039\28Ø\28=\28\14\0275\28±\0009\29\15\0039\29#\29=\29\18\0289\29\15\0039\29\16\29=\29\20\28=\28\21\27>\27\1\0265\27≤\0>\27\2\26>\21\3\26>\22\4\26>\26\1\0255\26¥\0003\27≥\0=\27\"\0265\27∂\0009\28\15\0039\28µ\28=\28\18\0279\28\15\0039\28\16\28=\28\20\27=\27\21\0265\27∏\0005\28∑\0009\29\15\0039\29\19\29=\29\20\28=\28\21\27>\f\1\27>\4\2\27>\b\3\27>\27\1\26>\5\2\0265\27∫\0>\a\1\27>\4\2\0275\28π\0009\29\15\0039\29\19\29=\29\20\28=\28\21\27>\18\3\27>\4\4\27>\b\5\27>\27\3\26>\5\4\26>\25\5\0265\27º\0003\28ª\0=\28\"\0275\28æ\0003\29Ω\0=\29\"\0283\29ø\0=\29\14\0285\29¡\0009\30\15\0039\30¿\30=\30\18\29=\29\21\0285\29√\0003\30¬\0=\30\26\0293\30ƒ\0=\30≈\29>\28\1\29>\27\2\29>\24\3\29>\26\4\0296\30\3\0' ∆\0B\30\2\0029\30«\30\18 \29\0B\30\2\0012\0\0ÄK\0\1\0\nsetup\rheirline\14stop_when\0\1\0\0\0\1\0\0\tblue\0\1\0\0\0\1\0\1\rprovider\6 \0\1\0\0\1\0\0\1\0\0\1\0\0\1\0\0\nwhite\1\0\0\0\1\0\1\rprovider\bÓúî\1\0\0\1\0\0\15slant_left\1\0\0\1\0\0\0\1\3\0\0\0\5\16left_filled\17right_filled\1\2\0\0\5\1\0\0\15StatusLine\18get_highlight\1\0\0\14is_active\1\0\0\rred_dark\0\1\0\0\19quickfix_count\1\0\1\rprovider\bÓúî\0\1\0\0\17left_rounded\1\0\0\0\1\0\0\19search_results\1\0\0\0\1\0\0\0\1\0\0\0\1\0\1\tbold\2\vyellow\0\1\0\1\rprovider\t ÔßÖ\1\0\0\thint\1\0\0\0\1\0\0\tinfo\1\0\0\0\1\0\0\twarn\1\0\0\0\1\0\0\nerror\tdiag\1\0\0\0\0\1\0\4\15error_icon\n ÔÅó \14info_icon\n ÔÅ™ \14warn_icon\n ÔÅ± \14hint_icon\n ÔÅö \1\0\0\20has_diagnostics\1\0\0\0\1\0\0\0\17lsp_attached\vstatic\1\0\0\1\0\1\ticon\n Óûô \1\0\0\1\0\0\0\0\1\0\1\rprovider\b %P\1\0\1\tbold\2\1\0\1\rprovider\14%l/%L|%c \1\0\0\vpurple\0\1\0\0\20locallist_count\1\3\0\0\6 \6 \1\0\0\0\18statusline_bg\1\3\0\0\6 \6 \rsurround\1\0\0\1\0\0\1\0\0\rgit_root\1\0\0\vfolder\1\0\0\16folder_icon\1\0\0\0\0\1\0\0\0\1\0\0\0\1\0\0\0\1\0\0\0\1\0\0\vorange\1\0\0\0\1\0\0\ngreen\1\0\0\0\1\0\0\fgrey_fg\1\0\0\0\t Ôßâ\vchange\fchanged\n ÔÖÜ \bdel\fremoved\n ÔÉæ \nadded\1\0\0\0\1\0\0\0\1\0\0\badd\bgit\1\0\1\rprovider\n Ôêò \28make_flexible_component\0\1\0\0\16is_git_repo\0\1\0\0\16fold_method\1\0\1\rprovider\nÓ™ë  \1\0\0\1\0\1\tbold\2\15green_pale\14condition\1\0\0\0\1\0\0\0\1\0\1\rprovider\n Óò´ \0\0\tinit\1\0\0\0\1\0\0\1\0\0\ahl\abg\vmid_bg\afg\1\0\0\rshort_bg\fcolours\rprovider\1\0\0\18slant_right_2\15separators\1\0\1\rprovider\5\1\0\1\rprovider\a%=\1\0\1\rprovider\6 \30plugins.UI.heirline.utils\31plugins.UI.heirline.futils\19heirline.utils\24heirline.conditions\frequireŸ\2highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon\nhighlight! link NeoTreeDirectoryName NvimTreeFolderName\nhighlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink\nhighlight! link NeoTreeRootName NvimTreeRootFolder\nhighlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName\nhighlight! link NeoTreeFileNameOpened NvimTreeOpenedFile\n\bcmd\bvim\aÄÄ¿ô\4\5ÄÄ¿ô\4\3ÄÄ¿ô\4\vÄÄ¿ô\4\0", "config", "heirline.nvim")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

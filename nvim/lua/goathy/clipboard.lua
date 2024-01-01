local function is_wsl()
  local proc_version = io.open('/proc/version', 'r')
  if proc_version then
    local version_info = proc_version:read('*all')
    proc_version:close()
    return version_info:lower():find('microsoft') ~= nil
  else
    return false
  end
end


function setup ()
  if is_wsl() then
    vim.g.clipboard = {
      name = 'wsl-clipboard',
      copy = {
        ['+'] = 'clip.exe',
        ['*'] = 'clip.exe',
      },
      paste = {
        ['+'] = 'powershell.exe Get-Clipboard',
        ['*'] = 'powershell.exe Get-Clipboard',
      },
      cache_enabled = 0,
    }
  end
end

return {
  setup = setup
}


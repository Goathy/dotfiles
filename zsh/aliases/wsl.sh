if uname -r | grep -q "microsoft"; then
    alias wcopy="$(which clip.exe)"
    alias wpaste="$(which powershell.exe) Get-Clipboard | sed \"s/\r$//\""
fi


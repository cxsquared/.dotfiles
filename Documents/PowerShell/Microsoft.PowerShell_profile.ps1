# https://ohmyposh.dev/
oh-my-posh init pwsh --config '~/.ohmysquared.omp.json' | Invoke-Expression

# Better history Support
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward 
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Basic action Alias
Set-Alias open Invoke-Item
Set-Alias touch New-Item

if type -q /Applications/Tailscale.app/Contents/MacOS/Tailscale
  function tailscale --wraps=/Applications/Tailscale.app/Contents/MacOS/Tailscale --description 'alias tailscale=/Applications/Tailscale.app/Contents/MacOS/Tailscale'
    /Applications/Tailscale.app/Contents/MacOS/Tailscale $argv
  end
end

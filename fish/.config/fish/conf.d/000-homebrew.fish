# Parts cribbed from https://github.com/halostatue/fish-brew
if not command --query brew
    for prefix in $HOME/.brew $HOME/.linuxbrew /opt/homebrew /usr/local
        test -x $prefix/bin/brew
        or continue

        {$prefix}/bin/brew shellenv | source
        break
    end
end

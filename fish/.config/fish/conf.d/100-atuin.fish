if status is-interactive
    # replace C-r history with atuin
    if type -q atuin
       atuin init fish --disable-up-arrow | source
    end
end

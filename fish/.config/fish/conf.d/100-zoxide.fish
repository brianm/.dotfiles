if status is-interactive
    # enable z command via zoxide
    if type -q zoxide
        zoxide init fish | source
    end
end

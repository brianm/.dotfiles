if status is-interactive
    if test -e "$HOME/.cargo/env.fish"
        source "$HOME/.cargo/env.fish"
    end
end

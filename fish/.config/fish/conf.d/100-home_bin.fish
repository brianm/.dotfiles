if test -x ~/.bin
    fish_add_path --path ~/.bin
end

if test -x ~/bin
    fish_add_path --path ~/bin
end

# for uv linked binaries
if test -x ~/.local/bin
    fish_add_path --path ~/.local/bin
end

if test -d ~/.bin
    fish_add_path --path ~/.bin
end

if test -d ~/bin
    fish_add_path --path ~/bin
end

# for uv linked binaries
if test -d ~/.local/bin
    fish_add_path --path ~/.local/bin
end

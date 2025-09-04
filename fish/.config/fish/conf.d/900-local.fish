if test -d $__fish_config_dir/conf.local.d
    for file in (ls $__fish_config_dir/conf.local.d/*.fish | sort -u)
        source $file
    end
end

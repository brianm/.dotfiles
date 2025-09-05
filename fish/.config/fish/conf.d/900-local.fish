if test -d $__fish_config_dir/conf.local.d
    set -l arr files = ls $__fish_config_dir/conf.local.d/*.fish | sort -u
    for file in $files
        source $file
    end
end

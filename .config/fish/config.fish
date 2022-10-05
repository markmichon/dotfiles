function dev
	cd ~/_dev
end

function gco
	command git checkout $argv
end

function g
	command git $argv
end

function starship_config
	command code ~/_dev/dotfiles/.config/starship.toml
end

function composer
    command php composer.phar $argv
end

function config
    command code ~/.config/fish/config.fish
end

function write
    command code --extensions-dir ~/code_profiles/writing/ext --user-data-dir ~/code_profiles/writing/data ~/_dev/writing
end

function nvm
    command fnm $argv
end

starship init fish | source
# --httptoolkit--
# This section will be reset each time a HTTP Toolkit terminal is opened
if [ -n "$HTTP_TOOLKIT_ACTIVE" ]
    # When HTTP Toolkit is active, we inject various overrides into PATH
    set -x PATH "/Applications/HTTP Toolkit.app/Contents/Resources/app/httptoolkit-server/overrides/path" $PATH;

    if command -v winpty >/dev/null 2>&1
        # Work around for winpty's hijacking of certain commands
        alias php=php
        alias node=node
    end
end
# --httptoolkit-end--
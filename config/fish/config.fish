if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_key_bindings fish_user_key_bindings
    set -gx EDITOR nvim
end

starship init fish | source

thefuck --alias | source

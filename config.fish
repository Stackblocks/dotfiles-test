if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
    set -gx EDITOR nvim
end

starship init fish | source

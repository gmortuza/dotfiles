# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
 
#Enable vim in the terminal
# set -o vi
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
 for file in ~/.{path,exports,aliases,functions,extra,fzf.zsh}; do
 	[ -r "$file" ] && [ -f "$file" ] && source "$file";
 done;
 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gmortuza/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gmortuza/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gmortuza/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gmortuza/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


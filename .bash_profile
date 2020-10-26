# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra,fzf.zsh}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

#Enable vim in the terminal
set -o vi

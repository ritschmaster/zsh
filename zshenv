# Rust:
. "$HOME/.cargo/env"

###################################################################
# Important variables:
#export EDITOR='nano'
export PATH="$PATH:$HOME/.dsda-doom/bin"

###################################################################
# Functions
docx2md() {
	if [ "$#" -ne 2 ]; then
		echo 'Wrong number of arguments' >&2
		echo 'Usage: docx2md <.docx> <.md>' >&2
		return
	fi
	
	pandoc \
		--wrap=none \
		--extract-media=images \
		--from docx \
		--to markdown \
		"$1" \
		 -o "$2"
}

function ydiff_ez() {
	diff -u "$1" "$2" | ydiff -s
}

###################################################################
# Aliasses:
alias python="python3"
alias ls="eza -l"
alias cat="bat"

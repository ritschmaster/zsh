# Rust:
. "$HOME/.cargo/env"

###################################################################
# Important variables:
#export EDITOR='nano'
export PATH="$PATH:$HOME/.cargo/bin:$HOME/.dsda-doom/bin"

###################################################################
# Functions
z_docx2md() {
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

function z_subtract_set_x_from_set_y() {
	if [ "$#" -ne 2 ]; then
		echo 'Wrong number of arguments' >&2
		echo 'Usage: z_subtract_set_x_from_set_y <set1.txt> <set2.txt>' >&2
		return
	fi

	grep -v -x -f "$1" "$2"
}

###################################################################
# Aliasses:
alias python="python3"
alias ls="ls -lGh"
alias fc="fc -l 0"
alias history="history 0"

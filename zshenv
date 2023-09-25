# Rust:
. "$HOME/.cargo/env"

###################################################################
# Important variables:
export EDITOR='vi'
export PATH="$PATH:$HOME/.dsda-doom/bin"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/homebrew/Cellar/openssl@1.1/1.1.1t/lib/pkgconfig"
export libcryptopp_CFLAGS='-I/Users/ritsch_master/Documents/Work/CLibraries/cryptopp870'
export libcryptopp_LIBS='-L/Users/ritsch_master/Documents/Work/CLibraries/cryptopp870'

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

function pb_strlen() {
	pb_content=$(pbpaste)
	pb_length=${#pb_content}
	echo $pb_length | pbcopy
}

function jpg_to_bp_base64() {
	if [ $# -ne 1 ]; then
		return 1
	fi

	cat "$1" | base64  | pbcopy
}

###################################################################
# Aliasses:
alias python="python3"

alias pb_tidyhtml="pbpaste | tidy -i | pbcopy"
alias pb_base64_encode="pbpaste | base64 | pbcopy"
alias pb_base64_decode="pbpaste | base64 -d | pbcopy"



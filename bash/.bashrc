# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

eval "$(starship init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "$HOME/.cargo/env"

function remote_wireshark() {
    if [ $# -eq 2 ]; then
        rm -rf /tmp/remote_wireshark_$1
        mkfifo /tmp/remote_wireshark_$1
        wireshark -k -i /tmp/remote_wireshark_$1 &
        ssh $1 "sudo tcpdump -U -w - -i $2" > /tmp/remote_wireshark_$1 &
    else
        echo "Usage: remote_wireshark <ssh_login> <iface>"
    fi
}

#ZELLIJ_AUTO_ATTACH=true ZELLIJ_AUTO_EXIT=true eval "$(zellij setup --generate-auto-start bash)"

export MANPATH=$MANPATH:/home/andrinod/texlive/texmf-dist/doc/man
export INFOPATH=$INFOPATH:/home/andrinod/texlive/texmf-dist/doc/info
export PATH=$PATH:/home/andrinod/texlive/bin/x86_64-linux

alias ccat="\cat"
alias cat=bat

alias ls=eza
alias lls="\ls"
alias lg="eza -lah --git -I\".git\""
alias lt="eza -laT -I\".git\""
alias lgt="eza -lahT --git -I\".git\""


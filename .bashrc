# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias cp="cp -iZ"
alias cl="clear"
alias df="df -hT"
alias di="df -i"
alias grep="grep -Hirn"
alias ll="ls -lisahZ"
alias mv="mv -iZ"
alias rm="rm -i"

function gfind {
	# fast find function for high amounts of files to grep through
	processor_count=$(grep "processor" /proc/cpuinfo | wc -l)

	if [ "$#" != "2" ]
	then
		echo -e "\nUsage: gfind <search string> <path to search through>\n"
		return 1
	fi

	find $2 -type f -print0 2>/dev/null | xargs -0 -P$processor_count -n10 grep --color -in "$1" 2>/dev/null
}

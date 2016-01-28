#Alias
alias gn='geeknote'
# ------------------------------------------------------------------------------
#          FILE:  geeknote.plugin.zsh
#   DESCRIPTION:  oh-my-zsh plugin file.
#        AUTHOR:  Georg Ogris (georg.ogris@gmail.com)
#       VERSION:  0.0.1
# ------------------------------------------------------------------------------


# add to a new bookmark to Bookmarks
function gnb() {
	local note=$1
	#shift 1

	geeknote create --title $note \
	       	--content $note \
		--notebook Bookmarks \
		--tags readings
		#--tags $@
}

function gnc() {
	local note=$1
	geeknote edit --note $note --content WRITE --notebook catalysts
}

function gns() {
	local pattern=$1
	geeknote find --search $pattern --notebooks catalysts --content-search
}

alias gnl='geeknote find --notebooks catalysts'


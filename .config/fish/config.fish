# ~/.config/fish/config.fish

### Functions
function md
    mkdir -p $argv && cd $argv;
end

### Aliases

# Allow aliases to be with sudo
alias sudo="sudo "

# List dir contents aliases
# ref: http://ss64.com/osx/ls.html
# Long form no user group, color
alias l="ls -oG"
# Order by last modified, long form no user group, color
alias lt="ls -toG"
# List all except . and ..., color, mark file types, long form no user group, file size
alias la="ls -AGFoh"
# List all except . and ..., color, mark file types, long form no use group, order by last modified, file size
alias lat="ls -AGFoth"

# Concatenate and print content of files (add line numbers)
alias catn="cat -n"

# Open file in existing MacVim window
alias gvim="open -a MacVim"
alias mvim="open -a MacVim"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"

# Copy my public key to the pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'"

# Flush DNS cache
alias flushdns="dscacheutil -flushcache"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias clean="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias showdot="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedot="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias showdesk="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedesk="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# # Detect which `ls` flavor is in use
# if ls --color > /dev/null 2>&1; then # GNU `ls`
#   colorflag="--color"
# else # OS X `ls`
#   colorflag="-G"
# fi

# # List all files colorized in long format, including dot files
# alias la="ls -lahF ${colorflag}"

# # Always use color output for `ls`
# alias ls="command ls ${colorflag}"
# export LS_COLORS='no=00:fi=00:di=04;35:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# export LSCOLORS='Gxfxcxdxbxegedabagacad'

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update_system='sudo softwareupdate -i -a'

### Starship 
starship init fish | source

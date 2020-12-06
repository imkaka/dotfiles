# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# Setting PATH for Python 3.7
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH

# Pyenv
# if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
# RabbitMQ
# export PATH=$PATH:/usr/local/sbin
# Poetry
# export PATH="$HOME/.poetry/bin:$PATH"

WINDOWS_USERNAME=user
OBSIDIAN_VAULT_DIR=/mnt/d/Documents/obsidian

alias ls='ls -hNA --color=auto --group-directories-first'
alias ll='ls -lhNA --color=auto --group-directories-first'
alias rm='rm -i'
alias grep='grep --color=auto'

alias ws='cd /mnt/d/Documents/Workspace'
alias ms='cd /mnt/d/Music'
alias sc='cd /mnt/d/Documents/School/code-ptit-solutions/C++'
alias compe='cd /mnt/d/Documents/Workspace/cp'
alias desktop="cd /mnt/c/Users/${WINDOWS_USERNAME}/Desktop"
alias whome="cd /mnt/c/Users/${WINDOWS_USERNAME}"
alias obsi="cd ${OBSIDIAN_VAULT_DIR}"

alias nc='cd ~/.config/nvim/; nvim .'
alias todo="nvim ${OBSIDIAN_VAULT_DIR}/todo.md"

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias glog='git log --graph --oneline --decorate'
alias lzd=lazydocker

# yt-dlp
alias vdl='yt-dlp -o "%(title)s.%(ext)s" -t mp4' # Video download
alias mdl='yt-dlp -o "%(title)s.%(ext)s" -t mp3' # Music download

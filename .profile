# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# Add all directories in `~/.local/bin` to $PATH
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

# export MANPAGER="bat -pl man"

nvim() {
  if ! pidof socat >/dev/null 2>&1; then
    [ -e /tmp/discord-ipc-0 ] && rm -f /tmp/discord-ipc-0
    socat UNIX-LISTEN:/tmp/discord-ipc-0,fork \
      EXEC:"npiperelay.exe //./pipe/discord-ipc-0" 2>/dev/null &
  fi

  command nvim "$@"
}

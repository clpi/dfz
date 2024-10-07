eval (starship init elvish | slurp)
eval (zoxide init elvish | slurp)
eval (navi widget elvish | slurp)
eval (direnv hook elvish | slurp)

use str

fn call-navi {
  if (eq $edit:current-command '') {
    var answer = (navi --print)
    edit:replace-input $answer
  } elif (not (str:contains-any $edit:current-command '|')) {
    var answer = (navi --print --query $edit:current-command)
    if (not-eq $answer '') {
      edit:replace-input $answer
    }
  } else {
    var @cmds query = (str:split '|' $edit:current-command)
    var answer = (
      if (eq $query '') {
        navi --print
      } else {
        navi --print --query $query
      }
    )

    if (not-eq $answer '') {
      set cmds = [$@cmds $answer]
      edit:replace-input (str:join '| ' $cmds)
    }
  }
}

set edit:insert:binding[Ctrl-g] = { call-navi >/dev/tty 2>&1 }

fn eza {
    command eza $args | less -R
}

fn eza:preview {
    command eza --preview $args | less -R
}

fn eza:preview:zoxide {
    command eza --preview "zoxide info" | less -R
}

alias cat 'bat --plain'


# alias ls 'eza --color=always --group-directories-first --color-mode=always'

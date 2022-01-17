#!/usr/bin/env bash
_tasks()
{
    local CMDLINE
    local IFS=$'\n'
    CMDLINE=(--bash-completion-index $COMP_CWORD)

    for arg in ${COMP_WORDS[@]}; do
        CMDLINE=(${CMDLINE[@]} --bash-completion-word $arg)
    done

    COMPREPLY=( $( ./bin/tasks "${CMDLINE[@]}") )
}

complete -o filenames -F _tasks tasks

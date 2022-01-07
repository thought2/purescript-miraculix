###-begin-tasks-completions-###
#
# yargs command completion script
#
# Installation: tasks/bin/tasks completion >> ~/.bashrc
#    or tasks/bin/tasks completion >> ~/.bash_profile on OSX.
#
_tasks_yargs_completions()
{
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=$(tasks/bin/tasks --get-yargs-completions "${args[@]}")

    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=()
    fi

    return 0
}
complete -o bashdefault -o default -F _tasks_yargs_completions tasks
###-end-tasks-completions-###


#/bin/bash
# FILES="$@"

# function gitStatus() {
#     git status | grep -o -c 'nix-stuff.code-workspace'
# }

# for FILE in $FILES
# do
#     echo $FILE
# done

TASKS_CHANGED=$(git status | grep -o -c 'tasks.json')
if [ $TASKS_CHANGED == 1 ]
then
    echo "tasks.json has been updated!"
    # backup old .vscode/tasks.json
    # add new one
    # function merge() { touch merge_result git merge-file $1 merge_result $2 rm merge_result }
fi
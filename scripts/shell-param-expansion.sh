#!/bin/bash
# https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
read -p "Enter a thing: " THING
DEFAULT="This is the default value"

# If THING is unset or null, the expansion of DEFAULT is substituted. Otherwise, the value of THING is substituted.
# echo ${THING:-${DEFAULT}}

# If THING is unset or null, the expansion of DEFAULT is assigned to THING. The value of THING is then substituted. Positional THINGs and special THINGs may not be assigned to in this way.
# ${THING:=${DEFAULT}}
# echo $THING

# If THING is null or unset, the expansion of a variable (or a message to that effect if a variable  is not present) is written to the standard error and the shell, if it is not interactive, exits. Otherwise, the value of THING is substituted.
# ${THING:?"THING wasn't set so throw this custom error message (stderr)"}

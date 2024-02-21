
#!/bin/bash
# info: update user disk quota
# options: USER
#
# example: v-update-user-quota alice
#
# The functions upates disk quota for specific user

#----------------------------------------------------------#
#                Variables & Functions                     #
#----------------------------------------------------------#

# Argument definition
user=$1

# Includes
# shellcheck source=/etc/hestiacp/hestia.conf
source /etc/hestiacp/hestia.conf
# shellcheck source=/usr/local/hestia/func/main.sh
source $HESTIA/func/main.sh
# load config file
source_conf "$HESTIA/conf/hestia.conf"

#----------------------------------------------------------#
#                    Verifications                         #
#----------------------------------------------------------#

check_args '1' "$#" 'USER'
is_format_valid 'user'
is_object_valid 'user' 'USER' "$user"


# Logging
log_event "$OK" "$user"

exit

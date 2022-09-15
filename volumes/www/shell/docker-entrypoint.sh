#!/bin/bash 
echo "$0: entrypoint init"

source "/var/www/shell/init.sh"

source_user_home="/root"
destination_user_home="/home/mnt/root"

invertMount $source_user_home $destination_user_home

source /var/www/shell/ssh/ssh-keygen.sh
#source /var/www/shell/php/init_install_laravel_by_composer.sh
source /var/www/shell/php/init_by_git_clone.sh
exec "$@"
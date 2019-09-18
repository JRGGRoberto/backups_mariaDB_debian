#!/bin/bash

NOW=$(date +"%Y%m%d_%H")

mysqldump -u intranet -pWhereSmYCaloi8 intranet -R > /var/www/html/intranet/database.sql
tar -czvf /home/adminprevimil/bk/intranet_"$NOW".tar.gz /var/www/html/intranet/
rm -rf /var/www/html/intranet/database.sql

mysqldump -u xwiki -pxwiki xwiki -R > /home/adminprevimil/bk/xwiki.sql
tar -czvf /home/adminprevimil/bk/xwiki_"$NOW".tar.gz /home/adminprevimil/bk/xwiki.sql
rm -rf /home/adminprevimil/bk/xwiki.sql

mysqldump -u mantis -pWhereSmYCaloi9 db_mantisbt -R > /home/adminprevimil/bk/db_mantisbt.sql
tar -czvf /home/adminprevimil/bk/db_mantisbt_"$NOW".tar.gz /home/adminprevimil/bk/db_mantisbt.sql
rm -rf /home/adminprevimil/bk/db_mantisbt.sql


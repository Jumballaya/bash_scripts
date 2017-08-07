#!/bin/bash
TIMESTAMP=$(date +'%m-%d-%Y')
PASSWORD='root'
USER=root
DATABASE=EC
DB_FILE=dump.sql
EXCLUDED_TABLES=(
accesslog
search_index
)

IGNORED_TABLES_STRING=''
for TABLE in "${EXCLUDED_TABLES[@]}"
do :
IGNORED_TABLES_STRING+=" --ignore-table=${DATABASE}.${TABLE}"
done

echo "Dump structure"
mysqldump --user=${USER} --password=${PASSWORD} --single-transaction --no-data ${DATABASE} > ${DB_FILE}

echo "Dump content"
mysqldump --user=${USER} --password=${PASSWORD} ${DATABASE} ${IGNORED_TABLES_STRING} >> ${DB_FILE}

mv ${DB_FILE} ${DB_FILE}-${TIMESTAMP}.sql

#!/bin/bash

# variables for backup configuarations
source_dir="/home/zolet-sec/Documents"
backup_dir="/home/zolet-sec/backup"
date_format=$(date +%Y-%m-%d)
backup_file="backup_${date_format}.tar.gz"

# create backup
echo "Creating backup of $source_dir..."

tar -czf "${backup_dir}/${backup_file}" "$source_dir"

# check if backup was successful
if [ $? -eq 0 ]; then
  echo "Backup created successfully: ${backup_dir}/${backup_file}"
  echo "Backup size: $(du -h ${backup_dir}/${backup_file} | cut -f1)"

else
  echo "Backup failed"
fi




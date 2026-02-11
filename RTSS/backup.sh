#!/bin/bash
backup_dir="/path/to/backup"
backup_source="/path/to/source"
timestamp=$(date +%Y-%m-%d%/H:%M:%S)

tar -czf "$backup_dir/backup_$timestamp.tar.gz" "$source_dir"

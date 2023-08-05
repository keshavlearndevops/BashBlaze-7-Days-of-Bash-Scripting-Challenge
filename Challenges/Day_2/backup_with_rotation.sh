#!/bin/bash

# Set the source and backup directory
source_directory=$(pwd)
bk_dir="/d/BASH-CHALLENGE/"
backup_directory="$bk_dir/backups"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_directory"

# Create a timestamp for the current backup
timestamp=$(date +"%Y%m%d%H%M%S")
backup_folder="$backup_directory/backup_$timestamp"

# Perform the backup
cp -R "$source_directory" "$backup_folder"

# Remove old backups if there are more than 3
ls -dt "$backup_directory/backup_"* | tail -n +4 | xargs rm -rf

echo "Backup completed successfully: $backup_folder"

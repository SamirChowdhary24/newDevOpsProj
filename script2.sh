#!/bin/bash

# Function to print usage
# Guides the user on how to run the script properly if they use it incorrectly
print_usage() {
    echo "Usage: $0 -s <source_directory> -d <destination_directory> [-c]"
    echo "  -s : Source directory to back up" #Specify the folder you want to back up.
    echo "  -d : Destination directory for the backup" #Specify where the backup should go.
    echo "  -c : Optional flag to compress the backup into a .tar.gz file" #Compress the backup into a .tar.gz file.
    exit 1
}

# Parse input arguments

COMPRESS=false
while getopts "s:d:c" opt; do # Parses command-line options (-s, -d, -c).
    case $opt in
        s) SOURCE_DIR=$OPTARG ;;# s: Captures the source directory path and saves it in SOURCE_DIR.
        d) DEST_DIR=$OPTARG ;; # d: Captures the destination directory path and saves it in DEST_DIR.
        c) COMPRESS=true ;; # c: If provided, sets COMPRESS=true to enable compression.
        *) print_usage ;; # Any invalid option calls print_usage.
    esac
done

# Validate required arguments
# Ensures both SOURCE_DIR and DEST_DIR are provided.
if [ -z "$SOURCE_DIR" ] || [ -z "$DEST_DIR" ]; then
    echo "Error: Source and destination directories are required."
    print_usage
fi


# Creating a Log File
LOG_FILE="backup.log" #Name of the log file where all events are recorded.
touch "$LOG_FILE" #Creates the file if it doesn’t exist.

# Function to log messages
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE" #Logs messages with timestamps. The message is saved in the log file and displayed on the terminal.
}

# Ensure source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    log_message "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Ensure destination directory exists (create if it doesn't)
if [ ! -d "$DEST_DIR" ]; then
    log_message "Destination directory '$DEST_DIR' does not exist. Creating it."
    mkdir -p "$DEST_DIR"
    if [ $? -ne 0 ]; then
        log_message "Error: Failed to create destination directory '$DEST_DIR'."
        exit 1
    fi
fi

# Backup process
BACKUP_NAME="backup_$(date '+%Y%m%d_%H%M%S')"
if $COMPRESS; then #Compressed Backup
    BACKUP_FILE="$DEST_DIR/${BACKUP_NAME}.tar.gz"
    tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .
    if [ $? -eq 0 ]; then
        log_message "Backup successfully created: $BACKUP_FILE"
    else
        log_message "Error: Failed to create compressed backup."
        exit 1
    fi
else #regular backup
    BACKUP_DIR="$DEST_DIR/$BACKUP_NAME"
    mkdir -p "$BACKUP_DIR"
    cp -r "$SOURCE_DIR"/* "$BACKUP_DIR"
    if [ $? -eq 0 ]; then
        log_message "Backup successfully created: $BACKUP_DIR"
    else
        log_message "Error: Failed to copy files to backup directory."
        exit 1
    fi
fi

# Cleanup: Remove backups older than 7 days
find "$DEST_DIR" -type f -name "backup_*.tar.gz" -mtime +7 -exec rm {} \; 2>/dev/null
find "$DEST_DIR" -type d -name "backup_*" -mtime +7 -exec rm -r {} \; 2>/dev/null
if [ $? -eq 0 ]; then
    log_message "Old backups removed successfully."
else
    log_message "Error: Failed to remove old backups."
fi

log_message "Backup operation completed successfully."
exit 0

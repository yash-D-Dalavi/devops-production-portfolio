#!/bin/bash
# Production Database Backup Script

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="./database/backups"

mkdir -p $BACKUP_DIR

echo "Starting PostgreSQL Backup..."
docker exec postgres_db pg_dumpall -U admin > $BACKUP_DIR/db_backup_$TIMESTAMP.sql

echo "Backup completed successfully: $BACKUP_DIR/db_backup_$TIMESTAMP.sql"
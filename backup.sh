#!/bin/bash
rsync -avz --exclude ".streams" --exclude "@Recently-Snapshot" --exclude "@Recycle" --delete -e "ssh -i /root/.ssh/id_rsa_backup" /share/files/ backup-usr@172.19.0.122:backup/files
exit
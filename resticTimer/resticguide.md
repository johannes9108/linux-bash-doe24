# Guide to Restic
1. export RESTIC_REPOSITORY=/srv/restic-repo
2. export RESTIC_PASSWORD=some-strong-password
3. restic init
4. restic backup ~/work
5. restic snapshots
6. restic restore --target /tmp/restore-work your-snapshot-ID
7. `restic check` or `restic check --read-data`



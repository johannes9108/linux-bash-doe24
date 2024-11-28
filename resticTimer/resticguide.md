# Basic Guide to Restic
1. export RESTIC_REPOSITORY=/srv/restic-repo
2. export RESTIC_PASSWORD=some-strong-password
3. restic init
4. restic backup ~/work
5. restic snapshots
6. restic restore --target /tmp/restore-work your-snapshot-ID
7. `restic check` or `restic check --read-data`


# Custom Solution
* Created a folder `~/linux-bash-doe24/resticTimer/workspace` with 10 dummy files.
* This folder is used for "restic backup workspace" command.
* Triggers 5min after boot, and 20sec after "start" command.
* The service file runs the script with some preconfigured environmental variables:
```ini
Environment="RESTIC_REPOSITORY=/home/joebazooka/linux-bash-doe24/resticTimer/restic-repo/"
Environment="RESTIC_PASSWORD_FILE=/home/joebazooka/linux-bash-doe24/resticTimer/resticPW"
```
* Editing is done in the local folder `~/linux-bash-doe24/resticTimer/resticTimer.timer` & `~/linux-bash-doe24/resticTimer/resticTimer.service`. They are than copied into /usr/lib/systemd/system/ folder.
* To active the units `systemctl daemon-reload`is needed. 
* `preRestic.sh` and `postRestic.sh`  are for initiating respectively sending the snapshot
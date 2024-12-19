# General Guide to Restic
1. export RESTIC_REPOSITORY=[LOCAL or REMOTE ]
2. export RESTIC_PASSWORD=some-strong-password
3. restic init
4. restic backup ~/work
5. restic snapshots
6. restic restore --target /tmp/restore-work your-snapshot-ID
7. `restic check` or `restic check --read-data`


# Custom Solution
* Created a folder `~/linux-bash-doe24/resticTimer/workspace` with 10 dummy files.
* This folder is used for "restic backup workspace" command.
* Triggers 5min after boot
* The service file runs the script with some preconfigured environmental variables:
```ini
Environment="RESTIC_REPOSITORY=sftp://joebazooka@192.168.56.101/remote"
Environment="RESTIC_PASSWORD_FILE=/home/joebazooka/linux-bash-doe24/resticTimer/resticPW"
```
* Editing is done in the local folder `~/linux-bash-doe24/resticTimer/resticTimer.timer` & `~/linux-bash-doe24/resticTimer/resticTimer.service`. They are than copied into `/home/joebazooka/.config/systemd/user/` folder.
* To trigger the user-services after boot I needed to set `loginctl enable-linger joebazooka`
* To active the units `systemctl --user daemon-reload`is needed. 
* `preRestic.sh` checks if I new repo is needed or not. 

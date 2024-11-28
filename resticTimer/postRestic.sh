#!/bin/bash

scp -i /home/joebazooka/.ssh/id_rsa -r "$RESTIC_REPOSITORY"snapshots/ joebazooka@192.168.56.101:~/linux-bash-doe24/resticTimer/remoteDir/
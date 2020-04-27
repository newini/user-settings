#!/bin/bash

## Xming X Server DISPLAY (only for windows)
    export DISPLAY=localhost:0.0

## Change Directory
    alias onedrive="cd /mnt/c/Users/eckim/OneDrive/workspace"
    alias itk='cd /mnt/c/Users/eckim/Desktop/itk/'
    alias my-thesis='cd /mnt/c/Users/eckim/OneDrive/Docu/Work/JLAB/Master/thesis'
    alias data='cd /mnt/d/data/'

## mkdir option
    alias mkdir='mkdir -m 755'

## OPEN
    alias open='xdg-open'

## audio
    export PULSE_SERVER=tcp:localhost

## RECAST
    export DOCKER_HOST=tcp://localhost:2375

## Windows program
    export PATH=$PATH:/mnt/c/Program\ Files\ \(x86\)/Adobe/Acrobat\ Reader\ DC/Reader
    alias adobe='AcroRd32.exe'

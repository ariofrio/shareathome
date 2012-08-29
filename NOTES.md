## Setup

 1. yum install qemu-kvm qemu-img || apt-get install qemu-kvm qemu-img
 2. Download cloud image from http://cloud-images.ubuntu.com/precise/current/

## First Goal

An executable that starts a VM and runs code from GitHub there. It uploads
the output to a URL. Task queue based.

Controller (scientist)
 - get status of previous tasks
 - tell Server I have a new task

Server (me) is a proxy is a queue service
 - respond controller with previous task status
 - tell client controller has a new task
 - receive result, update status

Client (users)
 - get task, execute it
 - tell server i have new result

## Useful links

http://bazaar.launchpad.net/~cloud-init-dev/cloud-init/trunk/view/head:/doc/ovf/README

https://help.ubuntu.com/community/UEC/Images/KVMKernelOptions

http://foss-boss.blogspot.com/2010/12/cloud-instance-with-cloud-init-on-kvm.html

## A Sample Session

    $ shareathome
    Please visit https://shareathome.org/ and create an account to choose what
    programs to run or to submit programs for other computers to run.

    If you already have an account, run `shareathome login'.

    $ shareathome login
    Username: ariofrio
    Password: 

    Run `shareathome start' to get started.

    $ shareathome start
    Starting Share@Home client...
    Connecting to shareathome.org...
    
    Please visit https://shareathome.org/dashboard.

    $ shareathome start
    Share@Home client already running.

    Please visit https://shareathome.org/dashboard.


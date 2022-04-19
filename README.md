#### Table of Contents

1. [Description](#description)
2. [Why was this program created?](#Why?)
3. [Setup](#setup)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations](#limitations)
6. [Development](#development)

## Description

This program allows system administrators to identify Virtual Machines that do much IO on the underlying storage.

## Why?

Disks in our Proxmox Cluster were running at 100% because IOPS were maxed out and Proxmox does not allow os to see IOPS per VM. With this program we were able to easily identify the abusing VMs and fix the storage problem.

## Setup

1.  Clone the Repository
2.  ```apt install python3-pip python3-terminaltables python3-colorclass python3-hurry.filesize```
    (alternatively run ```pip3 install terminaltables hurry.filesize colorclass```
4.  ``pip3 install qmp``
5.  ``install -m 755 ./iomonitor /usr/local/bin/```

## Usage

The program is fairly simple. By default a refresh interval of 5 seconds will be used.

In case you want to adjust the interval:
```bash
iomonitor --interval=$SECONDS
```

## Limitations

IOmonitor was tested on Proxmox VE 7 however it may work with lower versions.

Currently there are two known limitations.

1.  It's not possible to invoke any tasks that require
the QMP Monitor like:
    -   Shutting down a VM
    -   Accessing the VNC Console
    -   Backup
2.  While IOmonitor is running IO graphs will not be rendered in Proxmox (Read/Write)

# Development

Pull Requests for bug fixes or new features are welcome :)

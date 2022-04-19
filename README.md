#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations](#limitations)
5. [Development](#development)

## Description

This program allows system administrators to identify Virtual Machines that do much IO on the underlying storage.

Why? The storage in our Proxmox Cluster was slowing down / IOPS were maxed out and Proxmox does not allow to see IOPS per VM. With this program we were able to easily identify the abusing VMs and address the storage problems.

## Setup

1.  Clone the Repository
2.  ```apt install python3-pip python3-terminaltables python3-colorclass python3-hurry.filesize```
3.  Alternatively you can run ```pip3 install terminaltables hurry.filesize colorclass```
4.  ```pip3 install qmp```
5.  ```install -m 755 ./iomonitor /usr/local/bin/```

## Usage

The program is fairly simple. By default a refresh interval of 5 seconds will be used.

In case you want to adjust the interval:
```bash
iomonitor --interval=$SECONDS
```

## Limitations

This version of IOmonitor was tested on Proxmox VE 7 however it may work with lower versions.

Currently known limitations.

1.  It's not possible to invoke any tasks that require the QMP Monitor like:
    -   Shutting down a VM
    -   Accessing the VNC Console
    -   Backup
2.  While IOmonitor is running, IO graphs will not be rendered in Proxmox (Read/Write)

# Development

Pull Requests for bug fixes or new features are welcome :)

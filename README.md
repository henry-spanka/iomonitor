#### Table of Contents

1. [Description](#description)
2. [Why was this program created?](#Why?)
3. [Dependencies](#dependencies)
4. [Setup](#setup)
5. [Usage - Configuration options and additional functionality](#usage)
6. [Limitations](#limitations)
7. [Development](#development)

## Description

This program allows system administrators to identify Virtual Machines that do much IO
on the underlying storage.

## Why?

Disks in our Proxmox Cluster were running at 100% because IOPS were maxed out and Proxmox does not allow os to see IOPS per VM. With this program we were able to easily identify the abusing VMs and fix the storage problem.

## Dependencies

-   QEMU Monitor Protocol Python class (Already included in project)
-   Terminaltables
-   hurry.filesize
-   colorclass

## Setup

1.  Clone the Repository
2.  ```bash
    chmod +x /path/to/iomonitor/install.sh
    /path/to/iomonitor/install.sh
    ```

## Usage

The program is fairly simple. By default a refresh interval of 5 seconds will be used.
```bash
/path/to/iomonitor/iomonitor
```

In case you want to adjust the interval:
```bash
/path/to/iomonitor/iomonitor --interval=$SECONDS
```

## Limitations

IOmonitor was tested on Proxmox VE 5 however it may work with earlier versions of Proxmox VE.

Currently there are two known limitations.

1.  It's not possible to invoke any tasks that require
the QMP Monitor like:
    -   Shutting down a VM
    -   Accessing the VNC Console
    -   Backup
2.  While IOmonitor is running IO graphs will not be rendered in Proxmox (Read/Write)

# Development

Pull Requests for bug fixes or new features are welcome :)

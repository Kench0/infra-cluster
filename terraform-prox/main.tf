terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.2-rc07"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://192.168.1.228:8006/api2/json"
  pm_user         = "terraform-prov@pve"
  pm_password     = "Fetfet228/"
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "worker-test" {
  vmid             = 132
  name             = "k3s-worker4"
  target_node      = "mfc"
  agent            = 2
  memory           = 4094
  boot             = "order=scsi0"
  clone            = "ubuntu-server"
  scsihw           = "virtio-scsi-single"
  vm_state         = "running"
  automatic_reboot = true

  cicustom   = "vendor=local:snippets/qemu-guest-agent.yaml"
  ciupgrade  = true
  nameserver = "8.8.8.8 8.8.4.4"
  ipconfig0  = "ip=192.168.1.150/24,gw=192.168.1.1,ip6=dhcp"
  skip_ipv6  = true
  ciuser     = var.vm_ciuser
  cipassword = var.vm_cipassword
  sshkeys    = var.vm_sshkeys
  tags       = "k3s;terraform;worker"

  serial {
    id = 0
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "64G"
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  cpu {
    cores = 2
  }

  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
}

resource "proxmox_vm_qemu" "worker" {
  vmid             = 133
  name             = "k3s-worker5"
  target_node      = "mfc"
  agent            = 2
  memory           = 4094
  boot             = "order=scsi0"
  clone            = "ubuntu-server"
  scsihw           = "virtio-scsi-single"
  vm_state         = "running"
  automatic_reboot = true

  cicustom   = "vendor=local:snippets/qemu-guest-agent.yaml"
  ciupgrade  = true
  nameserver = "8.8.8.8 8.8.4.4"
  ipconfig0  = "ip=192.168.1.151/24,gw=192.168.1.1,ip6=dhcp"
  skip_ipv6  = true
  ciuser     = var.vm_ciuser
  cipassword = var.vm_cipassword
  sshkeys    = var.vm_sshkeys
  tags       = "k3s;terraform;worker"

  serial {
    id = 0
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "64G"
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  cpu {
    cores = 2
  }

  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
}

resource "proxmox_vm_qemu" "gocvo" {
  vmid             = 134
  name             = "k3s-worker6"
  target_node      = "mfc"
  agent            = 2
  memory           = 4094
  boot             = "order=scsi0"
  clone            = "ubuntu-server"
  scsihw           = "virtio-scsi-single"
  vm_state         = "running"
  automatic_reboot = true

  cicustom   = "vendor=local:snippets/qemu-guest-agent.yaml"
  ciupgrade  = true
  nameserver = "8.8.8.8 8.8.4.4"
  ipconfig0  = "ip=192.168.1.152/24,gw=192.168.1.1,ip6=dhcp"
  skip_ipv6  = true
  ciuser     = var.vm_ciuser
  cipassword = var.vm_cipassword
  sshkeys    = var.vm_sshkeys
  tags       = "k3s;terraform;worker"

  serial {
    id = 0
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "64G"
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  cpu {
    cores = 2
  }

  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
}

resource "proxmox_vm_qemu" "gocvo" {
  vmid             = 135
  name             = "k3s-worker1"
  target_node      = "mfc"
  agent            = 2
  memory           = 4094
  boot             = "order=scsi0"
  clone            = "ubuntu-server"
  scsihw           = "virtio-scsi-single"
  vm_state         = "running"
  automatic_reboot = true

  cicustom   = "vendor=local:snippets/qemu-guest-agent.yaml"
  ciupgrade  = true
  nameserver = "8.8.8.8 8.8.4.4"
  ipconfig0  = "ip=192.168.1.153/24,gw=192.168.1.1,ip6=dhcp"
  skip_ipv6  = true
  ciuser     = var.vm_ciuser
  cipassword = var.vm_cipassword
  sshkeys    = var.vm_sshkeys
  tags       = "k3s;terraform;worker"

  serial {
    id = 0
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "64G"
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  cpu {
    cores = 2
  }

  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
}

resource "proxmox_vm_qemu" "gocvo" {
  vmid             = 136
  name             = "k3s-worker2"
  target_node      = "mfc"
  agent            = 2
  memory           = 4094
  boot             = "order=scsi0"
  clone            = "ubuntu-server"
  scsihw           = "virtio-scsi-single"
  vm_state         = "running"
  automatic_reboot = true

  cicustom   = "vendor=local:snippets/qemu-guest-agent.yaml"
  ciupgrade  = true
  nameserver = "8.8.8.8 8.8.4.4"
  ipconfig0  = "ip=192.168.1.154/24,gw=192.168.1.1,ip6=dhcp"
  skip_ipv6  = true
  ciuser     = var.vm_ciuser
  cipassword = var.vm_cipassword
  sshkeys    = var.vm_sshkeys
  tags       = "k3s;terraform;worker"

  serial {
    id = 0
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "64G"
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  cpu {
    cores = 2
  }

  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
}

resource "proxmox_vm_qemu" "gocvo" {
  vmid             = 136
  name             = "k3s-worker3"
  target_node      = "mfc"
  agent            = 2
  memory           = 4094
  boot             = "order=scsi0"
  clone            = "ubuntu-server"
  scsihw           = "virtio-scsi-single"
  vm_state         = "running"
  automatic_reboot = true

  cicustom   = "vendor=local:snippets/qemu-guest-agent.yaml"
  ciupgrade  = true
  nameserver = "8.8.8.8 8.8.4.4"
  ipconfig0  = "ip=192.168.1.155/24,gw=192.168.1.1,ip6=dhcp"
  skip_ipv6  = true
  ciuser     = var.vm_ciuser
  cipassword = var.vm_cipassword
  sshkeys    = var.vm_sshkeys
  tags       = "k3s;terraform;worker"

  serial {
    id = 0
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "64G"
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  cpu {
    cores = 2
  }

  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
}

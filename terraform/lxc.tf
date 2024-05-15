resource "proxmox_lxc" "LXC" {
  target_node = "big-boi"
  hostname    = "tf-test"
  ostemplate  = "local:vztmpl/debian-12-standard_12.2-1_amd64.tar.zst"

  password     = "terraform"
  unprivileged = true
  start        = true

  cores  = 1
  memory = 512
  swap   = 1024

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }

  rootfs {
    storage = "zfs"
    size    = "8G"
  }

  mountpoint {
    mp        = "/mount"
    key       = "1"
    slot      = "1"
    size      = "1G"
    storage   = "zfs"
    acl       = false
    backup    = true
    quota     = false
    replicate = false
    shared    = false
  }
}

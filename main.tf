
resource "proxmox_vm_qemu" "my_vm" {
  name        = "test-vm"
  target_node = "wiecny"
  vmid        = "104"
  clone       = "ubuntu-tempalte-v2"
  full_clone  = true
  os_type     = "cloud-init"
  
  network {
    model  = "virtio"
    bridge = "vmbr0"
  }
  ipconfig0 = "ip=192.168.1.201/24,gw=192.168.1.1"
}

resource "proxmox_vm_qemu" "my_vm" {
  name        = "test-vm"
  target_node = "wiecny"
  network {
    model = "virtio"
  }
}

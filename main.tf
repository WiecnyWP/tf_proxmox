resource "proxmox_vm_qemu" "my_vm" {
  name        = "my-vm"
  target_node = "wiecny"
  clone       = "centos-template"
  cores       = 2
  memory      = 2048
}

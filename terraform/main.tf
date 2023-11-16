resource "linode_instance" "terraform-example" {
  label  = "blackteam-example"
  type   = "g6-nanode-1"
  region = "us-east"

  image = "linode/ubuntu22.04"
  authorized_keys = [
    var.ssh_key
  ]
  root_pass = var.root_pass
}

output "instance_ip" {
  value = linode_instance.terraform-example.ipv4
}

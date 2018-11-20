data "digitalocean_floating_ip" "dds-ip" {
  ip_address = "${var.public_ip}"
}

resource "digitalocean_droplet" "dds" {
  image  = "ubuntu-18-04-x64"
  name   = "dds"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    "${var.ssh_key_finger}"
  ]
  tags = [
    "${var.project_id}"
  ]

  connection {
    user = "root"
    agent = false
    private_key = "${file("/home/blazart/.ssh/id_rsa")}"
    timeout = "2m"
  }

  provisioner "file" {
    source      = "scripts/init.sh"
    destination = "/root/init.sh"
  }

  provisioner "file" {
    source      = "docker/dds"
    destination = "/root/docker"
  }

  provisioner "file" {
    source      = "scripts/dds/backend"
    destination = "/root/backend"
  }

  provisioner "file" {
    source      = "scripts/dds/frontend"
    destination = "/root/frontend"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /root/init.sh",
      "sudo chmod +x /root/backend/dds-backend-up.sh",
      "sudo chmod +x /root/docker/start.sh",
      "sudo chmod +x /root/backend/db-populate.sh",
      "sudo chmod +x /root/frontend/dds-frontend-up.sh",
      "sudo bash /root/init.sh",
      "sudo bash /root/backend/dds-backend-up.sh branch develop",
      "sudo bash /root/frontend/dds-frontend-up.sh branch development",
      "sudo bash /root/docker/start.sh",
      "sudo bash /root/backend/db-populate.sh"
    ]

  }
}

resource "digitalocean_floating_ip_assignment" "dds-ip-assignment" {
  ip_address = "${data.digitalocean_floating_ip.dds-ip.id}"
  droplet_id = "${digitalocean_droplet.dds.id}"
}

output "ip_address" {
  value = "${digitalocean_droplet.dds.ipv4_address}"
}
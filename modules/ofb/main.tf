data "digitalocean_floating_ip" "ofb-ip" {
  ip_address = "${var.public_ip}"
}

resource "digitalocean_droplet" "ofb" {
  image  = "ubuntu-18-04-x64"
  name   = "ofb"
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
    source      = "docker/ofb"
    destination = "/root/docker"
  }

  provisioner "file" {
    source      = "scripts/ofb/backend"
    destination = "/root/backend"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /root/init.sh",
      "sudo chmod +x /root/backend/ofb-backend-up.sh",
      "sudo chmod +x /root/docker/start.sh",
      "sudo bash /root/init.sh",
      "sudo bash /root/backend/ofb-backend-up.sh branch development",
      "sudo bash /root/docker/start.sh"
    ]

  }
}

resource "digitalocean_floating_ip_assignment" "ofb-ip-assignment" {
  ip_address = "${data.digitalocean_floating_ip.ofb-ip.id}"
  droplet_id = "${digitalocean_droplet.ofb.id}"
}

output "ip_address" {
  value = "${digitalocean_droplet.ofb.ipv4_address}"
}
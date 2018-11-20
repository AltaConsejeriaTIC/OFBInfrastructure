data "digitalocean_floating_ip" "jenkins-ip" {
  ip_address = "${var.public_ip}"
}

resource "digitalocean_droplet" "jenkins" {
  image  = "ubuntu-18-04-x64"
  name   = "jenkins"
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
    source      = "docker/ci"
    destination = "/root/docker"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /root/init.sh",
      "sudo chmod +x /root/docker/start.sh",
      "sudo bash /root/init.sh",
      "sudo bash /root/docker/start.sh",
    ]
  }
}

resource "digitalocean_floating_ip_assignment" "jenkins-ip-assignment" {
  ip_address = "${data.digitalocean_floating_ip.jenkins-ip.id}"
  droplet_id = "${digitalocean_droplet.jenkins.id}"
}

output "ip_address" {
  value = "${digitalocean_droplet.jenkins.ipv4_address}"
}
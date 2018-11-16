provider "digitalocean" {
  token = "8b9b745feaafe4246572dab197a39fc0441daafe46206acae8978f98c93bc278"
}

resource "digitalocean_tag" "ofb-project" {
  name = "apps-project"
}

module "ofb" {
  source = "./modules/ofb"
  project_id = "${digitalocean_tag.ofb-project.id}"
  ssh_key_finger = "${var.ssh_key_finger}"
}

module "ci" {
  source = "./modules/ci"
  project_id = "${digitalocean_tag.ofb-project.id}"
  ssh_key_finger = "${var.ssh_key_finger}"
}

module "dds" {
  source = "./modules/dds"
  project_id = "${digitalocean_tag.ofb-project.id}"
  ssh_key_finger = "${var.ssh_key_finger}"
}

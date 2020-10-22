variable "SCW_ACCESS_KEY" {}
variable "SCW_SECRET_KEY" {}
variable "SCW_ORGANIZATION_ID" {}
variable "image_id" {}

provider "scaleway" {
  access_key      = "${var.SCW_ACCESS_KEY}"
  secret_key      = "${var.SCW_SECRET_KEY}"
  organization_id = "${var.SCW_ORGANIZATION_ID}"
  zone            = "fr-par-1"
  region          = "fr-par"
}

resource "scaleway_instance_volume" "data" {
  size_in_gb = 550
  type = "l_ssd"
}

resource "scaleway_instance_server" "my-ubuntu-instance" {
  type  = "DEV1-S"
  image = "${var.image_id}"
  enable_dynamic_ip = "true"
  enable_ipv6 = "true"

  tags = [ "FocalFossa", "MyUbuntuInstance" ]

}

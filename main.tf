provider "scaleway" {
  access_key      = "<SCALEWAY-ACCESS-KEY>"
  secret_key      = "<SCALEWAY-SECRET-KEY>"
  organization_id = "<SCALEWAY-ORGANIZATION-ID>"
  zone            = "fr-par-1"
  region          = "fr-par"
}

resource "scaleway_instance_ip" "public_ip" {}

resource "scaleway_instance_volume" "data" {
  size_in_gb = 550
  type = "l_ssd"
}

resource "scaleway_instance_server" "my-ubuntu-instance" {
  type  = "DEV1-S"
  image = "scaleway_IOT"

  tags = [ "FocalFossa", "MyUbuntuInstance" ]

  ip_id = scaleway_instance_ip.public_ip.id

  additional_volume_ids = [ scaleway_instance_volume.data.id ]

}

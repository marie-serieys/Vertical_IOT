provider "scaleway" {
  region     = "par1"
  access_key = "${var.secret_access_key}"
  secret_key = "${var.secret_key}"
}
data "scaleway_image" "chirpstack" {
  name = "Ubuntu 20.04 Focal Fossa"
}

ressource "scaleway_server" "chirpstack" {
  name        = "chirpstack"
  type        = "DEV1-S"
  state       = "stopped"
  enable_ipv6 = true

}

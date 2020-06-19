provider « scaleway » {
region = « par1 »
access_key = « ${var.secret_access_key} »
secret_key = « ${var.secret_key)
}
data « scaleway_image » « chirpstack »{
architecture =
name = « Ubuntu 20.04 Focal Fossa »
}

ressource « scaleway_server » « chirp stack »{
name = « chirp stack »
image =
type = « DEV1-S »
state = « stopped »
}

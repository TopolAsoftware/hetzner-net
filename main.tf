########################################################################
###
### terraform-hetzner-webserver script
### 2021 (c) Oleg Vlasenko, MIT License
###
########################################################################
########################################################################
### terraform requires declaration of required providers in each module
###
terraform {
  required_providers {
    hcloud = {
       source  = "hetznercloud/hcloud" 
    }
  }
}
########################################################################

data "hcloud_network" "tpa" {
  name = var.network_name
}

resource "hcloud_server_network" "server" {
  server_id  = var.server_id
  network_id = var.subnet_id != "" ? 0 : data.hcloud_network.tpa.id
  ip         = var.ip
  subnet_id  = var.subnet_id == "" ? "" : "${data.hcloud_network.tpa.id}-${var.subnet_id}"
}


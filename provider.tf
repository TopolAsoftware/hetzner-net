########################################################################
### terraform requires declaration of required providers
###

terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud" 
    }
 }
}

variable "token"  { description = "Hetzner Cloud API token" }
provider "hcloud" { token = var.token }


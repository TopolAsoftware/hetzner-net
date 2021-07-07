
variable "server_id" {
    description = "Server ID"
}

variable "network_name" {
   description = "Network Name"
}

variable "subnet_id" {
   description = "IP subnet for the server (optional)"
   default = null
}
variable "ip" {
   description = "IP address for the server (optional)"
   default = null
}

variable "instance_size" {
  description = "EC2 isntance size for the VPN server. (default t2.micro)"
  default     = "t2.micro"
}

variable "username" {
  description = "Username to authenticate with the VPN server. (optional; a random username will be created if one is not provided)"
  default     = ""
}

variable "password" {
  description = "Password to authenticate with the VPN server. (optional; a random password will be created if one is not provided)"
  default     = ""
}

variable "passphrase" {
  description = "Passphrase for IPSEC PSK (optional; a random passphrase will be created if one is not provided)"
  default     = ""
}

variable "domain" {
  description = "Domain name under which to host the VPN. Must already exist in Route 53."
}

variable "subdomain" {
  description = "Subdomain for the VPN. Will be preprended to the `domain` variable."
  default     = "vpn"
}

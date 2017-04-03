output "vpn_server_address" {
  value = "${aws_route53_record.vpn.fqdn}"
}

output "vpn_server_username" {
  value = "${var.username == "" ? random_id.username.hex : var.username }"
}

output "vpn_server_password" {
  value = "${var.password == "" ? random_id.password.b64 : var.password }"
}

output "vpn_server_passphrase" {
  value = "${var.passphrase == "" ? random_id.passphrase.hex : var.passphrase }"
}

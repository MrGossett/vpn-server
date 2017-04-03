data "aws_route53_zone" "vpn" {
  name = "${var.domain}"
}

resource "aws_route53_record" "vpn" {
  zone_id = "${data.aws_route53_zone.vpn.zone_id}"
  name    = "${var.subdomain}.${var.domain}"
  type    = "A"
  ttl     = "3600"
  records = ["${aws_eip.vpn.public_ip}"]
}

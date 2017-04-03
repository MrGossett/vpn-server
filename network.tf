resource "aws_security_group" "vpn" {
  name        = "vpn-security-group"
  description = "Allow traffic for the VPN Server"
}

resource "aws_security_group_rule" "500tcp" {
  security_group_id = "${aws_security_group.vpn.id}"
  type              = "ingress"
  from_port         = 500
  to_port           = 500
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "500udp" {
  security_group_id = "${aws_security_group.vpn.id}"
  type              = "ingress"
  from_port         = 500
  to_port           = 500
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "4500udp" {
  security_group_id = "${aws_security_group.vpn.id}"
  type              = "ingress"
  from_port         = 4500
  to_port           = 4500
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "1723tcp" {
  security_group_id = "${aws_security_group.vpn.id}"
  type              = "ingress"
  from_port         = 1723
  to_port           = 1723
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "1723udp" {
  security_group_id = "${aws_security_group.vpn.id}"
  type              = "ingress"
  from_port         = 1723
  to_port           = 1723
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_instance" "vpn" {
  ami             = "${data.aws_ami.vpn.id}"
  instance_type   = "${var.instance_size}"
  user_data       = "${data.template_file.user_data.rendered}"
  security_groups = ["${aws_security_group.vpn.name}"]
  monitoring      = true

  tags {
    Name = "vpn-server"
    VPN  = "true"
  }
}

resource "aws_eip" "vpn" {
  instance = "${aws_instance.vpn.id}"
}

data "aws_ami" "vpn" {
  most_recent = true

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04*"]
  }

  owners = ["099720109477"]
}

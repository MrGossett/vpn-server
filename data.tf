data "template_file" "user_data" {
  template = "${file("tpl/user_data.sh")}"

  vars {
    username   = "${var.username == "" ? random_id.username.hex : var.username }"
    password   = "${var.password == "" ? random_id.password.b64 : var.password }"
    passphrase = "${var.passphrase == "" ? random_id.passphrase.hex : var.passphrase }"
  }
}

resource "random_id" "username" {
  keepers = {
    username = "${var.username}"
  }

  byte_length = 6
}

resource "random_id" "password" {
  keepers = {
    password = "${var.password}"
  }

  byte_length = 12
}

resource "random_id" "passphrase" {
  keepers = {
    passphrase = "${var.passphrase}"
  }

  byte_length = 5
}

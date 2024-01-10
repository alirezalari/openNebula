resource "aws_instance" "opennebula_master" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  # OTHER CONFIGURATIONS INCLUDING USER DATA AND NETWORK INTERFACES
}

resource "aws_instance" "opennebula_slave" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  # OTHER CONFIGURATIONS INCLUDING USER DATA AND NETWORK INTERFACES
}

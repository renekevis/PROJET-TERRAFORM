resource "aws_security_group" "my_sg" {
  name        = "${var.maintainer}-sg"
  description = "Allow http,https and ssh inbound traffic"

  dynamic "ingress" {
    for_each = var.ports
    content {
      description      = "HTTP from all"
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    name = "${var.maintainer}-sg"
  }

}

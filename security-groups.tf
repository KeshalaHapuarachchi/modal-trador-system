# Define the security group for public subnets
resource "aws_security_group" "sg_trader" {
  name = "sg_externo_trader"
  description = "Allow incoming RDP access"

  ingress {
    from_port = 3389
    to_port = 3389
    protocol = "tcp"
    cidr_blocks = ["187.20.242.241/32"]
  }

  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["187.20.242.241/32"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    # IP de casa (09/06/2018)
    cidr_blocks =  ["187.20.242.241/32"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    # prefix_list_ids = ["pl-12c4e678"]
  }

  vpc_id="${var.vpc_id}"

  tags {
    Name = "SG Externo - Trader System"
  }
}

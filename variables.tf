variable "region" {
  default = "sa-east-1"
}

variable "aws_profile" {
  default = "alessander"
}

variable "vpc_id" {
  # default = "vpc-810771e9"  # VPC default - us-east-1
  default = "vpc-90386af7"  # VPC default - sa-east-1
}

variable "subnet_id" {
  # default = "subnet-b633e9cc"  # use2-az2 - us-east-1
  default = "subnet-a0be55e9"  # sae1-az2 - sa-east-1
}

variable "ssh_key" {
  default = "~/repositorios/terraform/alessander-tf.pub"
}

variable "private_key" {
  default = "~/repositorios/terraform/alessander-tf"
}

variable "link-installer" {
}

variable "link-config" {
}

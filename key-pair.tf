resource "aws_key_pair" "trader-tf" {
  key_name = "key-pair-trader"
  public_key = "${file("${var.ssh_key}")}"
}

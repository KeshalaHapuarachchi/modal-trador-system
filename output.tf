output private_ip {
  value = "${aws_instance.trader-system-w2k8.private_ip}"
}

output public_ip {
  value = "${aws_instance.trader-system-w2k8.public_ip}"
}

data "template_file" "password" {
  template = "${rsadecrypt(aws_instance.trader-system-w2k8.password_data, file("${var.private_key}"))}"
}

output win_password {
  value = "${data.template_file.password.template}"
}

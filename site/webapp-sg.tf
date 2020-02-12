resource "aws_security_group" "webapp_http_inbound_sg" {
  name = "webapp_http_inbound"
  description = "Allow HTTP from Anywhere"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id = "${var.vpc_id}"
  tags = {
      Name = "webapp_http_inbound"
  }
}
output "webapp_http_inbound_sg_id" {
  value = "${aws_security_group.webapp_http_inbound_sg.id}"
}

resource "aws_security_group" "webapp_outbound_sg" {
  name = "webapp_outbound"
  description = "Allow outbound connections"
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id = "${var.vpc_id}"
  tags = {
      Name = "webapp_outbound"
  }
}
output "webapp_outbound_sg_id" {
  value = "${aws_security_group.webapp_outbound_sg.id}"
}

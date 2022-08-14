resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Allow all inbound HTTP traffic"
  vpc_id      = "vpc-01ce4055ad22caa3b"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
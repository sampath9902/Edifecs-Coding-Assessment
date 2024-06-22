resource "aws_security_group" "ec2_sg" {
  count = var.create_sg ? 1 : 0

  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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

  tags = {
    Name = "ec2_security_group"
  }
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.create_sg ? [aws_security_group.ec2_sg.id] : []

  tags = {
    Name = "WebServer"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "instance_id" {
  value = aws_instance.web.id
}

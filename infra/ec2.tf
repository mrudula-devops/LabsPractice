provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "react_app" {
  ami                    = "ami-0ddfba243cbee3768"  # Amazon Linux 2 AMI
  instance_type          = "t2.micro"
  key_name               = "test"  # Replace with your key pair
  security_groups        = [aws_security_group.react_sg.name]
  user_data              = file("install_script.sh")

  tags = {
    Name = "ReactAppServer"
  }
}

resource "aws_security_group" "react_sg" {
  name        = "react_security_group"
  description = "Allow inbound HTTP and SSH"

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
}

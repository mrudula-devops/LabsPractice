output "ec2_public_ip" {
  value = aws_instance.react_app.public_ip
}

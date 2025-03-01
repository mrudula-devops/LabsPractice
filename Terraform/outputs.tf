output "alb_dns_name" {
  value = aws_lb.main.dns_name
  description = "The DNS name of the ALB"
}

output "app1_public_ip" {
  value = aws_instance.app1.public_ip
  description = "Public IP of app1"
}

output "app2_public_ip" {
  value = aws_instance.app2.public_ip
  description = "Public IP of app2"
}

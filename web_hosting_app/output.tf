output "vpc_id"{
    description = " the id of the vpc"
    value = aws_vpc.main.id
}

output "public_subnet_ids" {
    description = "list of public subnet ids"
    value = aws_subnet.public[*].id
  
}
output "priviate_subnet_ids" {
    description = "list of private subnet ids"
    value = aws_subnet.private[*].id
}

output "load_balance_dns" {
    description = "DNS name of the application load balancer"
    value = aws_lb.app_lb.dns_name
}

output "load_balancer_arn" {
    description = "ARN of the application load balancer"
    value = aws_lb.app_lb.arn
}

output "s3_bucket_name" {
    description = "name of the s3 bucket"
    value = aws_s3_bucket.my_bucket.bucket
}

output "s3_bucket_arn" {
    description= "arn of the s3 bucket"
    value = aws_s3_bucket.my_bucket.arn
}

output "autoscaling_group_name" {
    description = "name of thr auto scaling group"
    value = aws_autoscaling_group.app_asg.name
}

output "nat_gateway_ips" {
    description = "elastic ips of the nat gateways"
    value = aws_eip.main[*].public_ip
}
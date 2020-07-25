output "vpc_endpoint_id" {
  description = "VPC endpoint AWS resource ID"
  value = aws_vpc_endpoint.secrets_manager.id
}

output "vpc_endpoint_arn" {
  description = "VPC endpoint AWS resource ARN"
  value = aws_vpc_endpoint.secrets_manager.arn
}

data "aws_vpc" "vpc" {
  id = var.vpc_id
}

resource "aws_vpc_endpoint" "secrets_manager" {
  service_name = "com.amazonaws.ap-southeast-2.secretsmanager"
  vpc_endpoint_type = "Interface"
  vpc_id = data.aws_vpc.vpc.id
  security_group_ids = var.security_group_ids
  subnet_ids = var.subnet_ids
  tags = {
    Name = var.name == null ? "${data.aws_vpc.vpc.tags["Name"]}SecretsManagerVpcEndpoint" : var.name
  }
}
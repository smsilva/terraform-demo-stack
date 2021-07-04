terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"

  name               = "${var.prefix}-vpc"
  cidr               = var.cidr
  azs                = data.aws_availability_zones.available.names
  private_subnets    = slice(var.private_subnet_cidr_blocks, 0, var.private_subnet_count)
  public_subnets     = slice(var.public_subnet_cidr_blocks, 0, var.public_subnet_count)
  enable_nat_gateway = var.nat_gateway
  enable_vpn_gateway = var.vpn_gateway
  tags               = var.tags
}

module "app_security_group" {
  source  = "terraform-aws-modules/security-group/aws//modules/web"
  version = "4.3.0"

  name                = "${var.prefix}-sg-web"
  description         = "Security group for web-servers with HTTP ports open within VPC"
  vpc_id              = module.vpc.vpc_id
  ingress_cidr_blocks = module.vpc.public_subnets_cidr_blocks
  tags                = var.tags
}

module "lb_security_group" {
  source  = "terraform-aws-modules/security-group/aws//modules/web"
  version = "4.3.0"

  name                = "${var.prefix}-sg-lb"
  description         = "Security group for load balancer with HTTP ports open within VPC"
  vpc_id              = module.vpc.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  tags                = var.tags
}

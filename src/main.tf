locals {
  tags = {
    project     = var.project.name
    owner       = var.project.owner
    environment = var.environment.name
    version     = var.environment.version
  }
}

module "environment_id" {
  source = "./modules/random-string"
}

module "network" {
  source = "./modules/aws-network"

  region                     = var.environment.region
  name                       = "${var.project.name}-vpc"
  cidr                       = var.cidr
  private_subnet_count       = var.private_subnet_count
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  public_subnet_count        = var.public_subnet_count
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  tags                       = local.tags
}

# module "app_security_group" {
#   source  = "terraform-aws-modules/security-group/aws//modules/web"
#   version = "4.3.0"

#   name                = "web-sg-${var.project.name}-${var.environment.name}"
#   description         = "Security group for web-servers with HTTP ports open within VPC"
#   vpc_id              = module.network.vpc.id
#   ingress_cidr_blocks = module.network.vpc.public_subnets_cidr_blocks
#   tags                = local.tags
# }

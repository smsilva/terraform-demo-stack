locals {
  prefix = var.project.name

  tags = {
    project     = var.project.name
    owner       = var.project.owner
    environment = var.environment.name
    version     = var.environment.version
  }
}

module "environment_id" {
  source = "./modules/random-string"

  length = 5
}

module "network" {
  source = "./modules/aws-network"

  prefix                     = local.prefix
  region                     = var.environment.region
  cidr                       = var.cidr
  private_subnet_count       = var.private_subnet_count
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  public_subnet_count        = var.public_subnet_count
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  tags                       = local.tags
}

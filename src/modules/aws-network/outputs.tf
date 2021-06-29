output "vpc" {
  value = {
    id                         = module.vpc.vpc_id
    name                       = module.vpc.name
    public_subnets_cidr_blocks = module.vpc.public_subnets_cidr_blocks
  }
}

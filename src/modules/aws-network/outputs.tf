output "vpc" {
  value = {
    id                         = module.vpc.vpc_id
    name                       = module.vpc.name
    public_subnets_cidr_blocks = module.vpc.public_subnets_cidr_blocks
    private_subnets            = module.vpc.private_subnets[*]
    security_group_ids         = [module.app_security_group.security_group_id]
  }
}

output "app_security_group" {
  value = module.app_security_group
}

output "lb_security_group" {
  value = module.lb_security_group
}

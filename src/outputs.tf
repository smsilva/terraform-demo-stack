output "project" {
  description = "Project Information"
  value = {
    name    = var.project.name
    version = var.environment.version
  }
}

output "environment" {
  description = "Environment Information"
  value = {
    id     = "${var.project.name}-${var.environment.name}-${var.environment.version}-${module.environment_id.id}"
    name   = var.environment.name
    region = var.environment.region
  }
}

output "vpc" {
  value = {
    id                  = module.network.vpc.id
    name                = module.network.vpc.name
    ingress_cidr_blocks = module.network.vpc.public_subnets_cidr_blocks
  }
}

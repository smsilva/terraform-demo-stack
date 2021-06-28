output "public_dns_name" {
  description = "Public DNS names of the load balancer for this project"
  value       = module.elb_http.this_elb_dns_name
}

output "environment" {
  description = "Project and Environment Informations"
  value = {
    project     = var.project.name
    owner       = var.project.owner
    environment = var.environment.name
    version     = var.environment.version
  }
}

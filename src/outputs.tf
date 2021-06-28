output "public_dns_name" {
  description = "Public DNS names of the load balancer for this project"
  value       = module.elb_http.this_elb_dns_name
}

output "project" {
  description = "Project and Environment Informations"
  value = {
    name    = var.project.name
    version = var.environment.version
  }
}

output "environment" {
  description = "Project and Environment Informations"
  value = {
    id      = "${var.project.name}-${var.environment.name}-${var.environment.version}"
    name    = var.environment.name
  }
}

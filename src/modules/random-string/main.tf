resource "random_string" "environment_random_id" {
  length  = var.length
  special = false
}

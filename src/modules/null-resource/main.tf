module "null-resource" {
  source = "git::github.com/smsilva/infrastructure-modules.git//null-resource?ref=master"

  something = var.something
}

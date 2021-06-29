module "countries" {
  source = "git::github.com/smsilva/infrastructure-modules.git//null-resource?ref=master"

  for_each = toset(var.countries)
  something = each.key
}

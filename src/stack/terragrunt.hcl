include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::github.com/smsilva/infrastructure-modules.git//null-resource?ref=master"
}

inputs = {
  something = "Stack"
}

dependencies {
  paths = ["../null-resource"]
}

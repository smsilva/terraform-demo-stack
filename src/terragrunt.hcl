remote_state {
  backend = "gcs"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket               = "${get_env("GOOGLE_TERRAFORM_BACKEND_BUCKET", "silvios")}"
    prefix               = "${get_env("GOOGLE_TERRAFORM_BACKEND_PREFIX", "terraform")}/${path_relative_to_include()}"
    skip_bucket_creation = true
  }
}

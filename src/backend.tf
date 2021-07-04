terraform {
  backend "s3" {
    bucket = "terraform-state-1c9c0c6c"
    key    = "demo-stack-local/terraform.tfstate"
    region = "eu-west-1"
  }
}

variable "project" {
  description = "Project Properties"
  type        = map(string)
  default = {
    name  = "demo",
    owner = "smsilva@gmail.com"
  }
}

variable "environment" {
  description = "Environment Properties"
  type        = map(string)
  default = {
    name    = "local"
    version = "latest"
    region  = "us-east-1"
  }
}

variable "cidr" {
  default = "10.240.0.0/16"
}

variable "vpn_gateway" {
  default = false
}

variable "private_subnet_count" {
  default = 1
}

variable "private_subnet_cidr_blocks" {
  default = [
    "10.240.1.0/24",
    "10.240.2.0/24",
    "10.240.3.0/24",
    "10.240.4.0/24",
    "10.240.5.0/24",
    "10.240.6.0/24",
    "10.240.7.0/24",
    "10.240.8.0/24",
  ]
}

variable "public_subnet_count" {
  default = 1
}

variable "public_subnet_cidr_blocks" {
  default = [
    "10.240.101.0/24",
    "10.240.102.0/24",
    "10.240.103.0/24",
    "10.240.104.0/24",
    "10.240.105.0/24",
    "10.240.106.0/24",
    "10.240.107.0/24",
    "10.240.108.0/24",
  ]
}

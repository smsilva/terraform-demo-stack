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

variable "instances" {
  type = map(string)
  default = {
    count = "2"
    type  = "t3.nano"
  }
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "vpn_gateway" {
  default = false
}

variable "private_subnet_count" {
  default = 1
}

variable "private_subnet_cidr_blocks" {
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24",
    "10.0.7.0/24",
    "10.0.8.0/24",
  ]
}

variable "public_subnet_count" {
  default = 1
}

variable "public_subnet_cidr_blocks" {
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
    "10.0.104.0/24",
    "10.0.105.0/24",
    "10.0.106.0/24",
    "10.0.107.0/24",
    "10.0.108.0/24",
  ]
}

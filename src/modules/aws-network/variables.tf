variable "tags" {
  default = {}
}

variable "region" {
  default = "us-west-1"
}

variable "name" {
  default = "my-vpc"
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "vpn_gateway" {
  default = false
}

variable "private_subnet_count" {
  default = 2
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
  default = 2
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

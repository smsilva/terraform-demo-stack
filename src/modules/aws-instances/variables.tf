variable "tags" {
  default = {}
}

variable "region" {
  default = "us-west-1"
}

variable "prefix" {
  default = "my-prefix"
}

variable "instances" {
  default = {
    count = 1
    type = "t2.nano"
  }
}

variable "subnet_ids" {
  description = "Subnet IDs for EC2 instances"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security Group IDs for EC2 instances"
  type        = list(string)
}

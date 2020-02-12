variable "ip_range" {}
variable "availability_zones" {}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
}

variable "vpc_id" {}

variable "public_subnet_id" {}

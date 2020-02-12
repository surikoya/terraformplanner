variable "region" {}

variable "ip_range" {}


variable "key_name" {}

variable "app_svr_instance_type" {}

variable "asg_min" {
  description = "minimum instances for scaling"
}

variable "asg_max" {
  description = "max instances for scaling"
}

# Amazon Linux AMI
# Most recent as of 2015-12-02
variable "amis" {
  default = {
    us-east-2 = "ami-02ccb28830b645a41"
  }
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
}

variable vpc_id {
  description = "VPC id within which the infrastructure should be created"
}

variable public_subnet_id {
  description = "Subnet to use for load balancers"
}

variable availability_zones {
  description = "Availability zones in which the infrastructure is created"
  type = list
}

variable redis_cache_node_count {
  description = "Number of cache nodes for the cluster"
}

variable redisstore_subnet_id {
  description = "CIDR for the redis subnetwork"
}

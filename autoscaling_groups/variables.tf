variable "availability_zones" {
  # No spaces allowed between az names!
  
}
variable "asg_min" {}
variable "asg_max" {}
#
# From other modules
#
variable "public_subnet_id" {}
variable "webapp_lc_id" {}
variable "webapp_lc_name" {}
variable "webapp_elb_name" {}

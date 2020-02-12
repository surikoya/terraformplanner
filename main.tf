provider "aws" {
  profile    = "default"
  region     = var.region
}

# security groups creation module
module "site" {
  source                    = "./site"
  availability_zones        = var.availability_zones
  ip_range                  = var.ip_range
  vpc_id                    = var.vpc_id
  public_subnet_id          = var.public_subnet_id
  public_subnet_cidr        = var.public_subnet_cidr
  private_subnet_cidr       = var.private_subnet_cidr
  vpc_cidr                  = var.vpc_cidr
}

# Instance configuration template to use with auto scaling group
module "launch_configuration" {
  source                    = "./launch_configuration"
  webapp_http_inbound_sg_id = module.site.webapp_http_inbound_sg_id
  webapp_outbound_sg_id     = module.site.webapp_outbound_sg_id
  key_name                  = var.key_name
  amis = var.amis
  app_svr_instance_type = var.app_svr_instance_type
  region = var.region
}

module "load_balancers" {
  source                    = "./load_balancers"
  availability_zones        = var.availability_zones
  public_subnet_id          = var.public_subnet_id
  webapp_http_inbound_sg_id = module.site.webapp_http_inbound_sg_id
}

module "autoscaling_groups" {
  source                    = "./autoscaling_groups"
  public_subnet_id          = var.public_subnet_id
  webapp_lc_id              = module.launch_configuration.webapp_lc_id
  webapp_lc_name            = module.launch_configuration.webapp_lc_name
  webapp_elb_name           = module.load_balancers.webapp_elb_name
  asg_max                   = var.asg_max
  asg_min                   = var.asg_min
  availability_zones        = var.availability_zones
}

module "elasticache" {
  source                    = "./elasticache"
  redisstore_subnet_id      = var.redisstore_subnet_id
  cache_node_count          = var.redis_cache_node_count
}

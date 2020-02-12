# Terraform code to create infrastructure for the plan below

![Plan](/images/plan.png)


## Creating the infrastructure
`tf apply -var 'asg_min=<int>' -var 'asg_max=<int>' -var 'public_subnet_id=<string>' -var 'availability_zones=<list of strings>' -var 'vpc_id=<string>' -var 'private_subnet_cidr=<cidr>' -var 'public_subnet_cidr=<cidr>' -var 'vpc_cidr=<cidr>' -var 'app_svr_instance_type=<string>' -var 'key_name=<string>' -var 'ip_range=<cidr>' -var 'region=<string>'  -var 'redis_cache_node_count=<int>' -var 'redisstore_subnet_id=<string>'`


## Dropping the infrastructure
`tf destroy -var 'asg_min=<int>' -var 'asg_max=<int>' -var 'public_subnet_id=<string>' -var 'availability_zones=<list of strings>' -var 'vpc_id=<string>' -var 'private_subnet_cidr=<cidr>' -var 'public_subnet_cidr=<cidr>' -var 'vpc_cidr=<cidr>' -var 'app_svr_instance_type=<string>' -var 'key_name=<string>' -var 'ip_range=<cidr>' -var 'region=<string>'  -var 'redis_cache_node_count=<int>' -var 'redisstore_subnet_id=<string>'`

## Parameters reference
| Parameter name | description | type
--- | --- | ---
asg_min | minimum instances for scaling | int
asg_max | maximum instances for scaling | int

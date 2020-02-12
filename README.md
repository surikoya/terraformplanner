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
public_subnet_id | Subnet to use for load balancers | string
availability_zones | Availability zones in which the infrastructure is created | list of strings
vpc_id | VPC id within which the infrastructure should be created | string
private_subnet_cidr | CIDR for the Private Subnet | cidr
public_subnet_cidr | CIDR for the Public Subnet| cidr
vpc_cidr | CIDR for the whole VPC | string
app_svr_instance_type | Instance type to be used in launch configuration Eg. t2.nano| string
key_name | Name of public key that would be added to authorized keys of ASG| string
ip_range | Public internet cidr| cidr
region | Region where infrastructure is created| string
redis_cache_node_count | umber of cache nodes for the cluster | int
redisstore_subnet_id | Subnet id where the cache nodes would be launched| string

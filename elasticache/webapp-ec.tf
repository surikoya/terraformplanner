resource "aws_elasticache_subnet_group" "ec_group_name" {
  name       = "webapp-redis-store"
  subnet_ids = ["${var.redisstore_subnet_id}"]
}

resource "aws_elasticache_cluster" "webapp-ec-store" {
  cluster_id                = "webapp-ec-cluster"
  engine                    = "redis"
  node_type                 = "cache.t2.micro"
  num_cache_nodes           = "${var.cache_node_count}"
  parameter_group_name      = "default.redis3.2"
  engine_version            = "3.2.10"
  port                      = 6379
  subnet_group_name         = "${aws_elasticache_subnet_group.ec_group_name.name}"
}

output "elasticache_cluster_id" {
  value = "${aws_elasticache_cluster.webapp-ec-store.id}"
}

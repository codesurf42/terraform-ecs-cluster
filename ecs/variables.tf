
variable "ecs-target-group-arn" {}
variable "ecs-service-role-arn" {}
variable "tag_prefix" {}
variable "container_name" {}

locals {
  ecs-cluster-name = "${var.tag_prefix}-cluster"
  ecs-service-name = "${var.tag_prefix}-ecs-service"
  ecs-load-balancer-name = "${var.tag_prefix}-ecs-load-balancer"
}

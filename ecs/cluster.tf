resource "aws_ecs_cluster" "ecs-cluster" {
    name = "${local.ecs-cluster-name}"
}
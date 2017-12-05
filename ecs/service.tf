resource "aws_ecs_service" "ecs-service" {
  name = "${local.ecs-service-name}"
  iam_role = "${var.ecs-service-role-arn}"
  cluster = "${aws_ecs_cluster.ecs-cluster.id}"
  task_definition = "${aws_ecs_task_definition.task-definition.arn}"
  desired_count = 1

  load_balancer {
    target_group_arn = "${var.ecs-target-group-arn}"
    container_port = 80
    container_name = "${var.container_name}"
  }
}
resource "aws_ecs_task_definition" "ecs-sample-definition" {
    family                = "${var.tag_prefix}-sample-definition"
    container_definitions = "${file("./ecs/task-definition.json")}"
}
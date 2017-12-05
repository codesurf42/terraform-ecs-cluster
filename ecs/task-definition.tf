data "template_file" "container_init" {
  template = "${file("./ecs/task-definition.json")}"
  vars = {
    container_name = "${var.container_name}"
  }
}

resource "aws_ecs_task_definition" "task-definition" {
  family = "${var.tag_prefix}-sample-definition"
  container_definitions = "${data.template_file.container_init.rendered}"
}
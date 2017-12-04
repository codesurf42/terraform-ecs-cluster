resource "aws_lb" "ecs-load-balancer" {
  name = "${local.load-balancer-name}"
  security_groups = [
    "${var.security-group-id}"]
  subnets = [
    "${var.subnet-id-1}",
    "${var.subnet-id-2}"]
}

resource "aws_lb_target_group" "ecs-target_group" {
  name = "${local.target-group-name}"
  port = "80"
  protocol = "HTTP"
  vpc_id = "${var.vpc-id}"

  health_check {
    healthy_threshold = "5"
    unhealthy_threshold = "2"
    interval = "30"
    matcher = "200"
    path = "/"
    port = "traffic-port"
    protocol = "HTTP"
    timeout = "5"
  }

  depends_on = [
    "aws_lb.ecs-load-balancer"
  ]
}

resource "aws_lb_listener" "lb-listener" {
  load_balancer_arn = "${aws_lb.ecs-load-balancer.arn}"
  port = "80"
  protocol = "HTTP"

  default_action {
    target_group_arn = "${aws_lb_target_group.ecs-target_group.arn}"
    type = "forward"
  }
}

output "ecs-load-balancer-name" {
  value = "${aws_lb.ecs-load-balancer.name}"
}

output "ecs-target-group-arn" {
  value = "${aws_lb_target_group.ecs-target_group.arn}"
}

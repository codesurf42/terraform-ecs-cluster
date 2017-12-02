resource "aws_iam_instance_profile" "ecs1-instance-profile" {
    name = "${local.tag_prefix}-instance-profile"
    path = "/"
    role = "${aws_iam_role.ecs1-instance-role.name}"
}

output "ecs-instance-profile-name" {
  value = "${aws_iam_instance_profile.ecs1-instance-profile.name}"
}

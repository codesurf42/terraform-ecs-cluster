//----------------------------------------------------------------------
// Shared Variables
//----------------------------------------------------------------------

variable "vpc-id" {}
variable "subnet-id-1" {}
variable "subnet-id-2" {}
variable "security-group-id" {}
variable "ecs-cluster-name" {}
variable "ecs-instance-role-name" {}
variable "ecs-instance-profile-name" {}
variable "ecs-key-pair-name" {}

variable "tag_prefix" {}

locals {
  tag_prefix = "${var.tag_prefix}-ec2"
  autoscaling-group-name = "${var.tag_prefix}-asg"
  load-balancer-name = "${var.tag_prefix}-load-balancer"
  target-group-name = "${var.tag_prefix}-target-group"
  launch-configuration-name = "${var.tag_prefix}-launch-configuration"
}

//----------------------------------------------------------------------
// Autoscaling Group Variables
//----------------------------------------------------------------------

variable "max-instance-size" {
  default = 3
}

variable "min-instance-size" {
  default = 1
}

variable "desired-capacity" {
  default = 1
}

variable "health-check-grace-period" {
  default = 300
}


variable "image-id" {
  // eu-west-2
  default = "ami-4f8d912b"
}

variable "instance-type" {
  default = "t2.micro"
}
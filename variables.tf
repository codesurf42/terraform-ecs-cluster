variable "ecs-cluster-name" {
  description = "The name for the cluster."
  default = "ecs-rest1"
}

variable "ecs-key-pair-name" {
  description = "ec2 key pair to access ECS instances"
  default = "key_pair_pub"
}

variable "region" {
  default = "eu-west-2"
}

variable "tag_prefix" {
  default = "ecs1"
}
variable "region" {}
variable "tag_prefix" {}

locals {
  av_zone_a  = "${var.region}a"
  av_zone_b  = "${var.region}b"
  tag_prefix = "${var.tag_prefix}-vpc"
}

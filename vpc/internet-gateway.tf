resource "aws_internet_gateway" "ecs1-vpc-internet-gateway" {
  vpc_id = "${aws_vpc.ecs1-vpc.id}"

  tags {
    Name = "${local.tag_prefix}-internet-gateway"
  }
}
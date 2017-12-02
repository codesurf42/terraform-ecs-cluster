resource "aws_subnet" "ecs1-vpc-subnet1" {
  vpc_id = "${aws_vpc.ecs1-vpc.id}"
  cidr_block = "10.0.0.0/24"
  availability_zone = "${local.av_zone_a}"

  tags {
    Name = "${local.tag_prefix}-subnet"
  }
}

resource "aws_subnet" "ecs1-vpc-subnet2" {
  vpc_id = "${aws_vpc.ecs1-vpc.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "${local.av_zone_b}"

  tags {
    Name = "${local.tag_prefix}-subnet"
  }
}

output "subnet1-id" {
  value = "${aws_subnet.ecs1-vpc-subnet1.id}"
}

output "subnet2-id" {
  value = "${aws_subnet.ecs1-vpc-subnet2.id}"
}
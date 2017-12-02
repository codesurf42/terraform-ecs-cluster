resource "aws_route_table" "ecs1-vpc-route-table" {
  vpc_id = "${aws_vpc.ecs1-vpc.id}"

  route {
    cidr_block = "10.0.0.0/0"
    gateway_id = "${aws_internet_gateway.ecs1-vpc-internet-gateway.id}"
  }

  tags {
    Name = "${local.tag_prefix}-route-table"
  }
}

resource "aws_route_table_association" "ecs1-vpc-route-table-association1" {
  subnet_id      = "${aws_subnet.ecs1-vpc-subnet1.id}"
  route_table_id = "${aws_route_table.ecs1-vpc-route-table.id}"
}

resource "aws_route_table_association" "ecs1-vpc-route-table-association2" {
  subnet_id      = "${aws_subnet.ecs1-vpc-subnet2.id}"
  route_table_id = "${aws_route_table.ecs1-vpc-route-table.id}"
}
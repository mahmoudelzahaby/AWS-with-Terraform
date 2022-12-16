resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc-task.id
  tags = {
    "key" = "route table"
  }
}

resource "aws_route" "public" {
  route_table_id = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw-test.id
}


resource "aws_route_table_association" "public" {
  subnet_id = aws_subnet.task-subnet.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public2" {
  subnet_id = aws_subnet.task-subnet2.id
  route_table_id = aws_route_table.public.id
}
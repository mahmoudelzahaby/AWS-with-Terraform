resource "aws_internet_gateway" "igw-test" {
  vpc_id = aws_vpc.vpc-task.id
  
  tags = {
    Name = "igw-test"
  }
}
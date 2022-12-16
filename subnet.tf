resource "aws_subnet" "task-subnet" {
    vpc_id = aws_vpc.vpc-task.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    
    tags = {
      "key" = "subnet-test"
    }
}

resource "aws_subnet" "task-subnet2" {
    vpc_id = aws_vpc.vpc-task.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1b"
    
    tags = {
      "key" = "subnet-test2"
    }
}


output "subnet-id" {
  value = aws_subnet.task-subnet.id
}
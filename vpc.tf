resource "aws_vpc" "vpc-task" {
    cidr_block = var.vpc-cidr
    
  tags = {
    "key" = "vpc-test"
  }
}
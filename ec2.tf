resource "aws_instance" "ubuntu" {
  ami = var.ami-id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.task-subnet.id
  key_name = aws_key_pair.test-key.id
  tags = {
    "key" = "ec2-test"
  }
}

resource "aws_instance" "ubuntu2" {
  ami = var.ami-id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.task-subnet2.id
  key_name = aws_key_pair.test-key.id
  tags = {
    "key" = "ec2-test2"
  }
}


output "ec2-id" {
  value = aws_instance.ubuntu.id
}

resource "aws_security_group" "test_security_group" {
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.test_vpc.id

  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "All traffic"
    from_port        = 0
    ipv6_cidr_blocks = null
    prefix_list_ids  = null
    protocol         = -1
    security_groups  = null
    self             = null
    to_port          = 0
  }]

  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "outbound rule"
    from_port        = 0
    ipv6_cidr_blocks = null
    prefix_list_ids  = null
    protocol         = -1
    security_groups  = null
    self             = null
    to_port          = 0
  }]
  tags = {
    Name = "test_security_group"
  }
}
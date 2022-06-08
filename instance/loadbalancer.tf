resource "aws_lb" "test_load_balancer" {
  name                       = var.load_balancer
  load_balancer_type         = "application"
  internal                   = false
  security_groups            = [data.aws_security_group.sec_group.id]
  subnets                    = data.aws_subnet_ids.subnet_ids.ids
  enable_deletion_protection = false
  tags = {
    Environment = "test"
  }
}
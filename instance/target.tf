resource "aws_lb_target_group" "test_lb_tg" {
  name     = "testtg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.vpc_avail.id
}
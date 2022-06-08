resource "aws_lb_listener" "test_lb_listner" {
  load_balancer_arn = aws_lb.test_load_balancer.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.test_lb_tg.arn
  }
}
resource "aws_autoscaling_group" "test_auto_scale" {
  name                      = "test_auto_scale"
  max_size                  = 5
  min_size                  = 2
  desired_capacity          = 2
  health_check_grace_period = 10
 # launch_configuration      = aws_launch_configuration.test_lc.name # for launchconfig.tf
 
 ###use with launch_templ.tf
 launch_template {
   id = aws_launch_template.test_launch_templ.id
   version = "$Latest"
 }
  vpc_zone_identifier       = data.aws_subnet_ids.subnet_ids.ids
  target_group_arns         = [aws_lb_target_group.test_lb_tg.id]

  tag {
    key                 = "Name"
    value               = "test"
    propagate_at_launch = true
  }

  depends_on = [
    aws_lb_target_group.test_lb_tg
  ]
}

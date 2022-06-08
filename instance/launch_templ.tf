resource "aws_launch_template" "test_launch_templ" {
    
    name_prefix = "test_launch_templ"
    image_id = data.aws_ami.amazon_linux_2.id
    key_name = "web"
    instance_type = "t2.micro"
    user_data = filebase64("./user_data.sh")
    
  network_interfaces {
    associate_public_ip_address = true
    security_groups = [data.aws_security_group.sec_group.id]
    delete_on_termination = true
  }
}
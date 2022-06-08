resource "aws_launch_configuration" "test_lc" {

    name_prefix = "test_lc"
    key_name = "web"
    image_id = data.aws_ami.amazon_linux_2.id
    instance_type = "t2.micro"
    user_data = data.template_file.user_data.rendered
    associate_public_ip_address = true
    security_groups = [data.aws_security_group.sec_group.id]
}

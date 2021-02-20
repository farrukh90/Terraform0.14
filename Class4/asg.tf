resource "aws_autoscaling_group" "bar" {
name = "terraform-asg-example"
launch_configuration = "${aws_launch_configuration.as_conf.name}"
availability_zones = data.aws_availability_zones.all.names
min_size = 1
max_size = 2
lifecycle {
create_before_destroy = true
}
}



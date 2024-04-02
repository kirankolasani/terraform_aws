resource "aws_instance" "tf-instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = [aws_security_group.sg_tf.name]

    tags = {
      Name = "tf_instance"
    }
  
}
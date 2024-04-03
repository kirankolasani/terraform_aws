resource "aws_instance" "tf-instance" {
    count = local.instance_count
    ami = var.ami_id
    instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" ? "t2.medium" : "t2.micro"
    security_groups = [aws_security_group.sg_tf.name]

    tags = merge(var.tags_roboshop, {Name = var.instance_name[count.index]})
    key_name = aws_key_pair.mykey.key_name
    #tags = local.ec2_name
  
}


resource "aws_key_pair" "mykey" {
    key_name = "ec2_key"
    public_key = local.ec2_key_name


  
}


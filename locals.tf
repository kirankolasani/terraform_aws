locals {
    ec2_name = merge(var.tags_roboshop, {Name = "roboshop_TF"})
    sg_tags_name = merge(var.tags_roboshop, {Name = "Roboshop_Allow_ALL_TF"})

    ec2_key_name = file("${path.module}/id_rsa.pub")
    instance_count = length(var.instance_name)
    
  
}

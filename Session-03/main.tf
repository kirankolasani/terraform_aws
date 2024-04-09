module "ec2" {
    source = "../terraform-modules"
    instance_type = var.instance_type
    ami_id = var.ami_id
  
}
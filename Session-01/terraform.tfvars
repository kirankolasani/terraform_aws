ami_id = "ami-080e1f13689e07408"
instance_type = "t2.micro"
sg_name = "allow_all_tf"
sg_cidr = ["0.0.0.0/0"]

tags_roboshop = {
    Name = "roboshop-tf"
    project = "roboshop"
    production = true

}


instance_name = ["web", "mongodb", "redis", "mysql", "catalogue", "user", "cart", "shipping", "rabbitmq", "payment" ]
zone_id = "Z09758961YQX652W11A6M"
domain = "devopsaws.site"

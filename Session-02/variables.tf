variable "ami_id" {
    default = "ami-080e1f13689e07408"
  
}

variable "instances" {

    default = {
        mongodb = "t2.medium"
        mysql = "t2.medium"
        catalogue = "t2.micro"
        cart = "t2.micro"
        user = "t2.micro"
        redis = "t2.micro"
        shipping = "t2.micro"
        rabbitmq = "t2.micro"
        payment = "t2.micro"
        web = "t2.micro"

    }
  
}

variable "zone_id" {
    default = "Z09758961YQX652W11A6M"
  
}
variable "domain" {
    default = "devopsaws.site"
  
}

variable "ingress" {
    default = [
        {
            description = "allow https traffic"
            protocol  = "tcp"
            from_port = 443
            to_port   = 443
            cidr_blocks = ["0.0.0.0/0"]  
        },
        {
            description = "allow http traffic"
            protocol  = "tcp"
            from_port = 80
            to_port   = 80
            cidr_blocks = ["0.0.0.0/0"] 

        },
        {
            description = "allow ssh 22 traffic"
            protocol  = "tcp"
            from_port = 22
            to_port   = 22
            cidr_blocks = ["0.0.0.0/0"] 

        }
    ]
  
}


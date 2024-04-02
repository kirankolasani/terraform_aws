variable "ami_id" {
    type = string
    default = "ami-0af7e1e7cc9cd3cde"
  
}
variable "instance_type" {
    default = "t2.micro"
  
}
variable "sg_name" {
    default = "allow_all_tf"
  
}

variable "sg_cidr" {
    default = ["0.0.0.0/0"]
  
}

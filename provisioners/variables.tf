variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of Join Devops is RHEL9"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "RoboShop"  #in tag if Name is there then we must should give Capital N i.e Name
        Purpose = "Variables-demo" 
    }
}

variable "sg_name" {
    default = "vars-fileallow-all"
}

variable "sg_description" {
    default = "Allowing all ports from internet"
}

variable "from_port" {
    type = number
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}

variable "sg_tags" {
    default = {
        Name = "allow-all"  #in tag if Name is there then we must should give Capital N i.e Name
    }
  
}


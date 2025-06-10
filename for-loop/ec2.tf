resource "aws_instance" "roboshop" {
  #for_each = var.instances # it will itterate the map from variables.tf
  for_each = toset(var.instances)
  ami           = var.ami_id   #Left side and right side names no need to be same 
  instance_type = "t2.micro"
  #instance_type = each.value
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = {
    Name = each.value
  }
}

resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id

  ingress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }
  egress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

  tags = var.sg_tags
}
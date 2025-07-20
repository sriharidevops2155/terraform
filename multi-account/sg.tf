resource "aws_security_group" "allow_all_dev" {
  name        = "allow_all_dev"
  description = "Allow all traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
  egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

  tags = {
    Name = "allow-all-dev"
  }
  provider = aws.dev
}

resource "aws_security_group" "allow_all_prod" {
  name        = "allow_all_prod"
  description = "Allow all traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
  egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

  tags = {
    Name = "allow_all-prod"
  }
  provider = aws.prod
}
data "aws_ami" "joindevops" {
  owners = ["973714476881"]
  most_recent = true
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
} 

output "ami_id" {
   value = data.aws_ami.joindevops.id
}

resource "aws_instance" "Ubuntu" {

  ami = "ami-0c4f7023847b90238"
  instance_type = var.instance_type
   subnet_id = "subnet-0312b9823ae197e56"
 vpc_id= "vpc-0bbad7b913feecbb3"
 vpc_security_group_ids = "sg-0f51ca679c388e5bc"
  root_block_device {
device type = EBS
    volume_type = "GiB"
    volume_size = "10"
  count = 2
  
}

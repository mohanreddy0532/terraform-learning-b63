module "ec2" {
  source = "./ec2"
  sg     = module.sg.sg_id
}

module "sg" {
  source = "./sg"
}


output "public_ip" {
  value = aws_instance.sample.public_ip
}
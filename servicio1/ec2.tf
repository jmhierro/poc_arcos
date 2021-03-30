provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "allarena"
}

resource "aws_instance" "srv" {
  ami               = "ami-0be2609ba883822ec"
  key_name          = "naas-support"
  vpc_security_group_ids = ["sg-046a78bd04f2057b2"]
  associate_public_ip_address = true
  source_dest_check  = false
  instance_type      = "t2.micro"
  subnet_id          = "subnet-009c40c86e0ad16ff"
  tags = {
    Name = "poc-arcos",
    Owner = "jmhierro"
  }
}

output "ServerIP" {
  value = aws_instance.srv.private_ip
}
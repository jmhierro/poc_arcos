provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "nubiral-demo"
}

provider "awx" {
  hostname = "http://54.158.48.15"
  username = "jenkins"
  password = "jenkins"    
}

resource "awx_inventory_group" "default" {
  name            = "tr_test"
  inventory_id    = 3
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





# resource "awx_host" "axwnode" {
#   name         = "poc-arcos"
#   description  = "Nodo agregado desde terra"
#   inventory_id = 2
#   group_ids = [ 2 ]
# #     data.awx_inventory_group.default.id,
# #     data.awx_inventory_group.pinodes.id,
# #   ]
#   enabled   = true
#   variables = templatefile("${path.module}/host.tpl", { ip = aws_instance.srv.private_ip} )

  
# #    <<YAML
# # ---
# # ansible_host: aws_instance.srv.private_ip
# # YAML
# }

# output "ServerIP" {
#   value = aws_instance.srv.private_ip
# }

# output "Group" {
#   value = "Amazon Linux"
# }
awx_inventory_group_name = "lnx-base-aws"
awx_template_id = 10
awx_group_id = 2

aws_region = "us-east-1"

ec2_ami = "ami-0be2609ba883822ec"
ec2_instance_type = "t2.micro"
ec2_subnet_id = ["subnet-009c40c86e0ad16ff"]
ec2_key_name = "naas-support"
ec2_security_groups = ["sg-046a78bd04f2057b2"]
ec2_public_ip = false
ec2_base_name = "webserver-"
ec2_instance_count = 2
ec2_root_volume_size = 30
ec2_root_volume_type = "gp2"

ebs_block_device = [
{
    device_name = "/dev/sdb"
    volume_type = "gp2"
    volume_size = 5
    encrypted   = false
    delete_on_termination = false
    #kms_key_id  = aws_kms_key.this.arn
},
{
    device_name = "/dev/sdc"
    volume_type = "gp2"
    volume_size = 5
    encrypted   = false
    #kms_key_id  = aws_kms_key.this.arn
}
]

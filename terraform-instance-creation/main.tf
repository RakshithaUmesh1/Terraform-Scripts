provider "aws"{
      region="ap-south-1"
      access_key=""
      secret_key=""
  }
 resource "aws_instance" "ec2"{
      ami="ami-0649f8375a2bc0d2f"
      instance_type="t2.micro"
      security_groups=[ "default1" ]
      key_name="pub-keyy"
      root_block_device{
      volume_size=20
      volume_type="gp3"
      delete_on_termination=true
     }
   tags = {
       Name="Terraform-first-server"
     }
   }
output "PublicIP"{
   value=aws_instance.ec2.public_ip
}

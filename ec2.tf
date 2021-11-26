
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "stf-ec2"
  ami                    = "ami-0279c3b3186e54acd"
  instance_type          = "t2.micro"
  monitoring             = true
  subnet_id              = "subnet-0a62a58b1ade4d9d9"

 
}
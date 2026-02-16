bucket_name = "terraform-s3-bucket-ci-cd-848586"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-central-1a", "eu-central-1b"]

public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDdbxzu8hw4EM6eccznBUIY+4qF5jZtkzhOxb0bckqgu linux@linux"
ec2_ami_id = "ami-01f79b1e4a5c64257"

ec2_user_data_install_apache = ""

domain_name = "aws.mytitan.in"
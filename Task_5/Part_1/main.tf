# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  access_key = "ASIAW2GKBYBTPR7JVYRW"
  secret_key = "HUSN5RE/EvZPFFJe7uHRmrHsI8YMGxpzUngjEGJR"
  token = "FwoGZXIvYXdzELn//////////wEaDJk4OMNF3tECtorBdCK8AZYxOPceliUfxlnQMjIEDSfURdDejGr60VH1EZFZieLhct1oMC6KQ+midDOPNHsr5owe5CEeMzoz+m8dqO9E6VwTz8TB8zjL6njdS4Mxc6W0HJBTxUAZavP2S8h47bJ94coMEfQ250F7kGWo1swRceZRZ1ADHF5aj+aJwVPS8oUmiDuBlhbtg3W6qmv0KSGl3MwrMn/mJT8+yXYrn/m9wyQ578fBcNzEJjwDH3pkVLEAsm1pRgcVgLMqfXooKLCakogGMi04QtTffXYzBP9naQ03soWmt5bRF5/f4Z6ZG2lXIRbTLGn0IkBkMj9MOisHZuA="
  profile = "default"
  region  = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count = 4

  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"

  security_groups = ["sg-751cef6e"]
  subnet_id = "subnet-05d04f34"

  tags = {
    Name = "Udacity_T2"
  }

}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  count = 2

  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "m4.large"

  security_groups = ["sg-751cef6e"]
  subnet_id = "subnet-05d04f34"

  tags = {
    Name = "Udacity_M4"
  }
 
}


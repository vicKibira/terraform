terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}

#create an EC2 instance
resource "aws_instance" "myfirstEC2iinstance" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"


  tags = {
    Name = "helloec2"
  }
}
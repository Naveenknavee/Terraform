# main.tf

provider "aws" {
  region = "ap-south-1" # Change to your preferred region
  //access_key = ""
  //secret_key = "" we can perfrom this action without aws cli
}

resource "aws_instance" "example" {
  ami           = "ami-0e306788ff2473ccb" # Ubuntu 22.04 in ap-south-1 (Mumbai), change if using another region
  instance_type = "t2.micro"

  tags = {
    Name = "MyBasicInstance"
  
  }
  
}


provider "aws" {
  region = "us-east-1"  # N. Virginia (region, not AZ)
}

resource "aws_instance" "example" {
  ami           = "ami-070efb31aff2a7a93"  # Ubuntu 22.04 LTS (double-check it's valid in us-east-1)
  instance_type = "t2.micro"
  key_name      = "demoppk"  # This must exist in your AWS Key Pairs in us-east-1

  tags = {
    Name = "Terraform-EC2"
  }
}

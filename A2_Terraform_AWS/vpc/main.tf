provider "aws" {
  region = "us-east-1"  
}

resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"
}

resource "aws_subnet" "public" {
  count = 4

  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  availability_zone = "us-east-1a"  
  map_public_ip_on_launch = true
}

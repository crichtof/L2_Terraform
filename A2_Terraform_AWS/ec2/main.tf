provider "aws" {
  region = "us-east-1"  
}

resource "aws_instance" "web" {
  count         = 4
  ami           = "ami-0d7a109bf30624c99"  
  instance_type = "t2.micro"
  subnet_id     = element(aws_subnet.public[*].id, count.index)

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y docker
              sudo service docker start
              sudo docker run -d -p 80:80 nginx
              sudo docker run -d -p 8080:80 nginx
              sudo docker run -d -p 8081:80 nginx
              EOF
}

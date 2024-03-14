# **Lab 2**
This project consists of three modules (vpc, security group, and EC2). The vpc module deploys a complete new VPC with four public subnets from the address space 192.168.0.0/16. 
The EC2 module creates four EC2 instances that run a default website on port 80 and two docker NGINX containers on ports 8080 and 8081 respectively. Each one of the four subnets
recieve one of the EC2 instances. The security module creates a security group called sg-tf that allows SSH, HTTP and the two containers ports.

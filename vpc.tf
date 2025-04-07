resource "aws_vpc" "vpc1" {
 cidr_block = "192.168.0.0/16"
 instance_tenancy = "default"
 enable_dns_hostnames = true
 enable_dns_support = true
 tags = {
   Name = "terraform-vpc-docker"
   env = "Dev"
   Team = "DevOps"
 }
}

resource "aws_subnet" "pusub1" {
 vpc_id = aws_vpc.vpc1.id
 map_public_ip_on_launch = true
 cidr_block = "192.168.1.0/24"
 availability_zone = "us-east-1a"
 tags = {
   Name = "public-useast-1a"
 }
}

resource "aws_subnet" "pusub2" {
 vpc_id = aws_vpc.vpc1.id
 map_public_ip_on_launch = true
 cidr_block = "192.168.2.0/24"
 availability_zone = "us-east-1b"
 tags = {
   Name = "public-useast-1b"
 }
}

// Private subnets
resource "aws_subnet" "privsub1" {
 vpc_id = aws_vpc.vpc1.id
 availability_zone = "us-east-1a"
 cidr_block = "192.168.3.0/24"
 tags = {
   Name = "private-us-east-1a"
 }
}

resource "aws_subnet" "privsub2" {
 vpc_id = aws_vpc.vpc1.id
 availability_zone = "us-east-1b"
 cidr_block = "192.168.4.0/24"
 tags = {
   Name = "private-us-east-1b"
 }
}
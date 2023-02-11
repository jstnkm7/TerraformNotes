provider "aws" {
    region = "eu-west-3"
    access_key = "FDSLFJSDFHSJKFSHFJKSDF"
    secret_key = "DSFJKHFJKSHDFJKHDFJKHSDFJKHSJKDF"
}

resource "aws_vpc" "development-vpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "eu-west-3a"
}

data "aws_vpc" "existing_vpc" {
    default = true
}

resource "aws_subnet" "dev-subnet-2" {
    vpc_id = data.aws_vpc.existing_vpc
    cidr_block = '173.31.48.0/20"
    availability_zone = "eu-west-3a"
}


# how do we actually creat them using terraform
# we use a terrform command called apply

# in terminal, inside that terraform folder
# terraform apply

# + is for create
# aws_subnet.dev-subnet-1 will be created

# aws_vpc.development-vpc

# Plan 2: 0 changes, 0 resources, 0 to destory
# Enter a value: yes

# now we see an output of what terraform is creating


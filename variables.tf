variable "tags" {
  type = map
  default = {
    Name = "timing"
    Envorinment = "DEV"
    Terraform = "true"
  }
}

variable "vpc_cidr" {
    type = string
  default = "10.0.0.0/16"
}

variable "azs" {
    type = list
    default = ["us-east-1a" , "us-east-1b"]
}

variable "public_subnet_cidr" {
    type = list
    default =["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_name" {
    type = list
    default = ["timing-public-1a","timing-public-1b"]
}

variable "private_subnet_cidr" {
    type = list
    default =["10.1.0.0/24", "10.2.0.0/24"]
}

variable "private_subnet_name" {
    type = list
    default = ["timing-private-1a","timing-private-1b"]
}

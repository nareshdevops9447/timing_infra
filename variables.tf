variable "tags" {
  type = map
  default = {
    Name = "timing"
    Envorinment = "DEV"
    Terraform = "true"
  }
}

variable "vpc_cidr" {
    list = string
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

variable "public_subnet_names" {
    type = list
    default = ["timing-public-1a","timing-public-1b"]
}
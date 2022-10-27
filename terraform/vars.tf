
variable "ec2_ami" {
  type = map

  default = {
    eu-central-1 = "ami-06148e0e81e5187c8"
  }
}

variable "region" {
  default = "eu-central-1"
}

variable "instance_type" {    
  type = string
}


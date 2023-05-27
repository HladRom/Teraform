
variable "ec2_ami" {
  type = map

  default = {
    us-east-1 = "ami-053b0d53c279acc90"
  }
}

variable "region" {
  default = "us-east-1"
}

variable "instance_type" {    
  type = string
}


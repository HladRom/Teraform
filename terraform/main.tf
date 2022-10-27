resource "aws_security_group" "forssh" {
  name = "ssh-access"
  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 22
    protocol = "tcp"
    to_port = 22
  }

  egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    "Name" = "terraform-created"
  }
}

resource "aws_instance" "my-machine1" {
  count = 2    
  
  ami = lookup(var.ec2_ami,var.region) 
  instance_type = var.instance_type  
  tags = {
    Name = "my-machine-${count.index + 1}"
  }
  key_name = "ohud_itea"
  vpc_security_group_ids = [aws_security_group.forssh.id]
}

resource "local_file" "tf_ip" {
  content = "[ALL]\n${aws_instance.my-machine1[0].public_ip} ansible_ssh_user=ubuntu ansible_ssh_private_key_file=/Users/oleksahud/ITEA/8/ohud_itea.pem"
  filename = "../ansible/inventory"
}

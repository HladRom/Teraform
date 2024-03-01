# TASK :star:
## Install Terraform Create IAC automation that would do the following: 
- a) Creates security group with following rules: Inbound rules, open ports 22 and 8080, Outbound rules: Full control.
- b) Creates two EC2 (t2.micro, ubuntu 20.04 (x64), security group: the one created in point "a")
- c) Records the public IP address of the second EC2 in the inventory file Ansible Create a script or any other mechanism of your choice so that after the completion of the process, Terraform will work with Ansible playlists written in lesson 6.
```python
Code:

# Teraform provider.tf
provider "aws" {

    region = "us-east-1"
    access_key = "    "
    secret_key = "   "
}
```
![tera](https://boxboat.com/2020/02/04/writing-a-custom-terraform-provider/featured.png)

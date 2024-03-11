# TASK :star:
To accomplish this task, we use Terraform for automating the creation of infrastructure as code (IAC) and Ansible for configuration management and deployment.
## Install Terraform Create IAC automation that would do the following: 
- a) Creates security group with following rules: Inbound rules, open ports 22 and 8080, Outbound rules: Full control.
- b) Creates two EC2 (t2.micro, ubuntu 20.04 (x64), security group: the one created in point "a")
- c) Records the public IP address of the second EC2 in the inventory file Ansible Create a script or any other mechanism of your choice so that after the completion of the process, Terraform will work with Ansible playlists written in lesson 6.
```python
## Conclusion:
Utilizing Terraform for infrastructure creation and Ansible for configuration management is a powerful approach to automate deployment and management of infrastructure. This approach enables quick and repeatable infrastructure deployment, reducing the risk of errors and increasing development and management efficiency.

Code:

# Teraform provider.tf
provider "aws" {

    region = "us-east-1"
    access_key = "    "
    secret_key = "   "
}
```
![tera](https://boxboat.com/2020/02/04/writing-a-custom-terraform-provider/featured.png)

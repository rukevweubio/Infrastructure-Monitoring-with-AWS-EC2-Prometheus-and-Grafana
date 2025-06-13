## Terraform AWS EC2 Monitoring Stack
Project Definition
The goal of this project is to deploy a scalable monitoring solution on AWS using Terraform. The infrastructure consists of:
- Two EC2 instances running NGINX as a web server.
- Prometheus for metrics collection.
- Node Exporter to scrape system-level metrics from the EC2 instances.
- Grafana for visualizing the collected metrics in real-time
  
##Problem Addressed
This project addresses key challenges in cloud infrastructure management:
Lack of Visibility: Provides real-time insights into CPU, memory, disk, and network usage.
Manual Overhead: Automates infrastructure provisioning and software setup using Terraform.
Fragmented Monitoring: Centralizes metrics in Grafana for a unified, interactive view.

## What is Terraform
Terraform is an Infrastructure as Code (IaC) tool that enables the definition, provisioning, and management of cloud resources using declarative configuration files. It automates infrastructure setup, ensuring consistency, repeatability, and scalability while reducing manual errors.

Terraform Usage in This Project
Terraform was used to:
- Automate AWS EC2 Deployment: Provisioned two EC2 instances without manual AWS Console interaction.
- Configure Networking: Created a VPC and subnet for the EC2 instances.
- Bootstrap Software Installation: Utilized user_data scripts to automatically install and configure NGINX, Node Exporter, Prometheus, and Grafana.
- Ensure Consistency: Guaranteed identical configurations across both EC2 instances.
- Key Benefit: Enabled infrastructure to be treated as code—version-controlled, reusable, and scalable.

## Implementation Steps
Terraform Setup for AWS EC2 Instances
Objective: Provision two EC2 instances on AWS using Terraform.
Define AWS Provider (provider.tf):

```
provider "aws" {
  region = "us-east-1"
}
```

Create VPC and Subnet (network.tf):
```
resource "aws_vpc" "monitoring_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.monitoring_vpc.id
  cidr_block = "10.0.1.0/24"
}
```
Launch EC2 Instances (ec2.tf):

```
resource "aws_instance" "nginx_server" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu 20.04 LTS
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "Nginx-Server"
  }
}
```
## Install and Configure NGINX on EC2
Objective: Host NGINX web servers on both EC2 instances.
```
user_data = <<-EOF
  #!/bin/bash
  sudo apt update
  sudo apt install -y nginx
  sudo systemctl start nginx
  sudo systemctl enable nginx
EOF
```

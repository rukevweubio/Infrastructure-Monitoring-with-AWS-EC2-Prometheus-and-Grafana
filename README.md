## Terraform AWS EC2 Monitoring Stack
Project Definition
The goal of this project is to deploy a scalable monitoring solution on AWS using Terraform. The infrastructure consists of:
- Two EC2 instances running NGINX as a web server.
- Prometheus for metrics collection.
- Node Exporter to scrape system-level metrics from the EC2 instances.
- Grafana for visualizing the collected metrics in real-time
![data diagram](https://github.com/rukevweubio/Infrastructure-Monitoring-with-AWS-EC2-Prometheus-and-Grafana/blob/main/picture/terraform%20.jpg)
  
## Problem Addressed
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
![terraform state file](https://github.com/rukevweubio/Infrastructure-Monitoring-with-AWS-EC2-Prometheus-and-Grafana/blob/main/picture/Screenshot%20(1130).png)

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

![APACE SERVER](https://github.com/rukevweubio/Infrastructure-Monitoring-with-AWS-EC2-Prometheus-and-Grafana/blob/main/picture/Screenshot%20(1133).png)
## Deploy Prometheus and Node Exporter
Configure Prometheus to collect metrics from Node Exporter on EC2 instances.
- Install Node Exporter (via user_data script):
```
bash
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
tar xvf node_exporter-1.3.1.linux-amd64.tar.gz
cd node_exporter-1.3.1.linux-amd64
./node_exporter &
Install Prometheus (on one EC2 instance):
```
wget https://github.com/prometheus/prometheus/releases/download/v2.35.0/prometheus-2.35.0.linux-amd64.tar.gz
tar xvf prometheus-2.35.0.linux-amd64.tar.gz
cd prometheus-2.35.0.linux-amd64
```
scrape_configs:
``` - job_name: 'node_exporter'
    static_configs:
      - targets: ['<EC2_PRIVATE_IP_1>:9100', '<EC2_PRIVATE_IP_2>:9100']
```



![PROMETHEUS SERVER](https://github.com/rukevweubio/Infrastructure-Monitoring-with-AWS-EC2-Prometheus-and-Grafana/blob/main/picture/Screenshot%20(1136).png)



## Deploy Grafana for Visualization
Objective: Install Grafana and connect it to Prometheus for metrics visualization.
Install Grafana:
```
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update
sudo apt-get install -y grafana
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
```
## Access Grafana Dashboard:
```
URL: http://<GRAFANA_EC2_IP>:3000
Default credentials: admin/admin
Add Prometheus Data Source:
Navigate to Configuration > Data Sources > Add Prometheus.
Set Prometheus URL: http://<PROMETHEUS_EC2_IP>:9090.
Import Node Exporter Dashboard:
Use Grafana Dashboard ID: 1860 (Node Exporter Full).

```
![GRAFANA SERVER](https://github.com/rukevweubio/Infrastructure-Monitoring-with-AWS-EC2-Prometheus-and-Grafana/blob/main/picture/Screenshot%20(1137).png)

## Terraform AWS EC2 Monitoring Stack
Project Definition
The goal of this project is to deploy a scalable monitoring solution on AWS using Terraform. The infrastructure consists of:
- Two EC2 instances running NGINX as a web server.
- Prometheus for metrics collection.
- Node Exporter to scrape system-level metrics from the EC2 instances.
- Grafana for visualizing the collected metrics in real-time
  
## Problem Solved
Monitoring cloud infrastructure is crucial for maintaining performance, security, and cost efficiency. This project solves
Lack of Visibility: Real-time monitoring of CPU, memory, disk, and network usage.
Manual Monitoring Overhead: Automates deployment using Terraform, reducing manual setup.
Centralized Dashboards: Grafana provides a unified view of system metrics.
